using Database.Repository.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Database.Repository.DAOs
{
    public class AuthenticationRepository : GenericRepository<MoviesEntities, User>, IAuthenticationRepository
    {
        public User Login(string UserName, string Password)
        {
            return this.Context.Users.Where(e => e.UserName == UserName && e.Password == Password).FirstOrDefault();
        }

        public User Signup(User User)
        {
            return this.Context.Users.Add(User);
        }
    }
}