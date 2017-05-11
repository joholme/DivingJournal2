using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
    public class Overflatekompresjon
    {
        //PK
        public int Id { get; set; }
        //FK
        public int DykkerId { get; set; }
        public int DykkerjournalId { get; set; }

        public int Tid_9_til_0_m{ get; set;}

        //Links - to one
        public virtual Dykker Dykker { get; set; }
        public virtual Dykkerjournal Dykkerjournal { get; set; }
    }
}