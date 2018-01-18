using Database.Repository.DAOs;
using Database.Repository.DB;
using Database.Utility.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Database.Service.Services
{
    public class AuthenticationService : IAuthenticationService
    {
        private ModelStateDictionary ModelState;
        private AuthenticationRepository AuthenticationRepository;

        public AuthenticationService(AuthenticationRepository AuthenticationRepository, ModelStateDictionary ModelState)
        {
            this.ModelState = ModelState;
            this.AuthenticationRepository = AuthenticationRepository;
        }

        private Boolean ValidateUsernameAndPassword(String UserName, String Password)
        {
            Boolean IsValid = true;

            if (Util.IsNullOrEmpty(UserName))
            {
                this.ModelState.AddModelError("UserName", "Username cannot be empty");
                IsValid = false;
            }

            if (Util.IsNullOrEmpty(Password))
            {
                this.ModelState.AddModelError("Password", "Password cannot be empty");
                IsValid = false;
            }

            return IsValid;
        }

        private Boolean ValidateUser(User User)
        {
            Boolean IsValid = true;

            if (Util.IsNullOrEmpty(User.UserName))
            {
                this.ModelState.AddModelError("UserName", "Username cannot be empty");
                IsValid = false;
            }

            if (Util.IsNullOrEmpty(User.Password))
            {
                this.ModelState.AddModelError("Password", "Password cannot be empty");
                IsValid = false;
            }

            if (Util.IsNullOrEmpty(User.Email))
            {
                this.ModelState.AddModelError("Email", "Email cannot be empty");
                IsValid = false;
            }

            if (Util.IsNull(User.tblPerson.DOB))
            {
                this.ModelState.AddModelError("DOB", "Date of birth cannot be empty");
                IsValid = false;
            }

            if (Util.IsNullOrEmpty(User.tblPerson.FirstName))
            {
                this.ModelState.AddModelError("FirstName", "FirstName cannot be empty");
                IsValid = false;
            }

            if (Util.IsNullOrEmpty(User.tblPerson.LastName))
            {
                this.ModelState.AddModelError("LastName", "LastName cannot be empty");
                IsValid = false;
            }

            return IsValid;
        }

        public User Login(string UserName, string Password)
        {
            if (this.ValidateUsernameAndPassword(UserName, Password))
            {
                try
                {
                    return AuthenticationRepository.Login(UserName, Password);
                }
                catch (Exception e)
                {
                    this.ModelState.AddModelError("General", "Unable to login");

                    return null;
                }
            }

            return null;
        }

        public User Signup(User User)
        {
            if (this.ValidateUser(User))
            {
                try
                {
                    return AuthenticationRepository.Signup(User);
                }
                catch (Exception e)
                {
                    this.ModelState.AddModelError("General", "Unable to signup");

                    return null;
                }
            }

            return null;
        }
    }
}