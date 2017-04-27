<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Divingjournal2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Stopwatch Test
    </h2>
   
   
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
             <asp:Label ID="Label1" runat="server" Text="Panel not refreshed yet"></asp:Label>
            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
