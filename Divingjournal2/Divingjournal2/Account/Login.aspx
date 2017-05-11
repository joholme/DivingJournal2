<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Divingjournal2.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Logg inn her</div>
        Username&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_UserName" runat="server"></asp:TextBox>
        <br />
        Password&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txt_Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_Submit" runat="server" Text="Submit" />
    </form>
</body>
</html>
