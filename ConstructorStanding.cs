using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{
    public class ConstructorStanding
    {
        public int placement { get; }
        public int points { get; }
        public string teamName { get; }

        public ConstructorStanding (int placement, int points, string teamName)
        {
            this.placement = placement;
            this.points = points;
            this.teamName = teamName;
        }
    }
}
