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
        Stopwatch stopwatch = new Stopwatch();
        int hour, min, sec, ms;

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "Panel refreshed at: " + DateTime.Now.ToLongTimeString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            Label2.Text = "Page created at: " + DateTime.Now.ToLongTimeString();
            Timer1.Interval = 1000;
            
        }

     
    }
}