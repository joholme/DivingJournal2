using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

using Divingjournal2.Models;

namespace Divingjournal2.DAL
{
    public class DykkerjournalContext : DbContext
    {
        public DykkerjournalContext () : base("DykkerjournalContext")
            {
            }
        public DbSet<Dykkerjournal> Dykkerjournals { get; set; }
        public DbSet<Dykker> Dykkers { get; set; }
        public DbSet<DirekteOgDekompStopp> DirekteOgDekompStopps { get; set; }
        public DbSet<Overflatekompresjon> Overflatekompresjons { get; set; }
        public DbSet<Utstyr> Utstyrs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }

    }
}
