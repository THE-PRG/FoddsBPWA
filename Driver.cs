using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{ 
    public class Driver
    {
        public int id { get; }
        public string lastN { get; }
        public string firstN { get; }
        public int age { get; }
        public string nationality { get; }
        public string img_link { get; }
        public int wins { get; }
        public int points { get; }
        public int DNFs { get; }
        public int rank { get; }

        public Driver (int idE, string lastNE, string firstNE, int ageE, string nationalityE, string img_linkE)
        {
            id = idE;
            lastN = lastNE;
            firstN = firstNE;
            age = ageE;
            nationality = nationalityE;
            img_link = img_linkE;
        }
    }
}