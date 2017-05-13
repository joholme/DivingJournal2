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

        private DateTime startTime;
        private DateTime stopTime;
        private TimeSpan ts;
        string start = "00:00:00";

        public DateTime StartTime
        {
            get
            {
                return startTime;
            }

            set
            {
                startTime = value;
            }
        }

        public DateTime StopTime
        {
            get
            {
                return stopTime;
            }

            set
            {
                stopTime = value;
            }
        }

        public TimeSpan Ts
        {
            get
            {
                return ts;
            }

            set
            {
                ts = value;
            }
        }

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
            stopTime = DateTime.Now;



            Label1.Text = tickStopWatch(startTime, stopTime);
            
            Session["timeLabel"] = Label1.Text;
        }

        public string tickStopWatch(DateTime start, DateTime stop)
        {

            int secs = stop.Second - start.Second;
            int mins = stop.Minute - start.Minute;
            int hours = stop.Hour - start.Hour;

            string secString = secs.ToString();
            string minString = mins.ToString();
            string hourString = hours.ToString();

            if (secs < 10)
            {
                secString = "0" + secs.ToString();
            }

            if (mins < 10)
            {
                minString = "0" + mins.ToString();
            }

            if (hours < 10)
            {
                hourString = "0" + hours.ToString();
            }

            return hourString + ":" + minString + ":" + secString;

        }

        protected void StartButton_Click(object sender, EventArgs e)
        {
            
            
            if (Timer1.Enabled) {
                Timer1.Enabled = false;
                StartButton.Text = "Start";
                
            }
            else
            {
                StartTime = DateTime.Now;
                Timer1.Enabled = true;
                StartButton.Text = "Stopp";
                
            }
        }

        
    }
}