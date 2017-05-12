using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiverLibrary;

namespace Divingjournal2.Models
{
    public class Journal
    {
        //PK
        public int Id { get; set; }

        public string date { get; set; }
        public string location { get; set; }
        public string divingSpot { get; set; }


        //Links - to many
        public virtual ICollection<Diver_Standard> Diver_Standards { get; set; }
        public virtual ICollection<Diver_Compression> Diver_Compressions { get; set; }
        public virtual ICollection<Diver_Pressurechamber> Diver_Pressurechambers { get; set; }



    }
}