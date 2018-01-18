using Database.Repository.DB;
using Database.Service.Services;
using Database.Utility.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace Database.Controller.Controllers
{
    public class HomeController : System.Web.Mvc.Controller
    {
        IAuthenticationService AuthenticationService;
        IUserService UserService;

        public HomeController(IAuthenticationService AuthenticationService, IUserService UserService)
        {
            this.AuthenticationService = AuthenticationService;
            this.UserService = UserService;
        }

        public ActionResult Login()
        {
            return View(new User());
        }
        
        [HttpPost]
        public ActionResult Login(User User)
        {
            User NewUser = AuthenticationService.Login(User.UserName, User.Password);

            return View();
        }

        public ActionResult Register()
        {
            return View(new User());
        }

        [HttpPost]
        public ActionResult Register(User User)
        {
            User NewUser = AuthenticationService.Signup(User);

            if(ModelState.IsValid)
            {
                // Goto Index page
            }

            return View();
        }

        [HttpGet]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        // Forgot password
        [HttpPost]
        public ActionResult ForgotPassword(User User)
        {
            if (ModelState.IsValid)
            {
                // Check if user already exists

                // Check credentials
                string email = User.Email;

                User user = UserService.GetUserByEmail(User.Email);

                if (user != null)
                {
                    var token = Guid.NewGuid().ToString();

                    string sRandomOTP = StringUtil.GenerateRandomString(8);

                    var resetLink = "<a href='" + Url.Action("ResetPassword", "Home", new { email = email, token = token }, "http") + "'>Reset Password</a>";

                    // Send email
                    string subject = "Password Reset";
                    string body = "<b>Please find the Password Reset Token</b><br/>" + resetLink + "<br/><br/>OTP:<br/>" + sRandomOTP; //edit it
                    try
                    {
                        EmailUtil.SendEMail(email, subject, body);
                    }
                    catch (Exception ex)
                    {
                        ModelState.AddModelError("Fail", "Unable to send email");
                        return View();
                    }

                    // Save otp token in database
                    User.Token = token;
                    User.OTP = sRandomOTP;

                    User = UserService.Save(User);

                    if(Util.IsNull(User))
                    {
                        ModelState.AddModelError("General", "Unable to save OTP and Token in database");
                    }

                    ModelState.AddModelError("Success", "Email Sent");
                }
                else
                {
                    ModelState.AddModelError("General", "Email does not exists");
                }
            }

            return View();
        }

        [HttpGet]
        public ActionResult ResetPassword(string email, string token)
        {
            // Check token validity

            User User = UserService.GetUserByEmail(email);

            if (User != null && User.Token == token)
            {
                HttpContext.Session["email"] = email;
            }
            else
            {
                // Invalid token
                return RedirectToAction("InvalidToken", "Home");
            }

            return View();
        }

        // Reset password
        [HttpPost]
        public ActionResult ResetPassword(User User)
        {
            if (ModelState.IsValid)
            {
                // Password strength
                string regix = "^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$";

                if (!Regex.IsMatch(User.Password, regix))
                {
                    ModelState.AddModelError("Password", "Password should contain 2 uppercases, 1 special case, 2 digits and 3 lowercases.");
                    return View();
                }

                // Check if user already exists
                // Check credentials

                string email = (string)HttpContext.Session["email"];

                User SavedUser = UserService.GetUserByEmail(email);

                if (SavedUser != null)
                {
                    if (User.OTP != SavedUser.OTP)
                    {
                        ModelState.AddModelError("OTP", "OTP not matched");
                        return View();
                    }

                    //if ((DateTime.Now - user.OTPExpiration.Value).TotalSeconds > this.verificationCodedExpirationSeconds)
                    //{
                    //    ModelState.AddModelError("OTP", "OTP is expired");
                    //    return View();
                    //}

                    // Save token in database
                    SavedUser.Token = null;
                    SavedUser.OTP = null;

                    SavedUser.PasswordSalt = StringUtil.GenerateRandomString(10);
                    SavedUser.Password = Crypto.SHA256(User.Password + SavedUser.PasswordSalt);

                    User = UserService.Save(User);

                    HttpContext.Session["email"] = null;

                    return RedirectToAction("Login", "Home");
                }
                else
                {
                    ModelState.AddModelError("General", "Email does not exists");
                }
            }

            return View();
        }
    }
}