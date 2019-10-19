using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D07_EFCore_DBFirst.Models;
using Microsoft.AspNetCore.Mvc;

namespace D07_EFCore_DBFirst.Controllers
{
    public class HangHoaController : Controller
    {
        private readonly MyeStoreContext _context;
        public HangHoaController(MyeStoreContext ctx)
        {
            _context = ctx;
        }
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(string TuKhoa, double? GiaTu, double? GiaDen)
        {
            var dsHangHoa = _context.HangHoa.AsQueryable();

            if(!string.IsNullOrEmpty(TuKhoa))
            {
                dsHangHoa = dsHangHoa.Where(p => p.TenHh.Contains(TuKhoa)).AsQueryable();
            }

            if(GiaTu.HasValue)
            {
                dsHangHoa = dsHangHoa.Where(p => p.DonGia >= GiaTu.Value).AsQueryable();
            }

            if (GiaDen.HasValue)
            {
                dsHangHoa = dsHangHoa.Where(p => p.DonGia <= GiaDen.Value).AsQueryable();
            }
            return View();
        }
    }
}