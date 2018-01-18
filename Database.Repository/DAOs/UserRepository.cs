using Database.Repository.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Database.Repository.DAOs
{
    public class UserRepository : GenericRepository<MoviesEntities, User>, IUserRepository
    {

    }
}