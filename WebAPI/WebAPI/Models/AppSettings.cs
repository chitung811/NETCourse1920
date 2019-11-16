using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPI.Models
{
    public class AppSettings
    {
        public string PrivateKey { get; set; }
        public int ExpireTime { get; set; }
    }
}
