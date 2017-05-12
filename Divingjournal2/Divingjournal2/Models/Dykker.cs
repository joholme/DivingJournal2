using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
    public class Dykker
    {
        //PK
        public int Id { get; set; }
        public string Navn { get; set; }

        //Links - to many
        public virtual ICollection<Dykkerjournal> Dykkerjornaler_1 { get; set; }
        public virtual ICollection<Dykkerjournal> Dykkerjornaler_2 { get; set; }
        public virtual ICollection<Dykkerjournal> Dykkerjornaler_3 { get; set; }
        public virtual ICollection<DirekteOgDekompStopp> DirekteOgDekompStoppTabeller { get; set; }
        public virtual ICollection<Overflatekompresjon> OverflatekompresjontTabeller { get; set; }

    }
}