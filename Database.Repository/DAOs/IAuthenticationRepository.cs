using Database.Repository.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database.Repository.DAOs
{
    public interface IAuthenticationRepository : IGenericRepository<User>
    {
        User Login(String UserName, String Password);

        User Signup(User User);
    }
}
