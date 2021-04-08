using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{
    public class DriverOdds
    {
        public string driverName { get; }
        public double odds { get; }

        public DriverOdds(string driverNameE, double oddsE)
        {
            driverName = driverNameE;
            odds = oddsE;
        }
    }
}
