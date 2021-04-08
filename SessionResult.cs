using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{
    public class SessionResult
    {
        public int placement { get; }
        public int number { get; }
        public string lastN { get; }
        public string team_name { get; }
        public string time { get; }
        public int points { get; }

        public SessionResult (int placement, int number, string lastN, string team_name, string time, int points)
        {
            this.placement = placement;
            this.number = number;
            this.lastN = lastN;
            this.team_name = team_name;
            this.time = time;
            this.points = points;
        }
    }
}
