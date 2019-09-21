using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace D03_SyncAsync.Models
{
    public class Demo
    {
        public int Test01()
        {
            Thread.Sleep(5000);
            return new Random().Next();
        }
        public async Task<int> Test01Async()
        {
            await Task.Delay(5000);
            return new Random().Next();
        }

        public double Test02()
        {
            Thread.Sleep(2000);
            return new Random().NextDouble();
        }

        public async Task<double> Test02Async()
        {
            await Task.Delay(2000);
            return new Random().NextDouble();
        }

        public void Test03()
        {
            Thread.Sleep(3000);
        }

        public async Task Test03Async()
        {
            await Task.Delay(3000);
        }
    }
}
