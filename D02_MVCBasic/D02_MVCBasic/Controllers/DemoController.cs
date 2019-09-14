using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace D02_MVCBasic.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [Route("{loai}/{hanghoa}")]
        public string SeoUrl(string loai, string hanghoa)
        {
            return $"{loai} --> {hanghoa}";
        }
    }
}