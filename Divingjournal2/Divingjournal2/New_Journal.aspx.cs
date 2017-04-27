using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Divingjournal
{
    public partial class New_Journal : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DiverLibrary.Diver divertest = new DiverLibrary.Diver("Jonas Holme");
            DiverLibrary.Journal journaltest = new DiverLibrary.Journal(12);
            divertest.CourseDive = "Test";
            // diver2Row.Visible = false;

            othersTextbox.Text = journaltest.JournalID.ToString();
            divertest.Of_type = DiverLibrary.OF_Type.OF_Heavy;
            journaltest.Subject = DiverLibrary.Subject.DYK600_Safety;

            //endring!!
            string t;


            if (!IsPostBack)
            {
                sw = new Stopwatch();
                sw.Start();
            }

        }

        public static Stopwatch sw;

       

        protected void tm1_Tick(object sender, EventArgs e)
        {
            long sec = sw.Elapsed.Seconds;
            long min = sw.Elapsed.Minutes;

            if (min < 60)
            {
                if (min < 10)
                    Label1.Text = "0" + min;
                else
                    Label1.Text = min.ToString();

                Label1.Text += " : ";

                if (sec < 10)
                    Label1.Text += "0" + sec;
                else
                    Label1.Text += sec.ToString();
            }
            else
            {
                sw.Stop();
                Response.Redirect("Timeout.aspx");
            }
        }

    }
}