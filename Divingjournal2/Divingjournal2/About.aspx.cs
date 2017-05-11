using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Diagnostics;


namespace Divingjournal2
{
    public partial class About : Page
    {

       

        protected override void OnInit(EventArgs e)
        {

            Timer1.Enabled = false;

            


            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            tick();
        }

        public void tick()
        {
            DateTime startTime = DateTime.Now;
            DateTime startTime2 = DateTime.Now.AddSeconds(1);
            TimeSpan ts = startTime2.Subtract(startTime.);

            Label1.Text = DateTime.Now.ToLongTimeString();
            
            Session["timeLabel"] = Label1.Text;
        }

        public void tickStopWatch()
        {
            int secs = 0;
            int mins = 0;
            int hours = 0;
            secs++;
        
            if (secs>59)
            {
                mins++;
                secs = 0;
            }
            if (mins>59)
            {
                hours++;
                mins = 0;
            }

            Label1.Text = hours.ToString() + ":" + mins.ToString() + ":" + secs.ToString();
            secs++;

        }

        protected void StartButton_Click(object sender, EventArgs e)
        {
            
            
            if (Timer1.Enabled) {
                Timer1.Enabled = false;
                StartButton.Text = "Start";
                
            }
            else
            {

                Timer1.Enabled = true;
                StartButton.Text = "Stopp";
                
            }
        }

        
    }
}