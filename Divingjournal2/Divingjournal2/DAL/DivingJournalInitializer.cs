using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Divingjournal2.Models;
using System.Diagnostics;

namespace Divingjournal2.DAL
{
    public class DivingJournalInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<DivingJournalContext>
    {
        protected override void Seed(DivingJournalContext context)
        {
            Debug.Write("Jøvla");
            var divers = new List<Diver_Standard>
            {
                new Diver_Standard{name = "Nils Terje", of_type=OF_Type.OF_Heavy},
                new Diver_Standard {name = "Ørjan", of_type=OF_Type.OF_Light},
                new Diver_Standard {name = "Jonas", of_type=OF_Type.scuba}
            };

            divers.ForEach(s => context.Diver_Standards.Add(s));
            context.SaveChanges();

            var journals = new List<Journal>
            {
                 new Journal {location = "Skålevik", date="17.mai", divingSpot="DP1"},
                 new Journal {location = "Åsane", date="16.mai", divingSpot="DP69"}

            };
            journals.ForEach(s => context.Journals.Add(s));
            context.SaveChanges();

            
        }
    }
}