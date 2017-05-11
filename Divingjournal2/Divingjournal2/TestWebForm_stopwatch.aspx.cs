using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Divingjournal2
{
    public partial class TestWebForm_stopwatch : System.Web.UI.Page
    {

        protected override void OnInit(EventArgs e)
        {

            Button1.Attributes.Add("onclick", "startTimer(); return false;");
            SubmitButton.Attributes.Add("onclick", "ConfirmBox(); stopTimer();");
            
            

            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string s = "finner ikke";
            
            
            Response.Write(s);
        }


        protected void TextBox1Event()
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "onclick", "startTimer();", true);
        }
    }

}