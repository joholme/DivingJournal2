using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiverLibrary;

namespace Divingjournal2.Models
{

    public enum OF_Type { OF_Heavy, OF_Light, scuba };
    public enum Direct { direct, d_Stopp, OD_O2 }
    public enum AirType { air, nitrox }
    public enum Transport { divingBasket, divingBell }

    public class Diver_Standard
    {
        //PK
        public int Id { get; set; }

        //FK
        public int JournalID { get; set; }

        public string name { get; set;}
        public OF_Type of_type { get; set; }

        

        //Links - to one
        public virtual Journal Journal { get; set; }


    }
}