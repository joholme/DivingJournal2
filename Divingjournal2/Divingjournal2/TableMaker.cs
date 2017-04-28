using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using DiverLibrary;

namespace Divingjournal2
{

    public class TableMaker
    {
        int FONTSIZE = 18;
        int PADDINGSIZE = 4;

        public TableMaker()
        {

        }

        public void addTable(Panel panel, int numberOfRows, int numberOfColumns)
        {
            Table table = new Table();

            for (int i = 0; i < numberOfRows; i++)
            {
                table.Rows.Add(newRow(numberOfColumns));
            }

            table.CellPadding = PADDINGSIZE;



            panel.Controls.Add(table);
        }

        public TableRow newRow(int numberOfCells)
        {
            TableRow row = new TableRow();

            for (int i = 0; i < numberOfCells; i++)
            {
                row.Cells.Add(newCell());
            }

            return row;
        }

        public TableCell newCell()
        {
            TableCell cell = new TableCell();
            applyMyStyle(cell);



            applyMyStyle(cell);
            TextBox textbox = new TextBox();
            cell.Controls.Add(textbox);



            return cell;
        }

        public void applyMyStyle(WebControl webcontrol)
        {
            TableItemStyle itemstyle = new TableItemStyle();
            itemstyle.BorderWidth = 1;
            itemstyle.Font.Size = FONTSIZE;
            itemstyle.BorderColor = System.Drawing.Color.DarkBlue;

            webcontrol.ApplyStyle(itemstyle);

        }

        /* This method needs another parameter for deciding
         * where the text written in the textbox should go. */
        public TableRow makeRowWithTextbox(string text)
        {
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();

            applyMyStyle(cell1);
            applyMyStyle(cell2);
            cell1.Text = text;
            cell2.Controls.Add(new TextBox());

            row.Controls.Add(cell1);
            row.Controls.Add(cell2);

            return row;
        }
        //THIS METHOD GATHERS ALL TABLE-MAKING METHODS TOGETHER AND SENDS THEM TO PANEL
        public void journalTableMaster(Panel panel)
        {


            //**FIRST, TABLE COMMON FOR ALL DIVES**
            panel.Controls.Add(tableFirstInfo());
            



        }

        /*For these variables (3 rows):
         * - JournalID
         * - CourseNumber
         * - Subject
         */
        public Table tableFirstInfo()
        {
            
            Table table = new Table();

            TableRow IDRow = new TableRow();
            TableRow courseRow = new TableRow();
            TableRow subjectRow = new TableRow();

            TableCell IDRowCell1 = new TableCell();
            TableCell IDRowCell2 = new TableCell();
            applyMyStyle(IDRowCell1);
            applyMyStyle(IDRowCell2);

            TableCell courseRowCell1 = new TableCell();
            TableCell courseRowCell2 = new TableCell();
            applyMyStyle(courseRowCell1);
            applyMyStyle(courseRowCell2);

            TableCell subjectRowCell1 = new TableCell();
            TableCell subjectRowCell2 = new TableCell();
            applyMyStyle(subjectRowCell1);
            applyMyStyle(subjectRowCell1);

            IDRowCell1.Text = "Journal nr";
            IDRowCell2.Controls.Add(new TextBox());

            courseRowCell1.Text = "Kurs nr";
            courseRowCell2.Controls.Add(new TextBox());

            subjectRowCell1.Text = "Fag";
            subjectRowCell2.Controls.Add(new DropDownList());

            IDRow.Cells.Add(IDRowCell1);
            IDRow.Cells.Add(IDRowCell2);

            courseRow.Cells.Add(courseRowCell1);
            courseRow.Cells.Add(courseRowCell2);

            subjectRow.Cells.Add(subjectRowCell1);
            subjectRow.Cells.Add(subjectRowCell2);


            table.Rows.Add(makeRowWithTextbox("Journal nr"));
            table.Rows.Add(courseRow);
            table.Rows.Add(subjectRow);

            
            return table;
        }

        /*For these variables (4 rows):
         * - Date
         * - Location
         * - Divingspot
         * - Other
         */
        public Table tableSecondInfo()
        {

            Table table = new Table();
            return table;
        }

        /*For these variables (11 rows):
         * - Diving Crew
         */
        public Table tableCrewInfo()
        {

            Table table = new Table();
            return table;
        }

        
    }

    
}