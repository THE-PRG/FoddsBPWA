using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{ 
    public class Team
    {
        public int id { get; }
        public string name { get; }
        public string nationality { get; }
        public string engine_sup { get; }
        public string director_name { get; }
        public string img_link { get; }
        public int wins { get; }
        public int points { get; }
        public int DNFs { get; }
        public int rank { get; }

        public Team (int idE, string nameE, string nationalityE, string engine_supE, string director_nameE, string img_linkE)
        {
            id = idE;
            name = nameE;
            nationality = nationalityE;
            engine_sup = engine_supE;
            director_name = director_nameE;
            img_link = img_linkE;
        }
    }
}