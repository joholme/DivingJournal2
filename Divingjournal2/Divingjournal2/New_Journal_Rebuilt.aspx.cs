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
            showTables(true, false, false);



            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StandardDiveButton_Click(object sender, EventArgs e)
        {
            writeHeader("Standarddykk");
            showTables(true, false, false);
        }

        protected void SurfaceCompressionDiveButton_Click(object sender, EventArgs e)
        {
            writeHeader("Overflatedekompresjon");
            showTables(false, true, false);
        }

        protected void PressureChamberDiveButton_Click(object sender, EventArgs e)
        {
            writeHeader("Trykkammer");
            showTables(false, false, true);
        }

        public void writeHeader(string diveType)
        {
            HeaderLabel.Text = string.Format("<h3>{0}</h3>", "Dykkerjournal - " + diveType);
        }

        public void showTables(bool standard, bool surface, bool chamber)
        {
            StandardDiveButton.Enabled = !standard;
            SurfaceCompressionDiveButton.Enabled = !surface;
            PressureChamberDiveButton.Enabled = !chamber;

            arrived9mRow.Visible = standard;
            arrived6mRow.Visible = standard;
            arrived3mRow.Visible = standard;
            left9mRow.Visible = standard;
            left6mRow.Visible = standard;
            left3mRow.Visible = standard;
            ascensionTimeRow.Visible = standard;

            left18mRow.Visible = surface;
            left15mRow.Visible = surface;
            left12mRow.Visible = surface;
            time12_0mRow.Visible = surface;
            reached15mInChamberRow.Visible = surface;
            surfaceIntervalRow.Visible = surface;
            left15mInChamberRow.Visible = surface;
            reached12mInChamber.Visible = surface;
            chamberSealedRow.Visible = surface;
            o2_1Row.Visible = surface;
            o2_2Row.Visible = surface;
            o2_3Row.Visible = surface;
            air_1Row.Visible = surface;
            air_2Row.Visible = surface;
            air_3Row.Visible = surface;
            left12mWithoutO2Row.Visible = surface;
            timeInChamberRow.Visible = surface;
            timeAtSeaRow.Visible = surface;
            totalDecompressionRow.Visible = surface;


            //Only disabled for pressurechamber:
            courseNrRow.Visible = !chamber;
            Diver1Table.Visible = !chamber;
            Diver2Table.Visible = !chamber;
            Diver3Table.Visible = !chamber;
            DivingSpotRow.Visible = !chamber;
            OtherRow.Visible = !chamber;
            Divingleader_studentRow.Visible = !chamber;
            Diver1Row.Visible = !chamber;
            Diver2Row.Visible = !chamber;
            Diver3Row.Visible = !chamber;
            HelpmanRow.Visible = !chamber;
            Helpman_assistingRow.Visible = !chamber;
            Lineman_1Row.Visible = !chamber;
            Lineman_2Row.Visible = !chamber;
            OthersRow.Visible = !chamber;
            BellAndBasketCheckBoxRow.Visible = !chamber;
            StandardAndCompressionDiveTable.Visible = !chamber;
            if (chamber)
            {
                DivingBasketCheckBox.Checked = DivingBellCheckBox.Checked = !chamber;
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = !chamber;
            }

            

            //Only enabled for pressurechamber:
            PurposeRow.Visible = chamber;
            chamberoperatorRow.Visible = chamber;
            chamberassistentRow.Visible = chamber;
            ChamberCheckBoxRow.Visible = chamber;
            doctorRow.Visible = chamber;
            tenderRow.Visible = chamber;
            ChamberRow.Visible = chamber;
            PCDiverTitleRow.Visible = chamber;
            PCDiverRow1.Visible = chamber;
            PCDiverRow2.Visible = chamber;
            PCDiverRow3.Visible = chamber;
            PCDiverRow4.Visible = chamber;

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

        //Help method for finding textbox by ID. Used in TimeButton_Click()
        private Control FindControlRecursive(Control rootControl, string controlID)
        {
            if (rootControl.ID == controlID) return rootControl;

            foreach (Control controlToSearch in rootControl.Controls)
            {
                Control controlToReturn =
                    FindControlRecursive(controlToSearch, controlID);
                if (controlToReturn != null) return controlToReturn;
            }
            return null;
        }

        //Makes datestamp with "Kl " in front. All datestamp buttons use this method. 
        protected void TimeButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (button.CommandArgument != null)
            {
                TextBox textbox = (TextBox)FindControlRecursive(Page, button.CommandArgument);
                textbox.Text = DateTime.Now.ToShortTimeString();
            }
        }

        protected void TimeButtonWithExtraFunction_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (button.CommandArgument != null)
            {
                TextBox textbox = (TextBox)FindControlRecursive(Page, button.CommandArgument);
                textbox.Text = DateTime.Now.ToShortTimeString();
            }
        }


        protected void chamberSealedButton_Click(object sender, EventArgs e)
        {
            if (chamberSealedButton.Text == "Forsegle kammer")
            {
                chamberSealedButton.Text = "Kammer forseglet";
            }
            else
            {
                chamberSealedButton.Text = "Forsegle kammer";
            }

        }

        //If we find out that only one standby is allowed. Stands empty for now.
        protected void standbyCheckBox_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void treatmentCheckBox_CheckedChanged(object sender, EventArgs e)
        {
                doctorRow.Visible = tenderRow.Visible = treatmentCheckBox.Checked;
        }
    }
}