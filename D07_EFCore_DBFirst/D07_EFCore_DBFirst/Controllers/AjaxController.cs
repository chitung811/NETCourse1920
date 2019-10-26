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
    }
}