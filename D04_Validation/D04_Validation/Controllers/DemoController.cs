using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D04_Validation.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace D04_Validation.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult KiemTraMaBaoMat(string MaBaoMat)
        {
            bool valid = HttpContext.Session.GetString("MaBaoMat") == MaBaoMat;

            return Json(valid);
        }

        public IActionResult DangKy()
        {
            string maNgauNhien = new Random().Next(1000, 10000).ToString();

            HttpContext.Session.SetString("MaBaoMat", maNgauNhien);

            ViewBag.MaBaoMat = maNgauNhien;
            return View();
        }

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

        public IActionResult CheckUserNameUnique(string UserName)
        {
            List<string> data = new List<string>() { "admin", "customer", "guest"};


            return Json(!data.Contains(UserName));
        }
    }
}