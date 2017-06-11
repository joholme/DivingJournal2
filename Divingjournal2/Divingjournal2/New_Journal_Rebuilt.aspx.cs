using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Net;
using Divingjournal2.DAL;
using DiverLibrary;

using System.Data.SqlClient;

namespace Divingjournal2
{
    public partial class New_Journal_Rebuilt : System.Web.UI.Page
    {
        List<Watch> watchList = new List<Watch>();

        public SqlConnection conn = new SqlConnection(@"Data Source=divingjournal.database.windows.net;Initial Catalog=DivingJournalDB;Integrated Security=False;User ID=djadmin;Password=DykkerUtdanningDB!5;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        Diver d1 = new Diver();
        Diver d2 = new Diver();
        Diver sb = new Diver();

        Models.Journal j = new Models.Journal();
        Models.Journal_Pressurechamber pc = new Models.Journal_Pressurechamber();
        Models.Journal_Cache jc = new Models.Journal_Cache();

        public static Models.Journal_Cache local_jc = new Models.Journal_Cache();

        public string localJournalName;
        private string str;

        protected override void OnInit(EventArgs e)
        {



            writeHeader("Standarddykk");
            showTables(true, false, false);
            DateTextBox.Text = DateTime.Now.ToLocalTime().ToShortDateString();

            makeWatches();

            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData(Request.QueryString["journal_name"]);
        }

        private void LoadData(string journal_name)
        {
            System.Data.SqlClient.SqlCommand com;
            conn.Open();
            str = "SELECT * from dbo.Journal_Cache WHERE journal_name='" + journal_name + "'";
            com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();

            if (reader.Read())
            {
                /*
                CourseNrTextBox.Text = reader["journal_name"].ToString();
                OtherTextBox.Text = reader["other"].ToString();
                LocationTextBox.Text = reader["location"].ToString();
                DivingSpotTextBox.Text = reader["divingSpot"].ToString();
                DivingChiefTextBox.Text = reader["divingchief"].ToString();
                Divingleader_teacherTextBox.Text = reader["divingleader_teacher"].ToString();
                Divingleader_studentTextBox.Text = reader["divingleader_student"].ToString();
                Diver_1TextBox.Text = reader["diver_1"].ToString();
                Diver_2TextBox.Text = reader["diver_2"].ToString();
                StandbyTextBox.Text = reader["standby"].ToString();
                */
            }
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

        /*    private void WriteToDatabase()
            {
                DivingJournalContext db = new DivingJournalContext();
                j.username = HttpContext.Current.Session["Username"].ToString();
                j.subject = checkSubjectDropDownList();
                j.transport = returnTransportCheckBoxList();
                j.courseNumber = courseNumberTextBox.Text;
                j.other = otherTextBox.Text;
                j.date = DateTextBox.Text;
                j.location = LocationTextBox.Text;
                j.divingSpot = DivingSpotTextBox.Text;
                j.divingchief = DivingchiefTextBox.Text;
                j.divingleader_teacher = divingleader_teacherTextBox.Text;
                j.divingleader_student = divingleader_studentTextBox.Text;
                j.diver_1 = diver_1TextBox.Text;
                j.diver_2 = diver_2TextBox.Text;
                j.diver_3 = diver_3TextBox.Text;
                j.lineman_1 = lineman_1TextBox.Text;
                j.lineman_2 = lineman_2TextBox.Text;
                j.helpman = helpmanTextBox.Text;
                j.helpman_assisting = helpman_assistingTextBox.Text;
                j.others = othersTextBox.Text;
                j.airsystem_main = airsystem_mainTextBox.Text;
                j.airsystem_secondary = airsystem_secondaryTextBox.Text;
                j.oxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
                j.oxygenForChamber_readyForUse = oxygenForChamber_readyForUseTextBox.Text;
                j.emergencyGas_divingBell = emergencyGas_divingBellTextBox.Text;
                j.emergencyGas_divingBasket = emergencyGas_divingBasketTextBox.Text;
                j.notes = notesTextBox.Text;
                //må legge til changelog
                db.Journals.Add(j);
                db.SaveChanges();
                Session["Journal_Id"] = j.Id;
                if (j.journalType == Models.JournalType.direct)
                {
                    var diver1 = new Models.Diver_Standard
                    {
                        //map data fra webform til diver_standard
                        JournalID = j.Id,
                        of_type = D1checkOf_TypeDropDownList(),
                        direct = D1checkDirectDropDownList(),
                        airType = D1checkAirTypeDropDownList(),
                        nitroxType = D1NitroxPercentTextBox.Text,
                        repeatedAir = D1RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D1breathingGearTextBox.Text,
                        volume = D1volumeTextBox.Text,
                        pressure = D1pressureTextBox.Text,
                        plannedDepth = D1plannedDepthTextBox.Text,
                        plannedTime = D1plannedTimeTextBox.Text,
                        courseDive = D1courseDiveTextBox.Text,
                        leftSurface = D1LeftSurface.Text,
                        reachedBottom = D1reachedBottom.Text,
                        leftBottom_Depth = D1leftBottom_Depth.Text,
                        leftBottom_Time = D1leftBottom_Time.Text,
                        bottomTime = D1bottomTime.Text,
                        maxDepth = D1maxDepth.Text,
                        ELD = D1ELD.Text,
                        additionToBottomTime = D1additionToBottomTime.Text,
                        tableUsed_Meter = D1tableUsed_Meter.Text,
                        tableUsed_Minutes = D1tableUsed_Minutes.Text,
                        ascensionToFirstStop = D1ascensionToFirstStop.Text,
                        timeAtSafetyStop = D1timeAtSafetyStop.Text,
                        totalDivingTime = D1totalDivingTime.Text,
                        N2GroupAfterDive = D1N2GroupAfterDive.Text,
                        isEverythingOK = checkYesNoDropDownList(D1isEverythingOKDropDownList),
                        arrived9m = D1arrived9m.Text,
                        arrived6m = D1arrived6m.Text,
                        arrived3m = D1arrived3m.Text,
                        reachedSurface = D1reachedSurface.Text,
                        ascensionTime = D1ascensionTime.Text
                    };
                    var diver2 = new Models.Diver_Standard
                    {
                        JournalID = j.Id,
                        of_type = D2checkOf_TypeDropDownList(),
                        direct = D2checkDirectDropDownList(),
                        airType = D2checkAirTypeDropDownList(),
                        nitroxType = D2NitroxPercentTextBox.Text,
                        repeatedAir = D2RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D2breathingGearTextBox.Text,
                        volume = D2volumeTextBox.Text,
                        pressure = D2pressureTextBox.Text,
                        plannedDepth = D2PlannedDepthTextBox.Text,
                        plannedTime = D2PlannedTimeTextBox.Text,
                        courseDive = D2CourseDiveTextBox.Text,
                        leftSurface = D2LeftSurface.Text,
                        reachedBottom = D2reachedBottom.Text,
                        leftBottom_Depth = D2leftBottom_Depth.Text,
                        leftBottom_Time = D2leftBottom_Time.Text,
                        bottomTime = D2bottomTime.Text,
                        maxDepth = D2maxDepth.Text,
                        ELD = D2ELD.Text,
                        additionToBottomTime = D2additionToBottomTime.Text,
                        tableUsed_Meter = D2tableUsed_Meter.Text,
                        tableUsed_Minutes = D2tableUsed_Minutes.Text,
                        ascensionToFirstStop = D2ascensionToFirstStop.Text,
                        timeAtSafetyStop = D2timeAtSafetyStop.Text,
                        totalDivingTime = D2totalDivingTime.Text,
                        N2GroupAfterDive = D2N2GroupAfterDive.Text,
                        isEverythingOK = checkYesNoDropDownList(D2isEverythingOKDropDownList),
                        arrived9m = D2arrived9m.Text,
                        arrived6m = D2arrived6m.Text,
                        arrived3m = D2arrived3m.Text,
                        reachedSurface = D2reachedSurface.Text,
                        ascensionTime = D2ascensionTime.Text
                    };
                    var diver3 = new Models.Diver_Standard
                    {
                        JournalID = j.Id,
                        of_type = D3checkOf_TypeDropDownList(),
                        direct = D3checkDirectDropDownList(),
                        airType = D3checkAirTypeDropDownList(),
                        nitroxType = D3NitroxPercentTextBox.Text,
                        repeatedAir = D3RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D3breathingGearTextBox.Text,
                        volume = D3volumeTextBox.Text,
                        pressure = D3PressureTextBox.Text,
                        plannedDepth = D3PlannedDepthTextBox.Text,
                        plannedTime = D3PlannedTimeTextBox.Text,
                        courseDive = D3CourseDiveTextBox.Text,
                        leftSurface = D3LeftSurface.Text,
                        reachedBottom = D3reachedBottom.Text,
                        leftBottom_Depth = D3leftBottom_Depth.Text,
                        leftBottom_Time = D3leftBottom_Time.Text,
                        bottomTime = D3bottomTime.Text,
                        maxDepth = D3maxDepth.Text,
                        ELD = D3ELD.Text,
                        additionToBottomTime = D3additionToBottomTime.Text,
                        tableUsed_Meter = D3tableUsed_Meter.Text,
                        tableUsed_Minutes = D3tableUsed_Minutes.Text,
                        ascensionToFirstStop = D3ascensionToFirstStop.Text,
                        timeAtSafetyStop = D3timeAtSafetyStop.Text,
                        totalDivingTime = D3totalDivingTime.Text,
                        N2GroupAfterDive = D3N2GroupAfterDive.Text,
                        isEverythingOK = checkYesNoDropDownList(D3isEverythingOKDropDownList),
                        arrived9m = D3arrived9m.Text,
                        arrived6m = D3arrived6m.Text,
                        arrived3m = D3arrived3m.Text,
                        reachedSurface = D3reachedSurface.Text,
                        ascensionTime = D3ascensionTime.Text
                    };
                    db.Diver_Standards.Add(diver1);
                    db.Diver_Standards.Add(diver2);
                    db.Diver_Standards.Add(diver3);
                }
                else
                {
                    var diver1 = new Models.Diver_Compression
                    {
                        //map data fra webform til diver_standard
                        of_type = D1checkOf_TypeDropDownList(),
                        direct = D1checkDirectDropDownList(),
                        airType = D1checkAirTypeDropDownList(),
                        nitroxType = D1NitroxPercentTextBox.Text,
                        repeatedAir = D1RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D1breathingGearTextBox.Text,
                        volume = D1volumeTextBox.Text,
                        pressure = D1pressureTextBox.Text,
                        plannedDepth = D1plannedDepthTextBox.Text,
                        plannedTime = D1plannedTimeTextBox.Text,
                        courseDive = D1courseDiveTextBox.Text,
                        leftSurface = D1LeftSurface.Text,
                        reachedBottom = D1reachedBottom.Text,
                        leftBottom_Depth = D1leftBottom_Depth.Text,
                        leftBottom_Time = D1leftBottom_Time.Text,
                        bottomTime = D1bottomTime.Text,
                        maxDepth = D1maxDepth.Text,
                        ELD = D1ELD.Text,
                        additionToBottomTime = D1additionToBottomTime.Text,
                        tableUsed_Meter = D1tableUsed_Meter.Text,
                        tableUsed_Minutes = D1tableUsed_Minutes.Text,
                        ascensionToFirstStop = D1ascensionToFirstStop.Text,
                        timeAtSafetyStop = D1timeAtSafetyStop.Text,
                        totalDivingTime = D1totalDivingTime.Text,
                        N2GroupAfterDive = D1N2GroupAfterDive.Text,
                        isEverythingOK = checkYesNoDropDownList(D1isEverythingOKDropDownList),
                        left18m = D1left18m.Text,
                        left15m = D1left15m.Text,
                        left12m = D1left12m.Text,
                        time12_0m = D1time12_0m.Text,
                        reached15mInChamber = D1reached15mInChamber.Text,
                        o2_1 = D1o2_1.Text,
                        o2_2 = D1o2_2.Text,
                        o2_3 = D1o2_3.Text,
                        surfaceInterval = D1surfaceInterval.Text,
                        air_1 = D1air_1.Text,
                        air_2 = D1air_2.Text,
                        air_3 = D1air_3.Text,
                        left12mWithoutO2 = D1left12mWithoutO2.Text,
                        reachedSurface = D1reachedSurface.Text,
                        timeInChamber = D1timeInChamber.Text,
                        timeAtSea = D1timeAtSea.Text,
                        totalDecompression = D1totalDecompression.Text,
                    };
                    var diver2 = new Models.Diver_Compression
                    {
                        of_type = D2checkOf_TypeDropDownList(),
                        direct = D2checkDirectDropDownList(),
                        airType = D2checkAirTypeDropDownList(),
                        nitroxType = D2NitroxPercentTextBox.Text,
                        repeatedAir = D2RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D2breathingGearTextBox.Text,
                        volume = D2volumeTextBox.Text,
                        pressure = D2pressureTextBox.Text,
                        plannedDepth = D2PlannedDepthTextBox.Text,
                        plannedTime = D2PlannedTimeTextBox.Text,
                        courseDive = D2CourseDiveTextBox.Text,
                        leftSurface = D2LeftSurface.Text,
                        reachedBottom = D2reachedBottom.Text,
                        leftBottom_Depth = D2leftBottom_Depth.Text,
                        leftBottom_Time = D2leftBottom_Time.Text,
                        bottomTime = D2bottomTime.Text,
                        maxDepth = D2maxDepth.Text,
                        ELD = D2ELD.Text,
                        additionToBottomTime = D2additionToBottomTime.Text,
                        tableUsed_Meter = D2tableUsed_Meter.Text,
                        tableUsed_Minutes = D2tableUsed_Minutes.Text,
                        ascensionToFirstStop = D2ascensionToFirstStop.Text,
                        timeAtSafetyStop = D2timeAtSafetyStop.Text,
                        totalDivingTime = D2totalDivingTime.Text,
                        N2GroupAfterDive = D2N2GroupAfterDive.Text,
                        isEverythingOK = checkYesNoDropDownList(D2isEverythingOKDropDownList),
                        left18m = D2left18m.Text,
                        left15m = D2left15m.Text,
                        left12m = D2left12m.Text,
                        time12_0m = D2time12_0m.Text,
                        reached15mInChamber = D2reached15mInChamber.Text,
                        o2_1 = D2o2_1.Text,
                        o2_2 = D2o2_2.Text,
                        o2_3 = D2o2_3.Text,
                        surfaceInterval = D2surfaceInterval.Text,
                        air_1 = D2air_1.Text,
                        air_2 = D2air_2.Text,
                        air_3 = D2air_3.Text,
                        left12mWithoutO2 = D2left12mWithoutO2.Text,
                        reachedSurface = D2reachedSurface.Text,
                        timeInChamber = D2timeInChamber.Text,
                        timeAtSea = D2timeAtSea.Text,
                        totalDecompression = D2totalDecompression.Text,
                    };
                    var diver3 = new Models.Diver_Compression
                    {
                        of_type = D3checkOf_TypeDropDownList(),
                        direct = D3checkDirectDropDownList(),
                        airType = D3checkAirTypeDropDownList(),
                        nitroxType = D3NitroxPercentTextBox.Text,
                        repeatedAir = D3RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D3breathingGearTextBox.Text,
                        volume = D3volumeTextBox.Text,
                        pressure = D3PressureTextBox.Text,
                        plannedDepth = D3PlannedDepthTextBox.Text,
                        plannedTime = D3PlannedTimeTextBox.Text,
                        courseDive = D3CourseDiveTextBox.Text,
                        leftSurface = D3LeftSurface.Text,
                        reachedBottom = D3reachedBottom.Text,
                        leftBottom_Depth = D3leftBottom_Depth.Text,
                        leftBottom_Time = D3leftBottom_Time.Text,
                        bottomTime = D3bottomTime.Text,
                        maxDepth = D3maxDepth.Text,
                        ELD = D3ELD.Text,
                        additionToBottomTime = D3additionToBottomTime.Text,
                        tableUsed_Meter = D3tableUsed_Meter.Text,
                        tableUsed_Minutes = D3tableUsed_Minutes.Text,
                        ascensionToFirstStop = D3ascensionToFirstStop.Text,
                        timeAtSafetyStop = D3timeAtSafetyStop.Text,
                        totalDivingTime = D3totalDivingTime.Text,
                        N2GroupAfterDive = D3N2GroupAfterDive.Text,
                        isEverythingOK = checkYesNoDropDownList(D3isEverythingOKDropDownList),
                        left18m = D3left18m.Text,
                        left15m = D3left15m.Text,
                        left12m = D3left12m.Text,
                        time12_0m = D3time12_0m.Text,
                        reached15mInChamber = D3reached15mInChamber.Text,
                        o2_1 = D3o2_1.Text,
                        o2_2 = D3o2_2.Text,
                        o2_3 = D3o2_3.Text,
                        surfaceInterval = D3surfaceInterval.Text,
                        air_1 = D3air_1.Text,
                        air_2 = D3air_2.Text,
                        air_3 = D3air_3.Text,
                        left12mWithoutO2 = D3left12mWithoutO2.Text,
                        reachedSurface = D3reachedSurface.Text,
                        timeInChamber = D3timeInChamber.Text,
                        timeAtSea = D3timeAtSea.Text,
                        totalDecompression = D3totalDecompression.Text,
                    };
                    db.Diver_Compressions.Add(diver1);
                    db.Diver_Compressions.Add(diver2);
                    db.Diver_Compressions.Add(diver3);
                }
                db.SaveChanges();
            } */
            /*

                    arrived9m = D1arrived9m.Text,
                    arrived6m = D1arrived6m.Text,
                    arrived3m = D1arrived3m.Text,
                    reachedSurface = D1reachedSurface.Text,
                    ascensionTime = D1ascensionTime.Text

                };

                var diver2 = new Models.Diver_Standard
                {
                    JournalID = j.Id,
                    of_type = D2checkOf_TypeDropDownList(),
                    direct = D2checkDirectDropDownList(),
                    airType = D2checkAirTypeDropDownList(),
                    nitroxType = D2NitroxPercentTextBox.Text,
                    repeatedAir = D2RepeatedCheckBox.Checked,
                    N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D2breathingGearTextBox.Text,
                    volume = D2volumeTextBox.Text,
                    pressure = D2pressureTextBox.Text,
                    plannedDepth = D2PlannedDepthTextBox.Text,
                    plannedTime = D2PlannedTimeTextBox.Text,
                    courseDive = D2CourseDiveTextBox.Text,
                    leftSurface = D2LeftSurface.Text,
                    reachedBottom = D2reachedBottom.Text,
                    leftBottom_Depth = D2leftBottom_Depth.Text,
                    leftBottom_Time = D2leftBottom_Time.Text,
                    bottomTime = D2bottomTime.Text,
                    maxDepth = D2maxDepth.Text,
                    ELD = D2ELD.Text,
                    additionToBottomTime = D2additionToBottomTime.Text,
                    tableUsed_Meter = D2tableUsed_Meter.Text,
                    tableUsed_Minutes = D2tableUsed_Minutes.Text,
                    ascensionToFirstStop = D2ascensionToFirstStop.Text,
                    timeAtSafetyStop = D2timeAtSafetyStop.Text,
                    totalDivingTime = D2totalDivingTime.Text,
                    N2GroupAfterDive = D2N2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(D2isEverythingOKDropDownList),


                    arrived9m = D2arrived9m.Text,
                    arrived6m = D2arrived6m.Text,
                    arrived3m = D2arrived3m.Text,
                    reachedSurface = D2reachedSurface.Text,
                    ascensionTime = D2ascensionTime.Text
                };

                var diver3 = new Models.Diver_Standard
                {
                    JournalID = j.Id,
                    of_type = D3checkOf_TypeDropDownList(),
                    direct = D3checkDirectDropDownList(),
                    airType = D3checkAirTypeDropDownList(),
                    nitroxType = D3NitroxPercentTextBox.Text,
                    repeatedAir = D3RepeatedCheckBox.Checked,
                    N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D3breathingGearTextBox.Text,
                    volume = D3volumeTextBox.Text,
                    pressure = D3PressureTextBox.Text,
                    plannedDepth = D3PlannedDepthTextBox.Text,
                    plannedTime = D3PlannedTimeTextBox.Text,
                    courseDive = D3CourseDiveTextBox.Text,
                    leftSurface = D3LeftSurface.Text,
                    reachedBottom = D3reachedBottom.Text,
                    leftBottom_Depth = D3leftBottom_Depth.Text,
                    leftBottom_Time = D3leftBottom_Time.Text,
                    bottomTime = D3bottomTime.Text,
                    maxDepth = D3maxDepth.Text,
                    ELD = D3ELD.Text,
                    additionToBottomTime = D3additionToBottomTime.Text,
                    tableUsed_Meter = D3tableUsed_Meter.Text,
                    tableUsed_Minutes = D3tableUsed_Minutes.Text,
                    ascensionToFirstStop = D3ascensionToFirstStop.Text,
                    timeAtSafetyStop = D3timeAtSafetyStop.Text,
                    totalDivingTime = D3totalDivingTime.Text,
                    N2GroupAfterDive = D3N2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(D3isEverythingOKDropDownList),


                    arrived9m = D3arrived9m.Text,
                    arrived6m = D3arrived6m.Text,
                    arrived3m = D3arrived3m.Text,
                    reachedSurface = D3reachedSurface.Text,
                    ascensionTime = D3ascensionTime.Text
                };

                db.Diver_Standards.Add(diver1);
                db.Diver_Standards.Add(diver2);
                db.Diver_Standards.Add(diver3);
            }
            else
            {
                var diver1 = new Models.Diver_Compression
                {
                    //map data fra webform til diver_standard

                    of_type = D1checkOf_TypeDropDownList(),
                    direct = D1checkDirectDropDownList(),
                    airType = D1checkAirTypeDropDownList(),
                    nitroxType = D1NitroxPercentTextBox.Text,
                    repeatedAir = D1RepeatedCheckBox.Checked,
                    N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D1breathingGearTextBox.Text,
                    volume = D1volumeTextBox.Text,
                    pressure = D1pressureTextBox.Text,
                    plannedDepth = D1plannedDepthTextBox.Text,
                    plannedTime = D1plannedTimeTextBox.Text,
                    courseDive = D1courseDiveTextBox.Text,

                    leftSurface = D1LeftSurface.Text,
                    reachedBottom = D1reachedBottom.Text,
                    leftBottom_Depth = D1leftBottom_Depth.Text,
                    leftBottom_Time = D1leftBottom_Time.Text,
                    bottomTime = D1bottomTime.Text,
                    maxDepth = D1maxDepth.Text,
                    ELD = D1ELD.Text,
                    additionToBottomTime = D1additionToBottomTime.Text,
                    tableUsed_Meter = D1tableUsed_Meter.Text,
                    tableUsed_Minutes = D1tableUsed_Minutes.Text,
                    ascensionToFirstStop = D1ascensionToFirstStop.Text,
                    timeAtSafetyStop = D1timeAtSafetyStop.Text,
                    totalDivingTime = D1totalDivingTime.Text,
                    N2GroupAfterDive = D1N2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(D1isEverythingOKDropDownList),

                    left18m = D1left18m.Text,
                    left15m = D1left15m.Text,
                    left12m = D1left12m.Text,
                    time12_0m = D1time12_0m.Text,
                    reached15mInChamber = D1reached15mInChamber.Text,
                    o2_1 = D1o2_1.Text,
                    o2_2 = D1o2_2.Text,
                    o2_3 = D1o2_3.Text,
                    surfaceInterval = D1surfaceInterval.Text,
                    air_1 = D1air_1.Text,
                    air_2 = D1air_2.Text,
                    air_3 = D1air_3.Text,
                    left12mWithoutO2 = D1left12mWithoutO2.Text,
                    reachedSurface = D1reachedSurface.Text,
                    timeInChamber = D1timeInChamber.Text,
                    timeAtSea = D1timeAtSea.Text,
                    totalDecompression = D1totalDecompression.Text,
                };

                var diver2 = new Models.Diver_Compression
                {

                    of_type = D2checkOf_TypeDropDownList(),
                    direct = D2checkDirectDropDownList(),
                    airType = D2checkAirTypeDropDownList(),
                    nitroxType = D2NitroxPercentTextBox.Text,
                    repeatedAir = D2RepeatedCheckBox.Checked,
                    N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D2breathingGearTextBox.Text,
                    volume = D2volumeTextBox.Text,
                    pressure = D2pressureTextBox.Text,
                    plannedDepth = D2PlannedDepthTextBox.Text,
                    plannedTime = D2PlannedTimeTextBox.Text,
                    courseDive = D2CourseDiveTextBox.Text,

                    leftSurface = D2LeftSurface.Text,
                    reachedBottom = D2reachedBottom.Text,
                    leftBottom_Depth = D2leftBottom_Depth.Text,
                    leftBottom_Time = D2leftBottom_Time.Text,
                    bottomTime = D2bottomTime.Text,
                    maxDepth = D2maxDepth.Text,
                    ELD = D2ELD.Text,
                    additionToBottomTime = D2additionToBottomTime.Text,
                    tableUsed_Meter = D2tableUsed_Meter.Text,
                    tableUsed_Minutes = D2tableUsed_Minutes.Text,
                    ascensionToFirstStop = D2ascensionToFirstStop.Text,
                    timeAtSafetyStop = D2timeAtSafetyStop.Text,
                    totalDivingTime = D2totalDivingTime.Text,
                    N2GroupAfterDive = D2N2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(D2isEverythingOKDropDownList),

                    left18m = D2left18m.Text,
                    left15m = D2left15m.Text,
                    left12m = D2left12m.Text,
                    time12_0m = D2time12_0m.Text,
                    reached15mInChamber = D2reached15mInChamber.Text,
                    o2_1 = D2o2_1.Text,
                    o2_2 = D2o2_2.Text,
                    o2_3 = D2o2_3.Text,
                    surfaceInterval = D2surfaceInterval.Text,
                    air_1 = D2air_1.Text,
                    air_2 = D2air_2.Text,
                    air_3 = D2air_3.Text,
                    left12mWithoutO2 = D2left12mWithoutO2.Text,
                    reachedSurface = D2reachedSurface.Text,
                    timeInChamber = D2timeInChamber.Text,
                    timeAtSea = D2timeAtSea.Text,
                    totalDecompression = D2totalDecompression.Text,
                };


                var diver3 = new Models.Diver_Compression
                {

                    of_type = D3checkOf_TypeDropDownList(),
                    direct = D3checkDirectDropDownList(),
                    airType = D3checkAirTypeDropDownList(),
                    nitroxType = D3NitroxPercentTextBox.Text,
                    repeatedAir = D3RepeatedCheckBox.Checked,
                    N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D3breathingGearTextBox.Text,
                    volume = D3volumeTextBox.Text,
                    pressure = D3PressureTextBox.Text,
                    plannedDepth = D3PlannedDepthTextBox.Text,
                    plannedTime = D3PlannedTimeTextBox.Text,
                    courseDive = D3CourseDiveTextBox.Text,

                    leftSurface = D3LeftSurface.Text,
                    reachedBottom = D3reachedBottom.Text,
                    leftBottom_Depth = D3leftBottom_Depth.Text,
                    leftBottom_Time = D3leftBottom_Time.Text,
                    bottomTime = D3bottomTime.Text,
                    maxDepth = D3maxDepth.Text,
                    ELD = D3ELD.Text,
                    additionToBottomTime = D3additionToBottomTime.Text,
                    tableUsed_Meter = D3tableUsed_Meter.Text,
                    tableUsed_Minutes = D3tableUsed_Minutes.Text,
                    ascensionToFirstStop = D3ascensionToFirstStop.Text,
                    timeAtSafetyStop = D3timeAtSafetyStop.Text,
                    totalDivingTime = D3totalDivingTime.Text,
                    N2GroupAfterDive = D3N2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(D3isEverythingOKDropDownList),

                    left18m = D3left18m.Text,
                    left15m = D3left15m.Text,
                    left12m = D3left12m.Text,
                    time12_0m = D3time12_0m.Text,
                    reached15mInChamber = D3reached15mInChamber.Text,
                    o2_1 = D3o2_1.Text,
                    o2_2 = D3o2_2.Text,
                    o2_3 = D3o2_3.Text,
                    surfaceInterval = D3surfaceInterval.Text,
                    air_1 = D3air_1.Text,
                    air_2 = D3air_2.Text,
                    air_3 = D3air_3.Text,
                    left12mWithoutO2 = D3left12mWithoutO2.Text,
                    reachedSurface = D3reachedSurface.Text,
                    timeInChamber = D3timeInChamber.Text,
                    timeAtSea = D3timeAtSea.Text,
                    totalDecompression = D3totalDecompression.Text,
                };

                db.Diver_Compressions.Add(diver1);
                db.Diver_Compressions.Add(diver2);
                db.Diver_Compressions.Add(diver3);

            }

            db.SaveChanges();

        } */



        protected void BellAndBasket_CheckedChanged(object sender, EventArgs e)
        {
            if (DivingBasketCheckBox.Checked)
            {
                DivingBellCheckBox.Checked = false;
            }
            else
            {
                DivingBasketCheckBox.Checked = false;
            }

            if (DivingBasketCheckBox.Checked || DivingBellCheckBox.Checked)
            {
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = true;
            }
            else
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

            Watch watch = findWatch(button);

            //if matches one watch's stopbutton: that watch.calculateTime()
            if (watch != null)
            {
                watch.calculateTime();
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

        public void makeWatches()
        {
            Watch D1bottomTimeWatch = new Watch(D1leftBottom_TimeButton, D1LeftSurface, D1leftBottom_Time, D1bottomTime); 
            // Watch D1ascensionToFirstStopWatch = new Watch(D1ascensionToFirstStopButton, D1leftBottom_Time, D1ascensionToFirstStop, D1ascensionToFirstStop);
            Watch D1ascensionTimeWatch = new Watch(D1reachedSurfaceBtn, D1leftBottom_Time, D1reachedSurface, D1ascensionTime);
            Watch D1totalDivingTimeWatch = new Watch(D1reachedSurfaceBtn, D1LeftSurface, D1reachedSurface, D1totalDivingTime);

            
            watchList.Add(D1bottomTimeWatch);
            watchList.Add(D1totalDivingTimeWatch);
            watchList.Add(D1ascensionTimeWatch);

            Watch D2bottomTimeWatch = new Watch(D2leftBottom_TimeButton, D2LeftSurface, D2leftBottom_Time, D2bottomTime);
            // Watch D2ascensionToFirstStopWatch = new Watch(D2ascensionToFirstStopButton, D2leftBottom_Time, D2ascensionToFirstStop, D2ascensionToFirstStop);
            Watch D2ascensionTimeWatch = new Watch(D2reachedSurfaceBtn, D2leftBottom_Time, D2reachedSurface, D2ascensionTime);
            Watch D2totalDivingTimeWatch = new Watch(D2reachedSurfaceBtn, D2LeftSurface, D2reachedSurface, D2totalDivingTime);


            watchList.Add(D2bottomTimeWatch);
            watchList.Add(D2totalDivingTimeWatch);
            watchList.Add(D2ascensionTimeWatch);

            Watch D3bottomTimeWatch = new Watch(D3leftBottom_TimeButton, D3LeftSurface, D3leftBottom_Time, D3bottomTime);
            // Watch D3ascensionToFirstStopWatch = new Watch(D3ascensionToFirstStopButton, D3leftBottom_Time, D3ascensionToFirstStop, D3ascensionToFirstStop);
            Watch D3ascensionTimeWatch = new Watch(D3reachedSurfaceBtn, D3leftBottom_Time, D3reachedSurface, D3ascensionTime);
            Watch D3totalDivingTimeWatch = new Watch(D3reachedSurfaceBtn, D3LeftSurface, D3reachedSurface, D3totalDivingTime);


            watchList.Add(D3bottomTimeWatch);
            watchList.Add(D3totalDivingTimeWatch);
            watchList.Add(D3ascensionTimeWatch);

        }

        public Watch findWatch(Button stopButton)
        {
            Watch foundWatch = null;
            for (int i = 0; i < watchList.Count; i++)
            {
                if (stopButton == watchList[i].stopButton)
                {
                    foundWatch =  watchList[i];
                }
            }
            return foundWatch;                
        }
    }

    public class Watch
    {
        public DateTime startTime { get; set; }
        public DateTime stopTime { get; set; }
        public Button startButton { get; set; }
        public Button stopButton { get; set; }
        public TextBox startTextBox { get; set; }
        public TextBox stopTextBox { get; set; }
        public TextBox resultTextBox { get; set; }

        public Watch(TextBox _startTextBox, TextBox _stopTextBox, TextBox _resultTextBox)
        {
            startTextBox = _startTextBox;
            stopTextBox = _stopTextBox;
            resultTextBox = _resultTextBox;
        }

        public Watch(Button _stopButton, TextBox _startTextBox, TextBox _stopTextBox, TextBox _resultTextBox)
        {
            stopButton = _stopButton;
            startTextBox = _startTextBox;
            stopTextBox = _stopTextBox;
            resultTextBox = _resultTextBox;
        }

        public void calculateTime()
        {
            TimeSpan startTimeSpan, stopTimeSpan;

            if (startTextBox != null && stopTextBox != null)

            {
                try
                {
                    startTimeSpan = TimeSpan.Parse(startTextBox.Text);
                    stopTimeSpan = TimeSpan.Parse(stopTextBox.Text);
                    int mins = (int)stopTimeSpan.TotalMinutes + 1 - (int)startTimeSpan.TotalMinutes; //+1 here so it always rounds up
                    resultTextBox.Text = mins.ToString();
                }
                catch (FormatException)
                {
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Feil format. Kl som hh:mm')</SCRIPT>");

                }
                catch (OverflowException)
                {
                    
                }




            }
        }

    }
}