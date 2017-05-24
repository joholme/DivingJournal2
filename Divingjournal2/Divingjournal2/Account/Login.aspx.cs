using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Divingjournal2.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\\Login.mdf ; Integrated Security = True");
            SqlDataAdapter sda = new SqlDataAdapter("Select count(*) From Log_Table Where UserName = '" + TextBoxUserName.Text + "' and Password = '" + TextBoxPassword.Text + "' ",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows[0][0].ToString()== "1")
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                PasswordError.Visible = true;
            }
        }
    }
    
}