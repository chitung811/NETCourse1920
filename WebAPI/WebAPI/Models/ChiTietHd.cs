﻿using System;
using System.Collections.Generic;

namespace D07_EFCore_DBFirst.Models
{
    public partial class ChiTietHd
    {
        public int MaCt { get; set; }
        public int MaHd { get; set; }
        public int MaHh { get; set; }
        public double DonGia { get; set; }
        public int SoLuong { get; set; }
        public double GiamGia { get; set; }

        public virtual HoaDon MaHdNavigation { get; set; }
        public virtual HangHoa MaHhNavigation { get; set; }
    }
}
