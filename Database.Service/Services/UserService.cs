using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Database.Repository.DB;
using System.Web.Mvc;
using Database.Repository.DAOs;
using Database.Utility.Utilities;

namespace Database.Service.Services
{
    public class UserService : IUserService
    {
        private ModelStateDictionary ModelState;
        private UserRepository UserRepository;

        public UserService(UserRepository UserRepository, ModelStateDictionary ModelState)
        {
            this.ModelState = ModelState;
            this.UserRepository = UserRepository;
        }

        public User GetUserByEmail(string Email)
        {
            if(Util.IsNullOrEmpty(Email))
            {
                ModelState.AddModelError("Email", "Email cannot be empty");
                return null;
            }

            try
            {
                return UserRepository.FindBy(u => u.Email == Email).FirstOrDefault();
            }
            catch (Exception e)
            {
                ModelState.AddModelError("General", "Unable to find user by email");
                return null;
            }
        }

        public User Save(User User)
        {
            try
            {
                UserRepository.Edit(User);
                UserRepository.Save();

                return UserRepository.FindBy(u => u.UserID == User.UserID).FirstOrDefault();
            }
            catch (Exception e)
            {
                ModelState.AddModelError("General", "Unable to find user by email");
                return null;
            }
        }
    }
}