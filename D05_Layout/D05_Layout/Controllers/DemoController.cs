using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace D05_Layout.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult UploadFile(IFormFile fFile)
        {
            if(fFile != null)
            {
                string fileName = $"{DateTime.Now.Ticks}{fFile.FileName}";
                string fullPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Data", fileName);

                using (var file = new FileStream(fullPath, FileMode.Create))
                {
                    fFile.CopyTo(file);
                }
            }

            return RedirectToAction("Index");
        }

        public IActionResult UploadFiles(List<IFormFile> fFile)
        {
            foreach(var myFile in fFile)
            {
                string fileName = $"{DateTime.Now.Ticks}{myFile.FileName}";
                string fullPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Data", fileName);

                using (var file = new FileStream(fullPath, FileMode.Create))
                {
                    myFile.CopyTo(file);
                }
            }
            return RedirectToAction("Index");
        }
    }
}