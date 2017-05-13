using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiverLibrary;

namespace Divingjournal2.Models
{
    public enum Subject { DYK600_Safety, DYK601_Facilities, DYK601_Plumbing, DYK601_Saving, RED110_Saving };
    public enum JournalType { direct, surfaceCompression, pressurechamber };

    public class Journal
    {
        //PK
        public int Id { get; set; }

        Subject subject { get; set; }
        JournalType journalType { get; set; }
        string courseNumber { get; set; }
        string other { get; set; }
        public string date { get; set; }
        public string location { get; set; }
        public string divingSpot { get; set; }
        string divingchief { get; set; }
        string divingleader_teacher { get; set; }
        string divingleader_student { get; set; }
        string diver_1 { get; set; }
        string diver_2 { get; set; }
        string standby { get; set; }
        string lineman_1 { get; set; }
        string lineman_2 { get; set; }
        string helpman { get; set; }
        string helpman_assisting { get; set; }
        string others { get; set; }
        string airsystem_main { get; set; }
        string airsystem_secondary { get; set; }
        string oxygenForChamber_inUse { get; set; }
        string oxygenForChamber_readyForUse { get; set; }
        string emergencyGas_divingBell { get; set; }
        string emergencyGas_divingBasket { get; set; }
        string notes { get; set; }
        string changelog { get; set; }


        //Links - to many
        public virtual ICollection<Diver_Standard> Diver_Standards { get; set; }
        public virtual ICollection<Diver_Compression> Diver_Compressions { get; set; }
        public virtual ICollection<Diver_Pressurechamber> Diver_Pressurechambers { get; set; }



    }
}