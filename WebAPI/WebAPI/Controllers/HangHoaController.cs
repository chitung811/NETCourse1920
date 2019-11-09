using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using D07_EFCore_DBFirst.Models;
using D07_EFCore_DBFirst.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace D07_EFCore_DBFirst.Controllers
{
    public class HangHoaController : Controller
    {
        private readonly MyeStoreContext _context;
        private readonly IMapper _mapper;
        public HangHoaController(MyeStoreContext ctx, IMapper mapper)
        {
            _context = ctx;
            _mapper = mapper;
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

            var result = _mapper.Map<List<HangHoaViewModel>>(
                dsHangHoa.Include(p=>p.MaLoaiNavigation)
                .Include(p=>p.MaNccNavigation).ToList());

            ViewBag.Data = result;

            return View();
        }
    }
}