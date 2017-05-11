using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Divingjournal2.Models;

namespace Divingjournal2.DAL
{
    public class DykkerjournalInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<DykkerjournalContext>
    {
        protected override void Seed(DykkerjournalContext context)
        {
            var dykkere = new List<Dykker>
            {
                new Dykker{Navn = "Nils Terje"},
                new Dykker {Navn = "Ørjan"},
                new Dykker {Navn = "Jonas"}
            };

            dykkere.ForEach(s => context.Dykkers.Add(s));
            context.SaveChanges();

            var dykkerjournaler = new List<Dykkerjournal>
            {
                new Dykkerjournal {DykkType = DykkType.DYK601_Fagopplæring_i_berging},
                 new Dykkerjournal {DykkType = DykkType.DYK601_Fagopplæring_i_rørlegging}

            };
            dykkerjournaler.ForEach(s => context.Dykkerjournals.Add(s));
            context.SaveChanges();

            var direkte_og_dekomper = new List<DirekteOgDekompStopp>
            {
                new DirekteOgDekompStopp{Forlot_bunn_dybde = 12},
                new DirekteOgDekompStopp{Forlot_bunn_dybde = 13},
                new DirekteOgDekompStopp{Forlot_bunn_dybde = 14}
            };

            direkte_og_dekomper.ForEach(s => context.DirekteOgDekompStopps.Add(s));
            context.SaveChanges();

            var overflatekompresjoner = new List<Overflatekompresjon>
            {
                new Overflatekompresjon{Tid_9_til_0_m = 50},
                new Overflatekompresjon{Tid_9_til_0_m = 40},
                new Overflatekompresjon{Tid_9_til_0_m = 30}
            };

            overflatekompresjoner.ForEach(s => context.Overflatekompresjons.Add(s));
            context.SaveChanges();

            var utstyr = new List<Utstyr>
            {
                new Utstyr{OF_Tungt = true },
                new Utstyr{OF_Tungt = true },
                new Utstyr{OF_Tungt = false }
            };
            utstyr.ForEach(s => context.Utstyrs.Add(s));
            context.SaveChanges();
        }
    }
}