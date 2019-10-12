using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using ASPCore.ADONETLab.Models;
using D05_Layout.Models;

namespace D05_Layout.Repositories
{
    public class SqlServerLoaiRepo : IRepoLoai
    {
        public void Add(Loai lo)
        {
            string sql = string.Empty;
            if (lo.MaLoaiCha.HasValue)
            {
                sql = $"INSERT INTO Loai(TenLoai, MaLoaiCha) VALUES('{lo.TenLoai}', '{lo.MaLoaiCha}')";
            }
            else
            {
                sql = $"INSERT INTO Loai(TenLoai) VALUES('{lo.TenLoai}')";
            }
            DataProvider.TruyVan_XuLy(sql);
        }

        public List<Loai> GetAll()
        {
            DataTable result = DataProvider.TruyVan_LayDuLieu("SELECT * FROM Loai");
            var ketqua = new List<Loai>();
            foreach(DataRow dr in result.Rows)
            {
                var loai = new Loai
                {
                    MaLoai = Convert.ToInt32(dr["MaLoai"]),
                    TenLoai = dr["TenLoai"].ToString()
                };
                try
                {
                    loai.MaLoaiCha = Convert.ToInt32(dr["MaLoaiCha"]);
                }
                catch { }
                ketqua.Add(loai);
            }

            return ketqua;
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
