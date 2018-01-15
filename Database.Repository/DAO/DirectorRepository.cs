using Database.Repository.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Database.Repository.DAO
{
    public class DirectorRepository : GenericRepository<MoviesEntities, tblDirector>, IDirectoryRepository
    {
        public tblDirector GetSingle(long Id)
        {
            var query = GetAll().FirstOrDefault(x => x.ID_Director == Id);
            return query;
        }
    }
}