using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{
    public class Session
    {
        public string type { get; }
        public string date { get; }
        public string time { get; }

        public Session (string type, string date, string time)
        {
            this.type = type;
            this.date = date;
            this.time = time;
        }
    }
}
