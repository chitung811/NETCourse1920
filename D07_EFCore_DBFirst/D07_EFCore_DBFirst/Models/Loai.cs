﻿using System;
using System.Collections.Generic;

namespace D07_EFCore_DBFirst.Models
{
    public partial class Loai
    {
        public Loai()
        {
            HangHoa = new HashSet<HangHoa>();
        }

        public int MaLoai { get; set; }
        public string TenLoai { get; set; }
        public string MoTa { get; set; }
        public string Hinh { get; set; }

        public virtual ICollection<HangHoa> HangHoa { get; set; }
    }
}
