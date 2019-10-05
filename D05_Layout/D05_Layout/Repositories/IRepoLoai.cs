using D05_Layout.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace D05_Layout.Repositories
{
    public interface IRepoLoai
    {
        List<Loai> GetAll();
        void Add(Loai lo);
        void Update(Loai lo);
        void Remove(Loai lo);
    }
}
