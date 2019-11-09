using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using D07_EFCore_DBFirst.Models;
using Microsoft.AspNetCore.Http;
using D07_EFCore_DBFirst.Helpers;

namespace D07_EFCore_DBFirst.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Session()
        {
            //set session
            HttpContext.Session.SetString("Lop", "1911COMP1064");
            HttpContext.Session.SetInt32("Nam", 3);

            Loai lo = new Loai
            {
                MaLoai = 1,
                TenLoai = "Laptop",
                MoTa = "Laptop New"
            };

            HttpContext.Session.Set<Loai>("Loai", lo);

            return View();
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
