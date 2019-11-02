using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace D07_EFCore_DBFirst.ViewModels
{
    public class LoginViewModel
    {
        [Required]
        [MaxLength(20)]
        public string MaKh { get; set; }
        [DataType(DataType.Password)]
        [Required]
        [MaxLength(50)]
        public string MatKhau { get; set; }
    }
}
