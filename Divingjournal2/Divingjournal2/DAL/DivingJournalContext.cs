using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

using Divingjournal2.Models;

namespace Divingjournal2.DAL
{
    public class DivingJournalContext : DbContext
    {
        public DivingJournalContext () : base("DivingJournalContext")
            {
            }
        public DbSet<Journal> Journals { get; set; }
        public DbSet<Diver_Standard> Diver_Standards { get; set; }
        public DbSet<Diver_Compression> Diver_Compressions { get; set; }
        public DbSet<Diver_Pressurechamber> Diver_Pressurechambers { get; set; }
        

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }

    }
}
