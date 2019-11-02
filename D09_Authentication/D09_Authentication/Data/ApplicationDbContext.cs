using System;
using System.Collections.Generic;
using System.Text;
using D09_Authentication.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace D09_Authentication.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public DbSet<Loai> Loais { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
    }
}
