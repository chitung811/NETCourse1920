using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace D03_SyncAsync.Models
{
    public class Employee
    {
        [Key]
        public string Id { get; set; }
        [Display(Name ="Mã nhân viên")]
        public string EmployeeNo { get; set; }

        [Display(Name = "Họ tên")]
        [Required(ErrorMessage ="Phải nhập họ tên")]
        [StringLength(50, MinimumLength = 6)]
        public string FullName { get; set; }

        [EmailAddress]
        public string Email { get; set; }
        public string Website { get; set; }

        [Display(Name = "Ngày sinh")]
        [DataType(DataType.Date)]
        [CheckBirthDate]
        public DateTime? BirthDate { get; set; }

        [Display(Name = "Mật khẩu")]
        [DataType(DataType.Password)]
        [RegularExpression("[a-zA-Z0-9]{5,20}")]
        public string Password { get; set; }

        [Display(Name = "Giới tính")]
        public string Gender { get; set; }
        public double? Salary { get; set; }
        public string Phone { get; set; }
        public string CreditCard { get; set; }
        public string Description { get; set; }
    }
}
