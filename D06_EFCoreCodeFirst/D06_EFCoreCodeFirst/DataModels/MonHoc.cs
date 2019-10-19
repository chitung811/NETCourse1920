using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace D06_EFCoreCodeFirst.DataModels
{
    [Table("MonHoc")]
    public class MonHoc
    {
        [Key]
        [StringLength(12, MinimumLength = 8) ]
        public string MaMh { get; set; }
        [MaxLength(150)]
        [Required]
        public string TenMh { get; set; }
        public int SoTc { get; set; }

        [StringLength(12, MinimumLength = 8)]
        public string MonDk { get; set; }
        [ForeignKey("MonDk")] 
        public MonHoc MonDieuKien { get; set; }
    }
}
