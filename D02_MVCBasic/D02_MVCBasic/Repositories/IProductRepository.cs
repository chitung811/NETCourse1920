using D02_MVCBasic.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace D02_MVCBasic.Repositories
{
    public interface IProductRepository
    {
        IEnumerable<HangHoa> GetAll();
        HangHoa GetById(int id);

        void Add(HangHoa hh);
        void Update(HangHoa hh);
        void Delete(int id);
    }
}
