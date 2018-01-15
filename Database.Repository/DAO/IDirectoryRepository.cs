using Database.Repository.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database.Repository.DAO
{
    public interface IDirectoryRepository : IGenericRepository<tblDirector>
    {
        tblDirector GetSingle(long Id);
    }
}
