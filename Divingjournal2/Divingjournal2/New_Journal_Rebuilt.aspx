<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New_Journal_Rebuilt.aspx.cs" Inherits="Divingjournal2.New_Journal_Rebuilt" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/bootstrap.css" rel="stylesheet" />

    <asp:UpdatePanel runat="server">
        <ContentTemplate>

        
        <div class="container">

            <div class="jumbotron">
                <asp:Label ID="HeaderLabel" runat="server"></asp:Label>
                <h3 class="h3" id="h1Title"></h3>

                <asp:Button CssClass="btn-lg btn-primary btn" runat="server" id="testbtn" Text="Standarddykk" Width="33%" Enabled="false" />
                <asp:Button CssClass="btn-lg btn-primary btn" runat="server" id="Button1" Text="Overflatedekompresjon" Width="33%" />
                <asp:Button CssClass="btn-lg btn-primary btn" runat="server" id="Button2" Text="Trykkammer" Width="33%" />

            </div>

            <div class="col-md-6" id="firstInfoDiv">
                <asp:Table ID="Table1" runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dato</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Sted</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykkepost</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykker 1</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:CheckBox runat="server" Text="Standby" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                       <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykker 2</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:CheckBox runat="server" Text="Standby" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykker 3</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:CheckBox runat="server" Text="Standby" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                    </asp:TableRow>
                </asp:Table>
                
            </div>

            <div class="col-md-4" id="secondInfoDiv">
                <asp:Table ID="Table2" runat="server" CssClass="table">

                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Journal nr</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Kurs nr</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="SubjectRow" runat="server">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Fag</div>
                        </asp:TableCell>
                        <asp:TableCell ID="SubjectCell" runat="server">
                            <div class="dropdown form-control-static">
                                <asp:DropDownList ID="SubjectDropDownList" runat="server">
                                    <asp:ListItem>DYK600 - Sikkerhetsopplæring i dykking</asp:ListItem>

                                    <asp:ListItem>DYK601 - Fagopplæring i anlegg</asp:ListItem>

                                    <asp:ListItem>DYK601 - Fagopplæring i rørlegging</asp:ListItem>

                                    <asp:ListItem>DYK601 - Fagopplæring i berging</asp:ListItem>

                                    <asp:ListItem>RED110 - Redningsdykking</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow runat="server">
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-center">Luftsystem</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Hovedforsyning</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Sekundær-</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-center">Oksygen til kammer</div>
                        </asp:TableCell>
                        </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">I bruk</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Klar til bruk</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="checkbox-inline form-control-static text-info">
                                <asp:CheckBox ID="DivingBellCheckBox" runat="server" Text="Våtklokke" AutoPostBack="true" OnCheckedChanged="BellAndBasket_CheckedChanged"/>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div class="checkbox-inline form-control-static text-info">
                                <asp:CheckBox ID="DivingBasketCheckBox" runat="server" Text="Dykkekurv" AutoPostBack="true" OnCheckedChanged="BellAndBasket_CheckedChanged"/>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="EmergencyGasRow1" Visible="false">
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-center">Nødgass</div>
                        </asp:TableCell>
                        </asp:TableRow>
                    <asp:TableRow ID="EmergencyGasRow2" Visible="false">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Våtklokke</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="EmergencyGasRow3" Visible="false">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykkekurv</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                </asp:Table>
               
            </div>

            <div class="col-md-4" id="diver1Div">
                 <asp:Table runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <div class="h4 form-control-static text-center text-primary">Dykker 1</div>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="DropDownList7" runat="server">
                                    <asp:ListItem Value="0">OF Tungt</asp:ListItem>
                                    <asp:ListItem Value="1">OF Lett</asp:ListItem>
                                    <asp:ListItem Value="2">Scuba</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="DropDownList8" runat="server">
                                    <asp:ListItem Value="0">Direkte</asp:ListItem>
                                    <asp:ListItem Value="1">D. Stopp</asp:ListItem>
                                    <asp:ListItem Value="2">OD - O2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D1AirTypeDropDownList" OnSelectedIndexChanged="D1AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="0">Luft</asp:ListItem>
                                    <asp:ListItem Value="1">Nitrox</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="checkbox-inline text-info form-control-static">
                                <asp:CheckBox ID="CheckBox2" Text="Gjentatt" runat="server" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                          <asp:TableCell ID="TableCell5" runat="server">
                            <div class="form-control-static text-info">N2-gruppe før dykk</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell ID="D1NitroxPercentCell1" runat="server" Enabled="false">
                            <div class="form-control-static text-right text-info">Nitrox %</div>
                        </asp:TableCell>
                        <asp:TableCell ID="D1NitroxPercentCell2" runat="server" Enabled="false">
                            <asp:TextBox ID="D1NitroxPercentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell9" runat="server">
                            <div class="form-control-static text-info">Pusteutstyr</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell10" ColumnSpan="3" runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                      <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Volum</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Trykk</div>
                        </asp:TableCell>
                           <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan dybde</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan tid</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell23" runat="server">
                            <div class="form-control-static text-info">Kursdykk nr./formål</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell24" ColumnSpan="3" runat="server">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>

            <div class="col-md-4" id="diver2Div">
               <asp:Table runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <div class="h4 form-control-static text-center text-primary">Dykker 2</div>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="0">OF Tungt</asp:ListItem>
                                    <asp:ListItem Value="1">OF Lett</asp:ListItem>
                                    <asp:ListItem Value="2">Scuba</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Value="0">Direkte</asp:ListItem>
                                    <asp:ListItem Value="1">D. Stopp</asp:ListItem>
                                    <asp:ListItem Value="2">OD - O2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D2AirTypeDropDownList" OnSelectedIndexChanged="D2AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="0">Luft</asp:ListItem>
                                    <asp:ListItem Value="1">Nitrox</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="checkbox-inline text-info form-control-static">
                                <asp:CheckBox ID="CheckBox3" Text="Gjentatt" runat="server" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                          <asp:TableCell ID="TableCell11" runat="server">
                            <div class="form-control-static text-info">N2-gruppe før dykk</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell ID="D2NitroxPercentCell1" runat="server" Enabled="false">
                            <div class="form-control-static text-right text-info">Nitrox %</div>
                        </asp:TableCell>
                        <asp:TableCell ID="D2NitroxPercentCell2" runat="server" Enabled="false">
                            <asp:TextBox ID="D2NitroxPercentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell13" runat="server">
                            <div class="form-control-static text-info">Pusteutstyr</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server" ColumnSpan="3">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                      <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Volum</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Trykk</div>
                        </asp:TableCell>
                           <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan dybde</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan tid</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell15" runat="server">
                            <div class="form-control-static text-info">Kursdykk nr./formål</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell16" runat="server" ColumnSpan="3">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    

                </asp:Table>
            </div>

            <div class="col-md-4" id="diver3Div">
                 <asp:Table runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <div class="h4 form-control-static text-center text-primary">Dykker 3</div>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="DropDownList4" runat="server">
                                    <asp:ListItem Value="0">OF Tungt</asp:ListItem>
                                    <asp:ListItem Value="1">OF Lett</asp:ListItem>
                                    <asp:ListItem Value="2">Scuba</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="DropDownList5" runat="server">
                                    <asp:ListItem Value="0">Direkte</asp:ListItem>
                                    <asp:ListItem Value="1">D. Stopp</asp:ListItem>
                                    <asp:ListItem Value="2">OD - O2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D3AirTypeDropDownList" OnSelectedIndexChanged="D3AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="0">Luft</asp:ListItem>
                                    <asp:ListItem Value="1">Nitrox</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="checkbox-inline text-info form-control-static">
                                <asp:CheckBox ID="CheckBox1" Text="Gjentatt" runat="server" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                          <asp:TableCell ID="TableCell3" runat="server">
                            <div class="form-control-static text-info">N2-gruppe før dykk</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell ID="D3NitroxPercentCell1" runat="server" Enabled="false">
                            <div class="form-control-static text-right text-info">Nitrox %</div>
                        </asp:TableCell>
                        <asp:TableCell ID="D3NitroxPercentCell2" runat="server" Enabled="false">
                            <asp:TextBox ID="D3NitroxPercentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell19" runat="server">
                            <div class="form-control-static text-info">Pusteutstyr</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell20" runat="server" ColumnSpan="3">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                      <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Volum</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Trykk</div>
                        </asp:TableCell>
                           <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan dybde</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan tid</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell21" runat="server">
                            <div class="form-control-static text-info">Kursdykk nr./formål</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell22" runat="server" ColumnSpan="3">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    

                </asp:Table>
            </div>


            <br />

            <div class="col-md-8 text-center" id="standardDiveDiv">
                <asp:Table runat="server" CssClass="table table-bordered">
                    <asp:TableRow>
                        <asp:TableCell>   
                            <div class="form-control-static text-info" style="font-weight:700"><asp:Label runat="server" ID="DiveTitleLabel" Text="Standarddykk"></asp:Label></div>
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-info" style="font-weight:700">Dykker 1</div>
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-info" style="font-weight:700">Dykker 2</div>
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-info" style="font-weight:700">Dykker 3</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="40%">
                            <div class="form-control-static text-info">Forlot overflaten</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                

            </div>



        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>