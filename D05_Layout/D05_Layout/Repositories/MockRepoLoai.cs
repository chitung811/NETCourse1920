using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D05_Layout.Models;

namespace D05_Layout.Repositories
{
    public class MockRepoLoai : IRepoLoai
    {
        List<Loai> myList = new List<Loai>()
        {
            new Loai{MaLoai =1, TenLoai = "Điện thoại"},
            new Loai{MaLoai =2, TenLoai = "Dòng cơ bản", MaLoaiCha = 1},
            new Loai{MaLoai =3, TenLoai = "Dòng cao cấp", MaLoaiCha = 1},
        };

        public List<Loai> GetAll()
        {
            return myList;
        }
        public void Add(Loai lo)
        {
            throw new NotImplementedException();
        }



        public void Remove(Loai lo)
        {
            throw new NotImplementedException();
        }

        public void Update(Loai lo)
        {
            throw new NotImplementedException();
        }
    }
}
