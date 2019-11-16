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
using System.IdentityModel.Tokens.Jwt;
using System.Text;
using WebAPI.Models;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;

namespace D07_EFCore_DBFirst.Controllers
{
    [Authorize]
    public class KhachHangController : Controller
    {
        private readonly MyeStoreContext _context;
        private readonly IMapper _mapper;
        private readonly AppSettings _appSetting;
        public KhachHangController(MyeStoreContext ctx, IMapper mapper, IOptions<AppSettings> appSetting)
        {
            _context = ctx;
            _mapper = mapper;
            _appSetting = appSetting.Value;
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
            if (kh != null)
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

                if (Url.IsLocalUrl(ReturnUrl))
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

        [Authorize(Roles = "Admin")]
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

        /*Verify user and provide token (for JWT)*/
        [HttpPost]
        public IActionResult VerifyUser(LoginViewModel model)
        {
            var kh = _context.KhachHang.SingleOrDefault(p => p.MaKh == model.MaKh && p.MatKhau == model.MatKhau);
            if (kh == null)
            {
                return this.StatusCode(422, new { success = false, message = "Verify user is not successful." });
            }

            //Cấp token
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.Unicode.GetBytes(_appSetting.PrivateKey);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[]
                {
                    new Claim(ClaimTypes.Name, kh.HoTen.ToString()),
                    new Claim(ClaimTypes.Role, "KhachHang")
                }),
                Expires = DateTime.UtcNow.AddMinutes(_appSetting.ExpireTime),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);

            return this.Ok(new {
                success = true,
                token = tokenHandler.WriteToken(token)
            });
        }
    }
}