<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="My_Journals.aspx.cs" Inherits="Divingjournal2.My_Journals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>eheh</p>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="current_user_journals">
            <Columns>
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:TemplateField HeaderText="journal_name" SortExpression="journal_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("journal_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("journal_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="journal_name" DataNavigateUrlFormatString="new_journal?journal_name={0}" Text="åpne" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="current_user_journals" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT [date], [journal_name] FROM [Journal_Cache] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:Parameter DefaultValue="orjan" Name="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Navn på journal:"></asp:Label>
        <asp:TextBox ID="journal_name_textbox" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hent Journal" />
    </form>
</body>
</html>