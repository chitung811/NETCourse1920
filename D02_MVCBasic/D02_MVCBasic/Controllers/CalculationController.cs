using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace D02_MVCBasic.Controllers
{
    public class CalculationController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Calculate(double A, double B, string PT)
        {
            double kq = 0;
            switch(PT)
            {
                case "+": kq = A + B; break;
                case "-": kq = A - B; break;
                case "*": kq = A * B; break;
                case "/": kq = A / B; break;
            }

            ViewBag.A = A;
            ViewBag.B = B;
            ViewBag.PT = PT;
            ViewBag.KQ = kq;

            return View("Index");
        }
    }
}