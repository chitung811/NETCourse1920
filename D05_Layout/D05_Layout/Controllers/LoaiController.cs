using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D05_Layout.Models;
using D05_Layout.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace D05_Layout.Controllers
{
    public class LoaiController : Controller
    {
        private readonly IRepoLoai _repoLoai;
        public LoaiController(IRepoLoai repoLoai)
        {
            _repoLoai = repoLoai;
        }
        public IActionResult Index()
        {
            return View(_repoLoai.GetAll());
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(Loai lo)
        {
            _repoLoai.Add(lo);
            return RedirectToAction("Index");
        }
    }
}