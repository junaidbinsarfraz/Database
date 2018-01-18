using Database.Repository.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database.Service.Services
{
    public interface IUserService
    {
        User GetUserByEmail(String Email);

        User Save(User User);
    }
}
