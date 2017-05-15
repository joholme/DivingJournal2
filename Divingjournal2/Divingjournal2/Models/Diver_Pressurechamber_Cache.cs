using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
    public class Diver_Pressurechamber_Cache
    {
        //PK
        public int Id { get; set; }

        //FK
        public int Journal_CacheID { get; set; }

        public string name { get; set; }
        public OF_Type of_type { get; set; }



        //Links - to one
        public virtual Journal_Cache Journal_Cache { get; set; }

    }
}