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
                new Dykkerjournal
                {

                }
            }
        }
    }
}