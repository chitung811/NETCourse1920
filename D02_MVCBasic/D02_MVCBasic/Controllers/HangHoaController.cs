using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using D02_MVCBasic.Models;
using D02_MVCBasic.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace D02_MVCBasic.Controllers
{
    public class HangHoaController : Controller
    {
        private readonly IProductRepository productRepository;
        public HangHoaController(IProductRepository repo)
        {
            productRepository = repo;
        }

        static List<HangHoa> HangHoas = new List<HangHoa>();
        public IActionResult Index()
        {
            return View(productRepository.GetAll());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(HangHoa hh)
        {
            productRepository.Add(hh);

            return RedirectToAction("Index");
        }

        public IActionResult Edit(int id)
        {
            var hh = HangHoas.SingleOrDefault(p => p.MaHh == id);

            if(hh != null)
            {
                return View(hh);
            }

            return RedirectToAction("Index");
        }

        [HttpPost]
        public IActionResult Edit(int id, HangHoa model)
        {
            var hh = HangHoas.SingleOrDefault(p => p.MaHh == id);
            if(hh != null)
            {
                hh.TenHh = model.TenHh;
                hh.DonGia = model.DonGia;               
            }
            return RedirectToAction("Index");
        }
    }
}