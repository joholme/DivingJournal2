using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Divingjournal2
{
    public partial class New_Journal_Rebuilt : System.Web.UI.Page
    {

        protected override void OnInit(EventArgs e)
        {
            


            writeHeader("Standarddykk");
            


            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void writeHeader(string diveType)
        {
            HeaderLabel.Text = string.Format("<h3>{0}</h3>", "Dykkerjournal - " + diveType);
        }

        protected void BellAndBasket_CheckedChanged(object sender, EventArgs e)
        {
            if (DivingBasketCheckBox.Checked)
            {
                DivingBellCheckBox.Checked = false;
            } else
            {
                DivingBasketCheckBox.Checked = false;
            }

            if (DivingBasketCheckBox.Checked || DivingBellCheckBox.Checked)
            {
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = true;
            } else
            {
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = false;
            }
        }

        protected void D1AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D1AirTypeDropDownList.SelectedValue == "0")
            {
                D1NitroxPercentCell1.Enabled = D1NitroxPercentCell2.Enabled = false;
                D1NitroxPercentTextBox.Text = "";
            }
            if (D1AirTypeDropDownList.SelectedValue == "1")
            {
                D1NitroxPercentCell1.Enabled = D1NitroxPercentCell2.Enabled = true;
            } 

        }

        protected void D2AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D2AirTypeDropDownList.SelectedValue == "0")
            {
                D2NitroxPercentCell1.Enabled = D2NitroxPercentCell2.Enabled = false;
                D2NitroxPercentTextBox.Text = "";
            }
            if (D2AirTypeDropDownList.SelectedValue == "1")
            {
                D2NitroxPercentCell1.Enabled = D2NitroxPercentCell2.Enabled = true;
            } 

        }

        protected void D3AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D3AirTypeDropDownList.SelectedValue == "0")
            {
                D3NitroxPercentCell1.Enabled = D3NitroxPercentCell2.Enabled = false;
                D3NitroxPercentTextBox.Text = "";
            }
            if (D3AirTypeDropDownList.SelectedValue == "1")
            {
                D3NitroxPercentCell1.Enabled = D3NitroxPercentCell2.Enabled = true;
            } 

        }



    }
}