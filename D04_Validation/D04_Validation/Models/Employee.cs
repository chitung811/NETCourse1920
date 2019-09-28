using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace D04_Validation.Models
{
    public class Employee
    {
        [Key]
        public string Id { get; set; }
        public string UserName { get; set; }
        [DataType(DataType.Date)]
        [CheckAgeBirthDate]
        public DateTime BirthDate { get; set; }
    }
}
