using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using D07_EFCore_DBFirst.Models;
using Microsoft.AspNetCore.Mvc;

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
    }
}