using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoddsBPWA
{ 
    public class Event
    {
        public int circuit_id { get; }
        public string circuit_name { get; }
        public string location { get; }
        public double length { get; }
        public string fastest_lap { get; }
        public string img_link { get; }
        public int raceW_id { get; }
        public string raceW_name { get; }
        public int nb_lap { get; }
        public int season_id { get; }
        public int event_id { get; }
        public string type { get; }
        public string date { get; }

        public Event(int circuit_idE, string circuit_nameE, string locationE, double lengthE, string fastest_lapE, string img_linkE,
            int raceW_idE, string raceW_nameE, int nb_lapE, int season_idE, int event_idE, string typeE, string dateE)
        {
            circuit_id = circuit_idE;
            circuit_name = circuit_nameE;
            location = locationE;
            length = lengthE;
            fastest_lap = fastest_lapE;
            img_link = img_linkE;
            raceW_id = raceW_idE;
            raceW_name = raceW_nameE;
            nb_lap = nb_lapE;
            season_id = season_idE;
            event_id = event_idE;
            type = typeE;
            date = dateE;
        }
    }
}