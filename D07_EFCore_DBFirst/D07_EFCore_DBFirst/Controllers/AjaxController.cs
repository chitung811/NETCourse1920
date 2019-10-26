using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using D07_EFCore_DBFirst.Models;
using D07_EFCore_DBFirst.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace D07_EFCore_DBFirst.Controllers
{
    public class AjaxController : Controller
    {
        private readonly MyeStoreContext _context;
        private readonly IMapper _mapper;
        public AjaxController(MyeStoreContext ctx, IMapper mapper)
        {
            _context = ctx;
            _mapper = mapper;
        }
        public IActionResult Index()
        {
            return View();
        }

        public string GetServerTime()
        {
            return DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
        }

        #region Search
        public IActionResult Search()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Search(string keyword)
        {
            var data = _context.HangHoa
                .Include(p=> p.MaLoaiNavigation)
                .Include(p => p.MaNccNavigation)
                .Where(p => p.TenHh.Contains(keyword));

            var result = _mapper.Map<List<HangHoaViewModel>>(data.ToList());
            return PartialView("_Search", result);
        }
        #endregion

        #region Ajax Json
        public IActionResult JsonSearch()
        {
            return View();
        }
        [HttpPost]
        public IActionResult JsonSearch(string tukhoa, double? giaTu, double? giaDen)
        {
            var data = _context.HangHoa
                .Where(p => p.TenHh.Contains(tukhoa) && p.DonGia >= giaTu && p.DonGia <= giaDen)
                .Select(p => new {
                    p.MaHh, p.TenHh, p.DonGia,
                    Hinh = GetBase64("HangHoa", p.Hinh)
                });

            return Json(data);
        }

        public string GetBase64(string folder, string name)
        {
            string fullPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Hinh", folder, name);

            if(!System.IO.File.Exists(fullPath))
            {
                fullPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Hinh", "noimage.jpg");
            }

            byte[] byteData = System.IO.File.ReadAllBytes(fullPath);

            return Convert.ToBase64String(byteData);
        }
        #endregion
    }
}