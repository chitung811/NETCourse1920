using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace D06_EFCoreCodeFirst.DataModels
{
    public class MyDbContext : DbContext
    {
        public DbSet<Lop> Lops { get; set; }
        public DbSet<SinhVien> SinhViens { get; set; }
        public DbSet<MonHoc> MonHocs { get; set; }

        public MyDbContext(DbContextOptions option):base(option)
        {
        }
    }
}
