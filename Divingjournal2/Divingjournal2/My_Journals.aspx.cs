using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Divingjournal2
{
    public partial class My_Journals : System.Web.UI.Page
    {
        Models.Journal_Cache jc = new Models.Journal_Cache();
        public SqlConnection conn = new SqlConnection(@"Data Source=divingjournal.database.windows.net;Initial Catalog=DivingJournalDB;Integrated Security=False;User ID=djadmin;Password=DykkerUtdanningDB!5;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("PAGE LOADED");
            Debug.WriteLine("USER NAME: " + HttpContext.Current.Session["Username"]);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            System.Data.SqlClient.SqlCommand com;
            string str;

            conn.Open();
            str = "SELECT * from dbo.Journal_Cache WHERE journal_name='" + journal_name_textbox.Text + "'";
            com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();
            if(reader.Read())
            {
                //New_Journal.local_jc.date = reader["date"].ToString();
                New_Journal.local_jc.journal_name = reader["journal_name"].ToString();
                New_Journal.isLoaded = true;
              
                reader.Close();
                conn.Close();
                Response.Redirect("~/New_Journal.aspx");

            }
        }
    }
}