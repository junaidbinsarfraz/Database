using Database.Repository.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database.Service.Services
{
    public interface IAuthenticationService
    {
        User Login(String UserName, String Password);

        User Signup(User User);
    }
}
