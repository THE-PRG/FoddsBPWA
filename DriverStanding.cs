using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{
    public class DriverStanding
    {
        public int placement { get; }
        public int points { get; }
        public string driverName { get; }

        public DriverStanding (int placement, int points, string driverName)
        {
            this.placement = placement;
            this.points = points;
            this.driverName = driverName;
        }
    }
}
