using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }

        //Link- to many
        public virtual ICollection<Journal_Cache> Journal_Caches { get; set; }

    }
}