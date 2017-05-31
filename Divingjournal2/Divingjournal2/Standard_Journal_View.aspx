<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Standard_Journal_View.aspx.cs" Inherits="Divingjournal2.Standard_Journal_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            width: 113px;
        }
        .auto-style7 {
            width: 169%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div style="padding: 2px; border-style: hidden; font-size: large; color: #FFFFFF; font-weight: bold; font-family: Arial; background-color: #336699; text-align:center">
            
            <table style="width:100%;" id="MainTable">
                <tr>
                    <td colspan="1">
                        <img alt="" src="images/hvl_logo.jpg" /></td>
                    <td>
            <h1 style="text-align: center;">
                        HVL</h1>

                        <table id="SubjectDateLocationTable" style="width:100%;">
                            <tr>
                                <td>
            <asp:GridView ID="SubjectGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="subject" HeaderText="Fag" SortExpression="subject" />
                   
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
                        </td>
                                </tr>
                            <tr>
                        
                                <td>
            <asp:GridView ID="DateLocationGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="date" HeaderText="Dato" SortExpression="date" />
                    <asp:BoundField DataField="location" HeaderText="Sted" SortExpression="location" />
                    <asp:BoundField DataField="divingSpot" HeaderText="Dykkepost" SortExpression="divingSpot" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="33%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                               </td>
                            </tr>
                        </table>
                    </td>
                    
                
                    
                    
                    <td>
                        <h1 style="text-align: center;">
                         DYKKEJOURNAL</h1>
            <asp:GridView ID="JournalIDGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="courseNumber" HeaderText="Kurs nr" SortExpression="courseNumber" />
                   
                    <asp:BoundField DataField="Id" HeaderText="Journal nr" ReadOnly="True" SortExpression="Id" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

            <asp:GridView ID="OtherGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="other" HeaderText="Annet" SortExpression="other" />
                   
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

                    </td>
                    
                </tr>
                <tr>
                    <td id="JournalTypeGridView" style="text-align:left; padding-left:10px">STANDARDDYKK</td>
                    
                </tr>
                <tr>
                    <td colspan="4" style="width:100%;">

                        <table id="DiverCrewTable" style="width:50%;">
                            <tr>
                                <td style="width:33%">

            <asp:GridView ID="DivingCrewGridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="divingchief" HeaderText="Dykkesjef (avdelingsleder)" SortExpression="divingchief" />
                   
                </Columns>
                <EditRowStyle/>
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

                                </td>
                                <td style="width:33%">

            <asp:GridView ID="DivingCrewGridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="diver_1" HeaderText="Dykker 1" SortExpression="diver_1" />
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

                                </td>
                                <td style="width:33%">

            <asp:GridView ID="DivingCrewGridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="lineman_1" HeaderText="Linemann 1" SortExpression="lineman_1" />
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

                                </td>
                            </tr>
                            <tr>
                                <td style="width:33%">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="divingleader_teacher" HeaderText="Dykkesjef (instruktør)" SortExpression="divingleader_teacher" />
                   
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

                                </td>
                                <td  style="width:33%">

            <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="diver_2" HeaderText="Dykker 2" SortExpression="diver_2" />
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

                                </td>
                                <td style="width:33%">

            <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="lineman_2" HeaderText="Linemann 2" SortExpression="lineman_2" />
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

                                </td>
                            </tr>
                            <tr>
                                <td style="width:33%">

            <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="divingleader_student" HeaderText="Dykkeleder (student)" SortExpression="divingleader_student" />
                   
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

                                </td>
                                <td  style="width:33%">

            <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="standby" HeaderText="Standby-/beredskapsdykker" SortExpression="standby" />
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

                                </td>
                                <td style="width:33%">

            <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="helpman" HeaderText="Hjelpemann" SortExpression="helpman" />
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

                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">

            <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="others" HeaderText="Andre" SortExpression="others" />
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

                                </td>
                                <td style="width:33%">

            <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="helpman_assisting" HeaderText="Assisterende hjelpemann" SortExpression="helpman_assisting" />
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

                                </td>
                            </tr>

                        </table>

                               </td>
                    
                </tr>
                <tr>
                    <td>
                       
                    </td>

                    <td>

                    </td>

                    <td style="width:33%">

                    </td>
                </tr>
               
                <tr>
                     <td>
                         <table style="width: 100%;">
                             <tr>
                                 <td>
                        <div>Luftsystem</div>
            <asp:GridView ID="GridView20" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="airsystem_main" HeaderText="Hovedforsyning" SortExpression="airsystem_main" />
                    <asp:BoundField DataField="airsystem_secondary" HeaderText="Sekundær-" SortExpression="airsystem_secondary" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
                         </td>
                                 
                             </tr>
                         </table>
                               </td>
                    <td>
                        <div style="text-align:center">Oksygen til kammer</div>
            <asp:GridView ID="GridView21" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="oxygenForChamber_inUse" HeaderText="I bruk" SortExpression="oxygenForChamber_inUse" />
                    <asp:BoundField DataField="oxygenForChamber_readyForUse" HeaderText="Klar til bruk" SortExpression="oxygenForChamber_readyForUse" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                               </td>
                    <td style="width:20%">
                        <div>Nødgass</div>
            <asp:GridView ID="GridView22" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="emergencyGas_divingBell" HeaderText="Våtklokke" SortExpression="emergencyGas_divingBell" />
                    <asp:BoundField DataField="emergencyGas_divingBasket" HeaderText="Dykkekurv" SortExpression="emergencyGas_divingBasket" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                               </td>
                    
                </tr>
                <tr>
                    <td>
                        <div>Dykker 1<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="direct" HeaderText="Direkte" SortExpression="direct" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Fields>
                            </asp:DetailsView>
                            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%">
                            <Fields>
                                <asp:BoundField DataField="nitroxType" HeaderText="Nitrox %" SortExpression="nitroxType" />
                                <asp:BoundField DataField="repeatedAir" HeaderText="Gjentatt" SortExpression="repeatedAir" />
                            </Fields>
                            </asp:DetailsView>
                        </div>
                        <asp:GridView ID="GridView23" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="breathingGear" HeaderText="Pusteutstyr" SortExpression="breathingGear" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                        <asp:GridView ID="GridView24" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="volume" HeaderText="Volum" SortExpression="volume" />
                   
                    <asp:BoundField DataField="pressure" HeaderText="Trykk" SortExpression="pressure" />
                    <asp:BoundField DataField="plannedDepth" HeaderText="Plan dybde" SortExpression="plannedDepth" />
                    <asp:BoundField DataField="plannedTime" HeaderText="Plan tid" SortExpression="plannedTime" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="12.5%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                        <asp:GridView ID="GridView25" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="courseDive" HeaderText="Kursdykk nr./Formål" SortExpression="courseDive" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                    </td>
                    <td> <div>Dykker 2<asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_2" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="direct" HeaderText="Direkte" SortExpression="direct" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Fields>
                            </asp:DetailsView>
                            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%">
                            <Fields>
                                <asp:BoundField DataField="nitroxType" HeaderText="Nitrox %" SortExpression="nitroxType" />
                                <asp:BoundField DataField="repeatedAir" HeaderText="Gjentatt" SortExpression="repeatedAir" />
                            </Fields>
                            </asp:DetailsView>
                        </div>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="breathingGear" HeaderText="Pusteutstyr" SortExpression="breathingGear" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="volume" HeaderText="Volum" SortExpression="volume" />
                   
                    <asp:BoundField DataField="pressure" HeaderText="Trykk" SortExpression="pressure" />
                    <asp:BoundField DataField="plannedDepth" HeaderText="Plan dybde" SortExpression="plannedDepth" />
                    <asp:BoundField DataField="plannedTime" HeaderText="Plan tid" SortExpression="plannedTime" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="12.5%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="courseDive" HeaderText="Kursdykk nr./Formål" SortExpression="courseDive" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView></td>
                    <td style="width:33%"> <div>Standby<asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="direct" HeaderText="Direkte" SortExpression="direct" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" ShowHeader="False" >
                                <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Fields>
                            </asp:DetailsView>
                            <asp:DetailsView ID="DetailsView6" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%">
                            <Fields>
                                <asp:BoundField DataField="nitroxType" HeaderText="Nitrox %" SortExpression="nitroxType" />
                                <asp:BoundField DataField="repeatedAir" HeaderText="Gjentatt" SortExpression="repeatedAir" />
                            </Fields>
                            </asp:DetailsView>
                        </div>
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="breathingGear" HeaderText="Pusteutstyr" SortExpression="breathingGear" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="603px" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="volume" HeaderText="Volum" SortExpression="volume" />
                   
                    <asp:BoundField DataField="pressure" HeaderText="Trykk" SortExpression="pressure" />
                    <asp:BoundField DataField="plannedDepth" HeaderText="Plan dybde" SortExpression="plannedDepth" />
                    <asp:BoundField DataField="plannedTime" HeaderText="Plan tid" SortExpression="plannedTime" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="12.5%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Diver_1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="courseDive" HeaderText="Kursdykk nr./Formål" SortExpression="courseDive" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td><div style="font-size:large; text-align:center">Dykker 1</div></td>
                    <td><div style="font-size:large; text-align:center">Dykker 2</div></td>
                    <td><div style="font-size:large; text-align:center">Standby</div></td>
                    <td>

                        &nbsp;</td>
                    <td>

                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td><asp:DetailsView ID="Diver1DetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="50%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="Forlot overflaten" SortExpression="leftSurface" >
                                </asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="På bunn" SortExpression="reachedBottom" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="Forlot bunn (dybde)" SortExpression="leftBottom_Depth" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="Forlot bunn (tid)" SortExpression="leftBottom_Time" />
                                <asp:BoundField DataField="bottomTime" HeaderText="Bunntid" SortExpression="bottomTime" />
                                <asp:BoundField DataField="maxDepth" HeaderText="Maks dybde" SortExpression="maxDepth" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="Tillegg til bunntid" SortExpression="additionToBottomTime" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="Tabell brukt (meter)" SortExpression="tableUsed_Meter" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="Tabell brukt (minutt)" SortExpression="tableUsed_Minutes" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="Oppstigning til 1. stopp" SortExpression="ascensionToFirstStop" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="Tid på sikkerhetsstopp" SortExpression="timeAtSafetyStop" />
                                <asp:BoundField DataField="arrived9m" HeaderText="Ankom 9m stopp" SortExpression="arrived9m" />
                                <asp:BoundField DataField="left9m" HeaderText="Forlot 9m stopp" SortExpression="left9m" />
                                <asp:BoundField DataField="arrived6m" HeaderText="Ankom 6m stopp" SortExpression="arrived6m" />
                                <asp:BoundField DataField="left6m" HeaderText="Forlot 6m stopp" SortExpression="left6m" />
                                <asp:BoundField DataField="arrived3m" HeaderText="Ankom 3m stopp" SortExpression="arrived3m" />
                                <asp:BoundField DataField="left3m" HeaderText="Forlot 3m stopp" SortExpression="left3m" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="På overflaten" SortExpression="reachedSurface" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="Oppstigningstid" SortExpression="ascensionTime" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="Dykketid" SortExpression="totalDivingTime" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2-gruppe etter dykk" SortExpression="N2GroupAfterDive" />
                                <asp:BoundField DataField="isEverythingOK" HeaderText="Alt vel etter dykk?" SortExpression="isEverythingOK" />
                            </Fields>
                            </asp:DetailsView>
                            </td>
                    <td><asp:DetailsView ID="Diver1DetailsView0" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" ShowHeader="False" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" ShowHeader="False" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" ShowHeader="False" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" ShowHeader="False" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" ShowHeader="False" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" ShowHeader="False" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" ShowHeader="False" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" ShowHeader="False" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" ShowHeader="False" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" ShowHeader="False" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" ShowHeader="False" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" ShowHeader="False" />
                                <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" ShowHeader="False" />
                            </Fields>
                            </asp:DetailsView>
                            </td>
                    <td style="width:100px"><asp:DetailsView ID="Diver2DetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_2" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" ShowHeader="False" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" ShowHeader="False" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" ShowHeader="False" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" ShowHeader="False" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" ShowHeader="False" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" ShowHeader="False" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" ShowHeader="False" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" ShowHeader="False" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" ShowHeader="False" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" ShowHeader="False" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" ShowHeader="False" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" ShowHeader="False" />
                                <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" ShowHeader="False" />
                            </Fields>
                            </asp:DetailsView>
                            </td>
                    <td><asp:DetailsView ID="StandbyDetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_Standby" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" ShowHeader="False" >
                                </asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" ShowHeader="False" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" ShowHeader="False" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" ShowHeader="False" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" ShowHeader="False" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" ShowHeader="False" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" ShowHeader="False" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" ShowHeader="False" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" ShowHeader="False" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" ShowHeader="False" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" ShowHeader="False" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" ShowHeader="False" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" ShowHeader="False" />
                                <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" ShowHeader="False" />
                            </Fields>
                            </asp:DetailsView>
                            </td>
                    <td>

                        <asp:GridView ID="GridView26" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="notes" HeaderText="Merknader" SortExpression="notes" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                    </td>
                    <td>

                        <asp:GridView ID="GridView27" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="changelog" HeaderText="Loggførte endringer" SortExpression="changelog" />
                   
                </Columns>
                <EditRowStyle Width="50px" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Width="50%" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

                    </td>
                    
                </tr>
                
            </table>


            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Journal] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:SqlDataSource ID="Diver_1" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Diver_2" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Diver_Standby" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <asp:Button ID="PDF_Button" runat="server" Text="Åpne i PDF" />
    </form>
</body>
</html>
