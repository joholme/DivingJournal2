using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiverLibrary;

namespace Divingjournal2.Models
{
    //ørjan

    public class Diver_Pressurechamber
    
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