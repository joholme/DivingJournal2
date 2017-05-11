<%@ Page Title="Test Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestWebForm_stopwatch.aspx.cs" Inherits="Divingjournal2.TestWebForm_stopwatch" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  

    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>1</asp:TableCell>
            <asp:TableCell>2</asp:TableCell>
            <asp:TableCell>3</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <h2 id="timerLabel1">00:00:00</h2>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start1" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset1" />
            </asp:TableCell>
            <asp:TableCell>
                <h2 id="timerLabel2">00:00:00</h2>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start2" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset2" />
            </asp:TableCell>
            <asp:TableCell>
                <h2 id="timerLabel3">00:00:00</h2>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start3" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset3" />
            </asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
        

  <script src="Stopwatch3.js"></script>



    

    

</asp:Content>