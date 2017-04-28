<%@ Page Title="Ny Journal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New_Journal.aspx.cs" Inherits="Divingjournal.New_Journal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hvl_logo.jpg" />
            <asp:Button ID="largeButton" runat="server" Height="78px" Text="Button" Width="347px" OnClick="largeButton_Click" />
            <h2>
                Dykkerjournal-tabell
                </h2>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
           
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large"></asp:Label>
    <asp:Timer ID="tm1" Interval="1000" runat="server" ontick="tm1_Tick" />
  </ContentTemplate>
  <Triggers>
    <asp:AsyncPostBackTrigger ControlID="tm1" EventName="Tick" />
  </Triggers>
</asp:UpdatePanel>

                <asp:Table ID="Table1" runat="server" BorderStyle="Solid" BackColor="White" BorderColor="Blue" CellPadding="2" CellSpacing="1" Font-Size="X-Large" GridLines="Both" HorizontalAlign="Left">
                    <asp:TableRow HorizontalAlign="Left" ID="daterow">
                        <asp:TableCell>
                            Dato
                            
                        </asp:TableCell>     
                        <asp:TableCell ID="date" runat="server">
                            
                            <asp:TextBox ID="dateTextbox" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="buttonDate" ImageUrl="~/images/calendar-128.png" Width="30" runat="server" />
                        </asp:TableCell>
                             
                    </asp:TableRow>
                         <asp:TableRow ID="placerow">
                              <asp:TableCell>Sted</asp:TableCell>
                              <asp:TableCell runat="server">
                                  <asp:TextBox ID="placeTextbox" runat="server"></asp:TextBox>
                              </asp:TableCell>
                         </asp:TableRow>
                    <asp:TableRow runat="server" ID="divingspotrow">
                        <asp:TableCell runat="server">Dykkepost</asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="divingspotTextbox" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="subjectrow">
                        <asp:TableCell runat="server">Fag</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:DropDownList ID="subjectDropdown"  Width="200" runat="server">

                                <asp:ListItem Text="DYK600" Value="0"></asp:ListItem>
                                <asp:ListItem Text="DYK601" Selected="True" Value="0"></asp:ListItem>

                            </asp:DropDownList>

                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            

    <asp:Table ID="Table2" runat="server" BorderStyle="Solid" BackColor="White" BorderColor="Blue" CellPadding="2" CellSpacing="1" Font-Size="X-Large" GridLines="Both" HorizontalAlign="Left">
        <asp:TableRow ID="divingchiefrow" runat="server">
            <asp:TableCell runat="server">Dykkesjef</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="divingchiefTextbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="divingleader_instructorRow" runat="server">
            <asp:TableCell runat="server">Dykkeleder (instruktør)</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="divingleader_instructorTextbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="divingleader_studentRow" runat="server">
            <asp:TableCell runat="server">Dykkeleder (student)</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="divingleader_studentTextbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="diver1Row" runat="server">
            <asp:TableCell runat="server">Dykker 1</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="diver1Textbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="diver2Row" runat="server">
            <asp:TableCell runat="server">Dykker 2</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="diver2Textbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="standbyRow" runat="server">
            <asp:TableCell runat="server">Standby-/beredskapsdykker</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="standbyTextbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="helpmanRow" runat="server">
            <asp:TableCell runat="server">Hjelpemann</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="helpmanTextbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="helpman_assistantRow" runat="server">
            <asp:TableCell runat="server">Assisterende hjelpemann</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="helpman_assistantTextbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="lineman1Row" runat="server">
            <asp:TableCell runat="server">Linemann 1</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="lineman1Textbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="lineman2Row" runat="server">
            <asp:TableCell runat="server">Linemann 2</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="lineman2Textbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="othersRow" runat="server">
            <asp:TableCell runat="server">Andre</asp:TableCell>
            <asp:TableCell runat="server"><asp:TextBox ID="othersTextbox" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
         </asp:Table>
   
   
    </asp:Content>

