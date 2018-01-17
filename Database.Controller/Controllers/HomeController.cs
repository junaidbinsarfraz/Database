using Database.Repository.DB;
using Database.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Database.Controller.Controllers
{
    public class HomeController : System.Web.Mvc.Controller
    {
        IAuthenticationService AuthenticationService;

        public HomeController(IAuthenticationService AuthenticationService)
        {
            this.AuthenticationService = AuthenticationService;
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
    }
}