using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace D07_EFCore_DBFirst.ViewModels
{
    public class HangHoaViewModel
    {
        public int MaHh { get; set; }
        public string TenHh { get; set; }
        public double GiaBan { get; set; }
        public string Hinh { get; set; }
        public string Loai { get; set; }
        public string NhaCungCap { get; set; }
    }
}
