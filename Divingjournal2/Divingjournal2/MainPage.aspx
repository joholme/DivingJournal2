<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Divingjournal2.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Ny" Width="200px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Pågående" Width="200px" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Søk" Width="200px" />
    
        <br />
        <br />
        <asp:Button ID="btn_LogOut" runat="server" Text="Logg ut" Width="200px" />
    
        <br />
        <br />
        <br />
    
    </form>
</body>
</html>
