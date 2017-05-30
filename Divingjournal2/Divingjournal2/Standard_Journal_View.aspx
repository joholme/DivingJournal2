<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Standard_Journal_View.aspx.cs" Inherits="Divingjournal2.Standard_Journal_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 2px; border-style: hidden; font-size: x-large; color: #FFFFFF; font-weight: bold; font-family: Arial; background-color: #336699;">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="769px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:TemplateField SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                           <asp:Image ID="Image2" runat="server" Height="116px" ImageUrl="~/images/hvl_logo.jpg" Width="133px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="journalType" HeaderText="journalType" SortExpression="journalType" />
                    <asp:BoundField DataField="courseNumber" HeaderText="courseNumber" SortExpression="courseNumber" />
                   
                    <asp:BoundField DataField="Id" HeaderText="Journal nr" ReadOnly="True" SortExpression="Id" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="994px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="courseNumber" HeaderText="courseNumber" SortExpression="courseNumber" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    <asp:BoundField DataField="divingSpot" HeaderText="divingSpot" SortExpression="divingSpot" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />

            <br />
            DIREKTE DYKK<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="991px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="divingchief" HeaderText="divingchief" SortExpression="divingchief" />
                    <asp:BoundField DataField="diver_1" HeaderText="diver_1" SortExpression="diver_1" />
                    <asp:BoundField DataField="lineman_1" HeaderText="lineman_1" SortExpression="lineman_1" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="87%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="divingleader_teacher" HeaderText="divingleader_teacher" SortExpression="divingleader_teacher" />
                    <asp:BoundField DataField="diver_2" HeaderText="diver_2" SortExpression="diver_2" />
                    <asp:BoundField DataField="lineman_2" HeaderText="lineman_2" SortExpression="lineman_2" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="992px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="divingleader_student" HeaderText="divingleader_student" SortExpression="divingleader_student" />
                    <asp:BoundField DataField="standby" HeaderText="standby" SortExpression="standby" />
                    <asp:BoundField DataField="helpman" HeaderText="helpman" SortExpression="helpman" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="992px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="helpman_assisting" HeaderText="helpman_assisting" SortExpression="helpman_assisting" />
                    <asp:BoundField DataField="others" HeaderText="others" SortExpression="others" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            Luftsystem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Oksygen til kammer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nødgass<br />
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="971px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="airsystem_main" HeaderText="airsystem_main" SortExpression="airsystem_main" />
                    <asp:BoundField DataField="airsystem_secondary" HeaderText="airsystem_secondary" SortExpression="airsystem_secondary" />
                    <asp:BoundField DataField="oxygenForChamber_inUse" HeaderText="oxygenForChamber_inUse" SortExpression="oxygenForChamber_inUse" />
                    <asp:BoundField DataField="oxygenForChamber_readyForUse" HeaderText="oxygenForChamber_readyForUse" SortExpression="oxygenForChamber_readyForUse" />
                    <asp:BoundField DataField="emergencyGas_divingBell" HeaderText="emergencyGas_divingBell" SortExpression="emergencyGas_divingBell" />
                    <asp:BoundField DataField="emergencyGas_divingBasket" HeaderText="emergencyGas_divingBasket" SortExpression="emergencyGas_divingBasket" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Journal_Cache] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Diver_1" ForeColor="#333333" GridLines="None" Width="364px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="Journal_CacheID" HeaderText="Journal_CacheID" SortExpression="Journal_CacheID" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="transport" HeaderText="transport" SortExpression="transport" />
                                <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" />
                                <asp:BoundField DataField="direct" HeaderText="direct" SortExpression="direct" />
                                <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" />
                                <asp:BoundField DataField="nitroxType" HeaderText="nitroxType" SortExpression="nitroxType" />
                                <asp:BoundField DataField="repeatedAir" HeaderText="repeatedAir" SortExpression="repeatedAir" />
                                <asp:BoundField DataField="breathingGear" HeaderText="breathingGear" SortExpression="breathingGear" />
                                <asp:BoundField DataField="volume" HeaderText="volume" SortExpression="volume" />
                                <asp:BoundField DataField="pressure" HeaderText="pressure" SortExpression="pressure" />
                                <asp:BoundField DataField="plannedDepth" HeaderText="plannedDepth" SortExpression="plannedDepth" />
                                <asp:BoundField DataField="plannedTime" HeaderText="plannedTime" SortExpression="plannedTime" />
                                <asp:BoundField DataField="courseDive" HeaderText="courseDive" SortExpression="courseDive" />
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" />
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" />
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" />
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" />
                                <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" />
                                <asp:BoundField DataField="test" HeaderText="test" SortExpression="test" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Diver_2" ForeColor="#333333" GridLines="None" Width="367px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="Journal_CacheID" HeaderText="Journal_CacheID" SortExpression="Journal_CacheID" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="transport" HeaderText="transport" SortExpression="transport" />
                                <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" />
                                <asp:BoundField DataField="direct" HeaderText="direct" SortExpression="direct" />
                                <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" />
                                <asp:BoundField DataField="nitroxType" HeaderText="nitroxType" SortExpression="nitroxType" />
                                <asp:BoundField DataField="repeatedAir" HeaderText="repeatedAir" SortExpression="repeatedAir" />
                                <asp:BoundField DataField="breathingGear" HeaderText="breathingGear" SortExpression="breathingGear" />
                                <asp:BoundField DataField="volume" HeaderText="volume" SortExpression="volume" />
                                <asp:BoundField DataField="pressure" HeaderText="pressure" SortExpression="pressure" />
                                <asp:BoundField DataField="plannedDepth" HeaderText="plannedDepth" SortExpression="plannedDepth" />
                                <asp:BoundField DataField="plannedTime" HeaderText="plannedTime" SortExpression="plannedTime" />
                                <asp:BoundField DataField="courseDive" HeaderText="courseDive" SortExpression="courseDive" />
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" />
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" />
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" />
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" />
                                <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" />
                                <asp:BoundField DataField="test" HeaderText="test" SortExpression="test" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Diver_Standby" ForeColor="#333333" GridLines="None" Width="387px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="Journal_CacheID" HeaderText="Journal_CacheID" SortExpression="Journal_CacheID" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="transport" HeaderText="transport" SortExpression="transport" />
                                <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" />
                                <asp:BoundField DataField="direct" HeaderText="direct" SortExpression="direct" />
                                <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" />
                                <asp:BoundField DataField="nitroxType" HeaderText="nitroxType" SortExpression="nitroxType" />
                                <asp:BoundField DataField="repeatedAir" HeaderText="repeatedAir" SortExpression="repeatedAir" />
                                <asp:BoundField DataField="breathingGear" HeaderText="breathingGear" SortExpression="breathingGear" />
                                <asp:BoundField DataField="volume" HeaderText="volume" SortExpression="volume" />
                                <asp:BoundField DataField="pressure" HeaderText="pressure" SortExpression="pressure" />
                                <asp:BoundField DataField="plannedDepth" HeaderText="plannedDepth" SortExpression="plannedDepth" />
                                <asp:BoundField DataField="plannedTime" HeaderText="plannedTime" SortExpression="plannedTime" />
                                <asp:BoundField DataField="courseDive" HeaderText="courseDive" SortExpression="courseDive" />
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" />
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" />
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" />
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" />
                                <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" />
                                <asp:BoundField DataField="test" HeaderText="test" SortExpression="test" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="Diver_1" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard_Cache] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Diver_2" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard_Cache] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Journal_CacheID" HeaderText="Journal_CacheID" SortExpression="Journal_CacheID" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="transport" HeaderText="transport" SortExpression="transport" />
                    <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" />
                    <asp:BoundField DataField="direct" HeaderText="direct" SortExpression="direct" />
                    <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" />
                    <asp:BoundField DataField="nitroxType" HeaderText="nitroxType" SortExpression="nitroxType" />
                    <asp:BoundField DataField="repeatedAir" HeaderText="repeatedAir" SortExpression="repeatedAir" />
                    <asp:BoundField DataField="breathingGear" HeaderText="breathingGear" SortExpression="breathingGear" />
                    <asp:BoundField DataField="volume" HeaderText="volume" SortExpression="volume" />
                    <asp:BoundField DataField="pressure" HeaderText="pressure" SortExpression="pressure" />
                    <asp:BoundField DataField="plannedDepth" HeaderText="plannedDepth" SortExpression="plannedDepth" />
                    <asp:BoundField DataField="plannedTime" HeaderText="plannedTime" SortExpression="plannedTime" />
                    <asp:BoundField DataField="courseDive" HeaderText="courseDive" SortExpression="courseDive" />
                    <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" />
                    <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" />
                    <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" />
                    <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" />
                    <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" />
                    <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" />
                    <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" />
                    <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" />
                    <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" />
                    <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" />
                    <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" />
                    <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" />
                    <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" />
                    <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" />
                    <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" />
                    <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" />
                    <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" />
                    <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" />
                    <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" />
                    <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" />
                    <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" />
                    <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" />
                    <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" />
                    <asp:BoundField DataField="test" HeaderText="test" SortExpression="test" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Diver_Standby" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard_Cache] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="981px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                    <asp:BoundField DataField="changelog" HeaderText="changelog" SortExpression="changelog" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
        </div>
        <asp:Button ID="PDF_Button" runat="server" Text="Åpne i PDF" />
    </form>
</body>
</html>
