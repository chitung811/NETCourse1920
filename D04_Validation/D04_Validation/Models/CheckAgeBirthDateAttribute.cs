using System;
using System.ComponentModel.DataAnnotations;

namespace D04_Validation.Models
{
    public class CheckAgeBirthDateAttribute : ValidationAttribute
    {
        public CheckAgeBirthDateAttribute(string message = "Chưa đủ 10 tuổi") : base(message)
        {
        }
        public override bool IsValid(object value)
        {            
            DateTime dateTime = (DateTime)value;
            return dateTime.AddYears(10) < DateTime.Now;
        }

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            DateTime dateTime = (DateTime)value;
            if(dateTime.AddYears(10) < DateTime.Now)
            {
                return ValidationResult.Success;
            }

            return new ValidationResult("Chưa đủ 10 tuổi nhé.");
        }
    }
}