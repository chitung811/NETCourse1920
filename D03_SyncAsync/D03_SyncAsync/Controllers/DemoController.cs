using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D03_SyncAsync.Models;
using Microsoft.AspNetCore.Mvc;

namespace D03_SyncAsync.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(Employee emp)
        {
            if(ModelState.IsValid)
            {
                ModelState.AddModelError("", "Hợp lệ");
            }
            else
            {
                ModelState.AddModelError("loi", "Còn lỗi");
            }
            return View();
        }
    }
}