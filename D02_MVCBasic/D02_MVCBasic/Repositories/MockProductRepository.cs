using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D02_MVCBasic.Models;

namespace D02_MVCBasic.Repositories
{
    public class MockProductRepository : IProductRepository
    {
        static List<HangHoa> HangHoas = new List<HangHoa>();

        public void Add(HangHoa hh)
        {
            HangHoas.Add(hh);
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<HangHoa> GetAll()
        {
            return HangHoas;
        }

        public HangHoa GetById(int id)
        {
            return HangHoas.SingleOrDefault(p => p.MaHh == id);
        }

        public void Update(HangHoa hh)
        {
            throw new NotImplementedException();
        }
    }
}
