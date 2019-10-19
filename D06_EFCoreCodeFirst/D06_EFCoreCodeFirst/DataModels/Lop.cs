using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace D06_EFCoreCodeFirst.DataModels
{
    [Table("Lop")]
    public class Lop
    {
        [Key]
        public int MaLop { get; set; }
        [MaxLength(50)]
        public string TenLop { get; set; }
        public string CVHT { get; set; }
        public IEnumerable<SinhVien> SinhViens { get; set; }
    }
    
    [Table("SinhVien")]
    public class SinhVien
    {
        [Key]
        public string MaSV { get; set; }
        [Required]
        [MaxLength(150)]
        public string HoTen { get; set; }
        public double? DiemTichLuy { get; set; }
        public int? MaLop { get; set; }
        [ForeignKey("MaLop")]
        public Lop Lop { get; set; }
    }
}
