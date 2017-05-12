using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiverLibrary;
using System.Diagnostics;

namespace Divingjournal2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = (string)Session["timeLabel"];
            Label2.Text = s;

            Debug.Write("Heipådeg");
            
        }
    }
}