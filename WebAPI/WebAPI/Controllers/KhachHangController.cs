using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using D07_EFCore_DBFirst.Models;
using D07_EFCore_DBFirst.Helpers;
using D07_EFCore_DBFirst.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;
using Microsoft.AspNetCore.Authentication;

namespace D07_EFCore_DBFirst.Controllers
{
    [Authorize]
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
        [AllowAnonymous]
        public IActionResult Login(string ReturnUrl = null)
        {
            ViewBag.ReturnUrl = ReturnUrl;
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> Login(LoginViewModel model, string ReturnUrl = null)
        {
            var kh = _context.KhachHang.SingleOrDefault(p => p.MaKh == model.MaKh && p.MatKhau == model.MatKhau);
            if(kh != null)
            {
                HttpContext.Session.Set("KhachHang", kh);

                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, kh.HoTen),
                    new Claim(ClaimTypes.Role, "KhachHang")
                };

                ClaimsIdentity userIdentity = new ClaimsIdentity(claims, "login");
                ClaimsPrincipal principal = new ClaimsPrincipal(userIdentity);
                await HttpContext.SignInAsync(principal);

                if(Url.IsLocalUrl(ReturnUrl))
                {
                    return Redirect(ReturnUrl);
                }
                return RedirectToAction("Index", "Home");
            }
            return View();
        }

        public IActionResult Profile()
        {
            return Content("Profile");
        }

        [Authorize(Roles ="Admin")]
        public IActionResult PurchaseOrder()
        {
            return Content("PurchaseOrder");
        }

        public async Task<IActionResult> Logout()
        {
            HttpContext.Session.Remove("KhachHang");
            await HttpContext.SignOutAsync();

            return RedirectToAction("Index", "Home");
        }
    }
}