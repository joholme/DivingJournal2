using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiverLibrary;

namespace Divingjournal2
{
    public partial class New_Journal_Test : System.Web.UI.Page
    {
        Journal j = new Journal(1);
        
        Diver d1 = new Diver();
        Diver d2 = new Diver();
        Diver sb = new Diver();
        StopWatch myWatch = new StopWatch();


        protected override void OnInit(EventArgs e)
        {
            JournalIDLabel.Text = j.JournalID.ToString();
            StandardDiveButton.Enabled = false;
            StandardDiveTable.Visible = true;
            Calendar1.Visible = false;
            

            writeHeader("Standarddykk");

            


            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        
        public void writeJournal()
        {
            
            j.CourseNumber = CourseNrTextBox.Text;
            j.Date = DateTextBox.Text;
            j.Location = LocationTextBox.Text;
            j.DivingSpot = DivingSpotTextBox.Text;
            j.Subject = checkDropDownList();
            j.Other = OtherTextBox.Text;

            j.Divingchief = DivingChiefTextBox.Text;
            j.Divingleader_teacher = Divingleader_teacherTextBox.Text;
            j.Divingleader_student = Divingleader_studentTextBox.Text;
            j.Diver_1 = d1.Name = Diver_1TextBox.Text;
            j.Diver_2 = d2.Name = Diver_2TextBox.Text;
            j.Standby = sb.Name = StandbyTextBox.Text;
            j.Helpman = HelpmanTextBox.Text;
            j.Helpman_assisting = Helpman_assistingTextBox.Text;
            j.Lineman_1 = Lineman_1TextBox.Text;
            j.Lineman_2 = Lineman_2TextBox.Text;
            j.Others = OthersTextBox.Text;
            j.Airsystem_main = airsystem_mainTextBox.Text;
            j.Airsystem_secondary = airsystem_secondaryTextBox.Text;
            j.OxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
            j.OxygenForChamber_readyForUse = oxygenForChamber_readyForUseTextBox.Text;
            j.EmergencyGas_divingBell = emergencyGas_divingBellTextBox.Text;
            j.EmergencyGas_divingBasket = emergencyGas_divingBasketTextBox.Text;

            
            
            Session["journal"] = j;

          /*  Journal k = (DiverLibrary.Journal)Session["journal"];

            string str = k.DivingSpot + " " + k.Location;
            
            Response.Write(str); */
            




        }

        public Subject checkDropDownList()
        {
            Subject s = Subject.DYK600_Safety;
           int value = SubjectDropDownList.SelectedIndex;
            switch (SubjectDropDownList.SelectedIndex)
            {
                case 1:
                    s = Subject.DYK601_Facilities;
                    break;
                case 2:
                    s = Subject.DYK601_Plumbing;
                    break;
                case 3:
                    s = Subject.DYK601_Saving;
                    break;
                case 4:
                    s = Subject.RED110_Saving;
                    break;
                default:
                    break;
            }
                    return s;
            }

        protected void SessionButton_Click(object sender, EventArgs e)
        {
            writeJournal();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }

        protected void StandardDiveButton_Click(object sender, EventArgs e)
        {
            j.JournalType = JournalType.direct;
            checkJournalID(j.JournalType);
        }

        protected void SurfaceCompressionDiveButton_Click(object sender, EventArgs e)
        {
            j.JournalType = JournalType.surfaceCompression;
            checkJournalID(j.JournalType);

        }

        protected void PressureChamberDiveButton_Click(object sender, EventArgs e)
        {
            j.JournalType = JournalType.pressurechamber;
            checkJournalID(j.JournalType);


        }

        public void writeHeader(string diveType)
        {
            HeaderLabel.Text = string.Format("<h1>{0}</h1>", "Dykkerjournal - " + diveType);
        }

        public void checkJournalID(JournalType journaltype) 
        {
            if (journaltype == JournalType.direct)
            {
                StandardDiveTable.Visible = true;
                SurfaceCompressionDiveTable.Visible = false;

                StandardDiveButton.Enabled = false;
                SurfaceCompressionDiveButton.Enabled = true;
                PressureChamberDiveButton.Enabled = true;

                writeHeader("Standarddykk");

            } else if (journaltype == JournalType.surfaceCompression) {

                StandardDiveTable.Visible = false;
                SurfaceCompressionDiveTable.Visible = true;

                StandardDiveButton.Enabled = true;
                SurfaceCompressionDiveButton.Enabled = false;
                PressureChamberDiveButton.Enabled = true;

                writeHeader("Overflatekompresjon");

            } else //Pressurechamber dive
            {
                StandardDiveTable.Visible = false;
                SurfaceCompressionDiveTable.Visible = false;
                //PressurechamberDiveTable.Visible = true, when made.

                StandardDiveButton.Enabled = true;
                SurfaceCompressionDiveButton.Enabled = true;
                PressureChamberDiveButton.Enabled = false;

                writeHeader("Trykkammer");
            }
        }

        protected void DateButton_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTextBox.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void D1LeftSurfaceButton_Click(object sender, EventArgs e)
        {
            myWatch.Start();
            
        }

       

        protected void D2LeftSurfaceButton_Click(object sender, EventArgs e)
        {
            myWatch.Stop();
            D1LeftSurfaceLabel.Text = myWatch.GetElapsedTimeSecs().ToString();

        }
    }
        
    }
