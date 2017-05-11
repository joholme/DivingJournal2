using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
    public enum DykkType
    {
        DYK600_Sikkerhetsopplæring_i_dykking,
        DYK601_Fagoppløring_i_annlegg,
        DYK601_Fagopplæring_i_rørlegging,
        DYK601_Fagopplæring_i_berging,
        RED110_Redningsdykking
    }
    public class Dykkerjournal
    {
        //PK
        public int Id { get; set; }
        //FK
        public int Dykker1Id { get; set; }
        public int Dykker2Id { get; set; }
        public int StandbyDykkerId { get; set; }

        public DykkType DykkType { get; set; }

        //Links - to one
        public virtual Dykker Dykker1 { get; set; }
        public virtual Dykker Dykker2 { get; set; }
        public virtual Dykker StandbyDykker { get; set; }

        //Links - to many
        public virtual ICollection<DirekteOgDekompStopp> DirekteOgDekompStoppTabeller { get; set; }
        public virtual ICollection<Overflatekompresjon> OverflatekompresjonTabeller { get; set; }
        public virtual ICollection<Utstyr> UtstyrTabeller { get; set; }
    }
}