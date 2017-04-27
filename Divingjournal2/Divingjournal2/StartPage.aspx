<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="DivingApp.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Velkommen til Dykkerutdanningens applikasjon for oppretting og lagring av dykkejournaler<br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" href="Account/Login" Text="Ny bruker" Width="175px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" href="Account/Register" OnClick="Button2_Click" style="margin-left: 121px" Text="Eksisterende bruker" Width="175px" />
        <br />
        <br />
        <br />
        Har du spørsmål? Ta kontakt <a href="http://www.hib.no/dykkerutdanningen/">her</a>.
    
    </div>
    </form>
</body>
</html>
