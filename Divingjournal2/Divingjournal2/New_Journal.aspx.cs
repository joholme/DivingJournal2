using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using DiverLibrary;

namespace Divingjournal
{
    public partial class New_Journal : Page
    {   

        

        protected void Page_Load(object sender, EventArgs e)
        {
            
            Diver divertest = new Diver("Jonas Holme");
            Journal journaltest = new Journal(12);
            divertest.CourseDive = "Test";
            // diver2Row.Visible = false;

            othersTextbox.Text = journaltest.JournalID.ToString();
            divertest.Of_type = OF_Type.OF_Heavy;
            journaltest.Subject = Subject.DYK600_Safety;

            
            //for (int i; i<4; i++)
            
              //  subjectDropdown.Items.Insert(0, new ListItem("DYK602"));
            

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

        protected void largeButton_Click(object sender, EventArgs e)
        {
            Divingjournal2.TableMaker tm = new Divingjournal2.TableMaker();
            // tm.addTable(Panel1, 2, 2);
            tm.journalTableMaster(Panel1);
            
        }

        
    }

}