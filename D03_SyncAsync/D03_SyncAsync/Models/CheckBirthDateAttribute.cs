using System;
using System.ComponentModel.DataAnnotations;

namespace D03_SyncAsync.Models
{
    public class CheckBirthDateAttribute : ValidationAttribute
    {
        public override bool IsValid(object value)
        {
            DateTime objValue = (DateTime) value;
            return objValue < DateTime.Now;
        }

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            DateTime objValue = (DateTime)value;

            if(objValue < DateTime.Now)
            {
                return ValidationResult.Success;
            }
            return new ValidationResult("Không hợp lệ");
        }
    }
}