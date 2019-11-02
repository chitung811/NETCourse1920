using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using D07_EFCore_DBFirst.Models;
using D07_EFCore_DBFirst.Helpers;
using D07_EFCore_DBFirst.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace D07_EFCore_DBFirst.Controllers
{
    public class KhachHangController : Controller
    {
        private readonly MyeStoreContext _context;
        private readonly IMapper _mapper;
        public KhachHangController(MyeStoreContext ctx, IMapper mapper)
        {
            _context = ctx;
            _mapper = mapper;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(LoginViewModel model)
        {
            var kh = _context.KhachHang.SingleOrDefault(p => p.MaKh == model.MaKh && p.MatKhau == model.MatKhau);
            if(kh != null)
            {
                HttpContext.Session.Set("KhachHang", kh);
                return RedirectToAction("Index", "Home");
            }
            return View();
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Remove("KhachHang");
            return RedirectToAction("Index", "Home");
        }
    }
}