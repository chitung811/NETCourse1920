using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using D03_SyncAsync.Models;

namespace D03_SyncAsync.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Demo()
        {
            return View();
        }

        // /Home/Sync
        public IActionResult Sync()
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();

            Demo demo = new Demo();
            demo.Test01();
            demo.Test02();
            demo.Test03();

            sw.Stop();

            return Content($"Chạy hết {sw.ElapsedMilliseconds} ms");
        }

        // /Home/Async
        public async Task<IActionResult> Async()
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();

            Demo demo = new Demo();
            var x = demo.Test01Async();
            var y = demo.Test02Async();
            var z = demo.Test03Async();
            await x; await y; await z;

            sw.Stop();

            return Content($"Chạy hết {sw.ElapsedMilliseconds} ms");
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
