using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D04_Validation.Models;
using Microsoft.AspNetCore.Mvc;

namespace D04_Validation.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Register(Employee emp)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("loi", "Server chưa hợp lệ");
            }
            return View();
        }
    }
}