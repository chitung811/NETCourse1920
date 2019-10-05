using D05_Layout.Repositories;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace D05_Layout.ViewComponents
{
    public class MenuNgang : ViewComponent
    {
        private readonly IRepoLoai _repoLoai;
        public MenuNgang(IRepoLoai repoLoai)
        {
            _repoLoai = repoLoai;
        }

        public IViewComponentResult Invoke()
        {
            return View("Default", _repoLoai.GetAll());
        }
    }
}
