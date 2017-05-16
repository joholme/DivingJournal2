<%@ Page Title="Ny journal" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="New_Journal.aspx.cs" Inherits="Divingjournal2.New_Journal"%>




<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel runat="server"><ContentTemplate>
        
            <asp:Label ID="HeaderLabel" runat="server"></asp:Label>
            <h1 id = "h1Title"></h1>
            <asp:Panel ID="JournalTypeButtonPanel" runat="server">

                <asp:Button ID="StandardDiveButton" runat="server" Text="Direkte dykk" Width ="25%" OnClick="StandardDiveButton_Click"/>
                <asp:Button ID="SurfaceCompressionDiveButton" runat="server" Text="Overflatekompresjon" Width ="25%" OnClick="SurfaceCompressionDiveButton_Click" />
                <asp:Button ID="PressureChamberDiveButton" runat="server" Text="Trykkammer" Width ="25%" OnClick="PressureChamberDiveButton_Click"/>

            </asp:Panel>
            
                <asp:Table ID="FirstInfoTable" runat="server" BorderStyle="None" CellPadding="1" CellSpacing="1" HorizontalAlign="Right" Font-Size="X-Large">
                    <asp:TableRow ID="JournalIDRow" runat="server" >

                        <asp:TableCell runat="server" >Journal nr</asp:TableCell>
                        <asp:TableCell ID="JournalIDCell" runat="server" HorizontalAlign="Right" >
                            <asp:Label ID="JournalIDLabel" runat="server" Text=""></asp:Label>
                        
</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="CourseNrRow" runat="server">

                        <asp:TableCell runat="server" >Kurs nr</asp:TableCell>
                        <asp:TableCell ID="CourseNrCell" runat="server" >
                            <asp:TextBox ID="CourseNrTextBox" runat="server"  ></asp:TextBox>
                        
</asp:TableCell>

                    </asp:TableRow>
                    
                </asp:Table>


                

                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" Width="350px" NextPrevFormat="FullMonth">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>

       <asp:Panel runat="server">

                <div style="text-align:right; padding:0px; height: 22px; width: auto;">

                   <asp:Table ID="MainInfoTable" runat="server" Visible="True" HorizontalAlign="Left">
                

                
                    <asp:TableRow ID="DateRow" runat="server" >

                        <asp:TableCell runat="server" >
                            <asp:Button ID="DateButton" runat="server" Text="Dato" Width="100%" OnClick="DateButton_Click" />
                           
                        </asp:TableCell>
                        <asp:TableCell ID="DateCell" runat="server" >
                            <asp:TextBox ID="DateTextBox" runat="server" ></asp:TextBox>
                            
                        

</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow2" runat="server">

                        <asp:TableCell runat="server" >Sted</asp:TableCell>
                        <asp:TableCell ID="LocationCell" runat="server" >
                            <asp:TextBox ID="LocationTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell runat="server" >Dykkepost</asp:TableCell>
                        <asp:TableCell ID="DivingSpotCell" runat="server" >
                            <asp:TextBox ID="DivingSpotTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="SubjectRow" runat="server">
                        <asp:TableCell runat="server" >Fag</asp:TableCell>
                        <asp:TableCell ID="SubjectCell" runat="server" >
                            <asp:DropDownList ID="SubjectDropDownList" runat="server" >
                                <asp:ListItem>DYK600 - Sikkerhetsopplæring i dykking</asp:ListItem>
                                
<asp:ListItem>DYK601 - Fagopplæring i anlegg</asp:ListItem>
                                
<asp:ListItem>DYK601 - Fagopplæring i rørlegging</asp:ListItem>
                                
<asp:ListItem>DYK601 - Fagopplæring i berging</asp:ListItem>
                                
<asp:ListItem>RED110 - Redningsdykking</asp:ListItem>
                            
</asp:DropDownList>
                        
</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell runat="server" >Annet</asp:TableCell>
                        <asp:TableCell ID="OtherCell" runat="server" >
                            <asp:TextBox ID="OtherTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                
           



            
              
                    <asp:TableRow ID="TableRow4" runat="server" BorderStyle="None" >

                        <asp:TableCell runat="server" >Dykkesjef</asp:TableCell>
                        <asp:TableCell ID="DivingChiefCell" runat="server" >
                            <asp:TextBox ID="DivingChiefTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow5" runat="server" BorderStyle="None">

                        <asp:TableCell runat="server" >Dykkeleder (instruktør)</asp:TableCell>
                        <asp:TableCell ID="Divingleader_teacherCell" runat="server" >
                            <asp:TextBox ID="Divingleader_teacherTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="TableRow6" runat="server">
                        <asp:TableCell runat="server" >Dykkeleder (student)</asp:TableCell>
                        <asp:TableCell ID="Divingleader_studentCell" runat="server" >
                            <asp:TextBox ID="Divingleader_studentTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow7" runat="server">
                        <asp:TableCell runat="server" >Dykker 1</asp:TableCell>
                        <asp:TableCell ID="diver_1Cell" runat="server" >
                            <asp:TextBox ID="Diver_1TextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow8" runat="server" >

                        <asp:TableCell runat="server" >Dykker 2</asp:TableCell>
                        <asp:TableCell ID="TableCell5" runat="server" >
                            <asp:TextBox ID="Diver_2TextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow9" runat="server">

                        <asp:TableCell runat="server" >Standby-/beredskapsdykker</asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server" >
                            <asp:TextBox ID="StandbyTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="TableRow10" runat="server">
                        <asp:TableCell runat="server" >Hjelpemann</asp:TableCell>
                        <asp:TableCell ID="TableCell7" runat="server" >
                            <asp:TextBox ID="HelpmanTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow11" runat="server">
                        <asp:TableCell runat="server" >Assisterende hjelpemann</asp:TableCell>
                        <asp:TableCell ID="TableCell8" runat="server" >
                            <asp:TextBox ID="Helpman_assistingTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow12" runat="server">

                        <asp:TableCell runat="server" >Linemann 1</asp:TableCell>
                        <asp:TableCell ID="TableCell9" runat="server" >
                            <asp:TextBox ID="Lineman_1TextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="TableRow13" runat="server">
                        <asp:TableCell runat="server" >Linemann 2</asp:TableCell>
                        <asp:TableCell ID="TableCell10" runat="server" >
                            <asp:TextBox ID="Lineman_2TextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow14" runat="server">
                        <asp:TableCell runat="server">Andre</asp:TableCell>
                        <asp:TableCell ID="TableCell11" runat="server" >
                            <asp:TextBox ID="OthersTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>
                
            

            
            
      
    

          
                    <asp:TableRow ID="TableRow15" runat="server" >

                        <asp:TableHeaderCell CssClass="tableCellHeaderStyle">Luftsystem</asp:TableHeaderCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow16" runat="server">

                        <asp:TableCell runat="server" >Hovedforsyning</asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server" >
                            <asp:TextBox ID="airsystem_mainTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="TableRow17" runat="server">
                        <asp:TableCell runat="server" >Sekundærforsyning</asp:TableCell>
                        <asp:TableCell ID="TableCell3" runat="server" >
                            <asp:TextBox ID="airsystem_secondaryTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow18" runat="server" >

                        <asp:TableHeaderCell CssClass="tableCellHeaderStyle">Oksygen til kammer</asp:TableHeaderCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow19" runat="server">

                        <asp:TableCell runat="server" >I bruk</asp:TableCell>
                        <asp:TableCell ID="TableCell1" runat="server" >
                            <asp:TextBox ID="oxygenForChamber_inUseTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="TableRow20" runat="server">
                        <asp:TableCell runat="server" >Klar til bruk</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server" >
                            <asp:TextBox ID="oxygenForChamber_readyForUseTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>

                       <asp:TableHeaderRow>
                           <asp:TableHeaderCell>
                               <asp:CheckBoxList ID="TransportCheckBoxList" AutoPostBack="true" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="TransportCheckBoxList_SelectedIndexChanged">
        
            <asp:ListItem Value="0">Dykkekurv</asp:ListItem>
            <asp:ListItem Value="1">Våtklokke</asp:ListItem>

                </asp:CheckBoxList>
                           </asp:TableHeaderCell>
                       </asp:TableHeaderRow>

                    <asp:TableRow ID="EmergencyGasRow1" runat="server" Visible="false">

                        <asp:TableHeaderCell CssClass="tableCellHeaderStyle">Nødgass</asp:TableHeaderCell>

                    </asp:TableRow>

                    <asp:TableRow ID="EmergencyGasRow2" runat="server" Visible="false">

                        <asp:TableCell runat="server" >Våtklokke</asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server" >
                            <asp:TextBox ID="emergencyGas_divingBellTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="EmergencyGasRow3" runat="server" Visible="false">
                        <asp:TableCell runat="server" >Dykkekurv</asp:TableCell>
                        <asp:TableCell ID="TableCell13" runat="server" >
                            <asp:TextBox ID="emergencyGas_divingBasketTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                 </asp:Table>

                    </div>
            </asp:Panel>
    </ContentTemplate></asp:UpdatePanel>





    <asp:Panel runat="server">

    <div style="width:auto;">

    <asp:Table ID="DiversTable" runat="server" HorizontalAlign="Left" CellSpacing="20" CellPadding="20">
        <asp:TableRow runat="server">
            <asp:TableCell ID="Diver1Cell" runat="server">

<asp:UpdatePanel runat="server"><ContentTemplate>
                 
        <h4>Dykker 1</h4>
        <asp:DropDownList ID="D1OF_TypeDropDownList" runat="server">
            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


            <asp:ListItem Value="1">OF Lett</asp:ListItem>


            <asp:ListItem Value="2">Scuba</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="D1DirectDropDownList" runat="server">
            <asp:ListItem Value="0">Direkte</asp:ListItem>


            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


            <asp:ListItem Value="2">OD - O2</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="D1AirTypeDropDownList" OnSelectedIndexChanged="D1AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
            <asp:ListItem Value="0">Luft</asp:ListItem>


            <asp:ListItem Value="1">Nitrox</asp:ListItem>


        </asp:DropDownList>


        <asp:CheckBox ID="D1RepeatedAirCheckBox" Text="Gjentatt" runat="server" />

    <br />

    <asp:Table ID="D1N2GroupBeforeDiveTable" HorizontalAlign="Left" runat="server">
        <asp:TableRow ID="TableRow24" runat="server">
                <asp:TableCell runat="server">N2-gruppe før dykk</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1N2GroupBeforeDiveTextBox" Width="60" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          </asp:Table>


                
    <asp:Table ID="D1NitroxPercentTable" HorizontalAlign="Right" Visible="false" runat="server">
        <asp:TableRow ID="NitroxPercentRow" runat="server">
                <asp:TableCell runat="server">Nitrox %</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1NitroxPercentTextbox" Width="60" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          </asp:Table>

                
                
        </ContentTemplate></asp:UpdatePanel>

        <asp:Table ID="D1VolumeTable" runat="server">



            <asp:TableRow ID="BreathingGearRow" runat="server">
                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1BreathingGearTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="VolumeTitleRow" runat="server">
                <asp:TableHeaderCell ColumnSpan="2">Volum og Trykk</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="VolumeRow" runat="server">
                <asp:TableCell runat="server">
                    Volum
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1VolumeTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="PressureRow" runat="server">
                <asp:TableCell runat="server">
                    Trykk

                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1PressureTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="PlannedDepthTitleRow" runat="server">
                <asp:TableHeaderCell ColumnSpan="2">Plan dybde og Tid</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="PlannedDepthRow" runat="server">
                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1PlannedDepthTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="PlannedTimeRow" runat="server">
                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1PlannedTimeTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <br/>
                </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow ID="CourseDiveRow" runat="server">
                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1CourseDiveTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
      

            </asp:TableCell>
            <asp:TableCell ID="Diver2Cell" runat="server">
                 

<asp:UpdatePanel runat="server"><ContentTemplate>
                 
        <h4>Dykker 2</h4>
        <asp:DropDownList ID="D2OF_TypeDropDownList" runat="server">
            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


            <asp:ListItem Value="1">OF Lett</asp:ListItem>


            <asp:ListItem Value="2">Scuba</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="D2DirectDropDownList" runat="server">
            <asp:ListItem Value="0">Direkte</asp:ListItem>


            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


            <asp:ListItem Value="2">OD - O2</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="D2AirTypeDropDownList" OnSelectedIndexChanged="D2AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
            <asp:ListItem Value="0">Luft</asp:ListItem>


            <asp:ListItem Value="1">Nitrox</asp:ListItem>


        </asp:DropDownList>


        <asp:CheckBox ID="D2RepeatedAirCheckBox" Text="Gjentatt" runat="server" />

    <br />

    
        <asp:Table ID="Table2" HorizontalAlign="Left" runat="server">
        <asp:TableRow ID="TableRow21" runat="server">
                <asp:TableCell runat="server">N2-gruppe før dykk</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2N2GroupBeforeDiveTextBox" Width="60" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          </asp:Table>


                
    <asp:Table ID="D2NitroxPercentTable" HorizontalAlign="Right" Visible="false" runat="server">
        <asp:TableRow ID="TableRow22" runat="server">
                <asp:TableCell runat="server">Nitrox %</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2NitroxPercentTextbox" Width="60" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          </asp:Table>

                
                
        </ContentTemplate></asp:UpdatePanel>

        <asp:Table ID="Table4" runat="server">



            <asp:TableRow ID="TableRow23" runat="server">
                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2BreathingGearTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow25" runat="server">
                <asp:TableHeaderCell ColumnSpan="2">Volum og Trykk</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow26" runat="server">
                <asp:TableCell runat="server">
                    Volum
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2VolumeTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow27" runat="server">
                <asp:TableCell runat="server">
                    Trykk

                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2PressureTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow28" runat="server">
                <asp:TableHeaderCell ColumnSpan="2">Plan dybde og Tid</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow29" runat="server">
                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2PlannedDepthTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow30" runat="server">
                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2PlannedTimeTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <br/>
                </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow ID="TableRow31" runat="server">
                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D2CourseDiveTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
      
            </asp:TableCell>
            <asp:TableCell ID="StandbyCell" runat="server">

                <asp:UpdatePanel runat="server"><ContentTemplate>
                 
        <h4>Standby</h4>
        <asp:DropDownList ID="SBOF_TypeDropDownList" runat="server">
            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


            <asp:ListItem Value="1">OF Lett</asp:ListItem>


            <asp:ListItem Value="2">Scuba</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="SBDirectDropDownList" runat="server">
            <asp:ListItem Value="0">Direkte</asp:ListItem>


            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


            <asp:ListItem Value="2">OD - O2</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="SBAirTypeDropDownList" OnSelectedIndexChanged="SBAirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
            <asp:ListItem Value="0">Luft</asp:ListItem>


            <asp:ListItem Value="1">Nitrox</asp:ListItem>


        </asp:DropDownList>


        <asp:CheckBox ID="SBRepeatedAirCheckBox" Text="Gjentatt" runat="server" />

    <br />

    <asp:Table ID="Table5" HorizontalAlign="Left" runat="server">
        <asp:TableRow ID="TableRow32" runat="server">
                <asp:TableCell runat="server">N2-gruppe før dykk</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBN2GroupBeforeDiveTextBox" Width="60" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          </asp:Table>


                
    <asp:Table ID="SBNitroxPercentTable" HorizontalAlign="Right" Visible="false" runat="server">
        <asp:TableRow ID="TableRow33" runat="server">
                <asp:TableCell runat="server">Nitrox %</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBNitroxPercentTextbox" Width="60" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          </asp:Table>

                
                
        </ContentTemplate></asp:UpdatePanel>

        <asp:Table ID="Table7" runat="server">



            <asp:TableRow ID="TableRow34" runat="server">
                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBBreathingGearTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow35" runat="server">
                <asp:TableHeaderCell ColumnSpan="2">Volum og Trykk</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow36" runat="server">
                <asp:TableCell runat="server">
                    Volum
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBVolumeTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow37" runat="server">
                <asp:TableCell runat="server">
                    Trykk

                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBPressureTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow38" runat="server">
                <asp:TableHeaderCell ColumnSpan="2">Plan dybde og Tid</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow39" runat="server">
                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBPlannedDepthTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow40" runat="server">
                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBPlannedTimeTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <br/>
                </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow ID="TableRow41" runat="server">
                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBCourseDiveTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
            


            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>

        </div>
        </asp:Panel>

    <!-- Stopwatches -->

    <asp:Table ID="StopWatchTable" runat="server" BorderStyle="Solid" BorderWidth="2px" BackColor="White">
        <asp:TableRow>
            <asp:TableCell>Dykker 1</asp:TableCell>
            <asp:TableCell>Dykker 2</asp:TableCell>
            <asp:TableCell>Standby</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <h3 id="timerLabel1">00:00:00</h3>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start1" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset1" />
            </asp:TableCell>
            <asp:TableCell>
                <h3 id="timerLabel2">00:00:00</h3>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start2" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset2" />
            </asp:TableCell>
            <asp:TableCell>
                <h3 id="timerLabel3">00:00:00</h3>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start3" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset3" />
            </asp:TableCell>  
        </asp:TableRow>
        
    </asp:Table>
        

        <ajaxToolkit:AlwaysVisibleControlExtender ID="StopWatchTable_AlwaysVisibleControlExtender" runat="server" BehaviorID="StopWatchTable_AlwaysVisibleControlExtender" TargetControlID="StopWatchTable" HorizontalSide="Right" UseAnimation="True" VerticalOffset="100" VerticalSide="Bottom" />
        <ajaxToolkit:DropShadowExtender ID="StopWatchTable_DropShadowExtender" runat="server" BehaviorID="StopWatchTable_DropShadowExtender" TargetControlID="StopWatchTable">
        </ajaxToolkit:DropShadowExtender>
        

  <script src="Stopwatch3.js"></script>





    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
   
    <div style="text-align:center; padding:0px; height: 22px; width: auto;">

        <asp:Table ID="StandardDiveTable" runat="server" Visible="True" HorizontalAlign="Left" GridLines="Both">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Dykker 1</asp:TableCell>
                <asp:TableCell runat="server">Standarddykk</asp:TableCell>
                <asp:TableCell runat="server">Dykker 2</asp:TableCell>
                <asp:TableCell runat="server">Standby</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">                   
                    <asp:TextBox ID="D1LeftSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Sett inn" CommandArgument="D1LeftSurface" OnClick="TimeButton_Click"/>                         
                </asp:TableCell>
                <asp:TableCell runat="server">             
                    Forlot overflaten
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button2" runat="server" Text="Sett inn" CommandArgument="D2LeftSurface" OnClick="TimeButton_Click"/> 
                    <asp:TextBox ID="D2LeftSurface" runat="server" Width="75"></asp:TextBox>    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBLeftSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" Text="Sett inn" CommandArgument="SBLeftSurface" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1ReachedBottom" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" Text="Sett inn" CommandArgument="D1ReachedBottom" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">På bunn</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button5" runat="server" Text="Sett inn" CommandArgument="D2ReachedBottom" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2ReachedBottom" runat="server" Width="75"></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBReachedBottom" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button6" runat="server" Text="Sett inn" CommandArgument="SBReachedBottom" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server"> 
                    <div style="text-align:left;"><asp:TextBox ID="D1leftBottom_Depth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot bunn (dybde)</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;">
                    <asp:TextBox ID="D2leftBottom_Depth" runat="server" Width="75"></asp:TextBox>
                        </div>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBleftBottom_Depth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button7" runat="server" Text="Sett inn" CommandArgument="D1leftBottom_Time" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot bunn (klokkeslett)</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button9" runat="server" Text="Sett inn" CommandArgument="D2leftBottom_Time" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2leftBottom_Time" runat="server" Width="75"></asp:TextBox>                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBleftBottom_Time" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button8" runat="server" Text="Sett inn" CommandArgument="SBleftBottom_Time" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    		 <div style="text-align:left;"><asp:TextBox ID="D1bottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Bunntid</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2bottomTime" runat="server" Width="75"></asp:TextBox> </div>

                </asp:TableCell>
                <asp:TableCell runat="server">
                    		 <div style="text-align:left;"><asp:TextBox ID="SBbottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="D1maxDepth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Maks dybde</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2maxDepth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBmaxDepth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                   <div style="text-align:left;"><asp:TextBox ID="D1ELD" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">ELD</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2ELD" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBELD" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="D1additionToBottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tillegg til bunntid</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2additionToBottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBadditionToBottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="D1tableUsed_Meter" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (meter)</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2tableUsed_Meter" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBtableUsed_Meter" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="D1tableUsed_Minutes" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (minutt)</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2tableUsed_Minutes" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBtableUsed_Minutes" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button10" runat="server" Text="Sett inn" CommandArgument="D1ascensionToFirstStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Oppstigning til 1. stopp</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button12" runat="server" Text="Sett inn" CommandArgument="D2ascensionToFirstStop" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button11" runat="server" Text="Sett inn" CommandArgument="SBascensionToFirstStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button13" runat="server" Text="Sett inn" CommandArgument="D1timeAtSafetyStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Tid på sikkerhetsstopp</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button15" runat="server" Text="Sett inn" CommandArgument="D2timeAtSafetyStop" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBtimeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button14" runat="server" Text="Sett inn" CommandArgument="SBtimeAtSafetyStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1arrived9m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button16" runat="server" Text="Sett inn" CommandArgument="D1arrived9m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Ankom 9m</asp:TableCell>
                <asp:TableCell runat="server">
                     <asp:Button ID="Button30" runat="server" Text="Sett inn" CommandArgument="D2arrived9m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2arrived9m" runat="server" Width="75"></asp:TextBox>
                   
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBarrived9m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button17" runat="server" Text="Sett inn" CommandArgument="SBarrived9m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1left9m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button18" runat="server" Text="Sett inn" CommandArgument="D1left9m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot 9m</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button31" runat="server" Text="Sett inn" CommandArgument="D2left9m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2left9m" runat="server" Width="75"></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBleft9m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button19" runat="server" Text="Sett inn" CommandArgument="SBleft9m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1arrived6m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button20" runat="server" Text="Sett inn" CommandArgument="D1arrived6m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Ankom 6m</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button32" runat="server" Text="Sett inn" CommandArgument="D2arrived6m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2arrived6m" runat="server" Width="75"></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBarrived6m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button21" runat="server" Text="Sett inn" CommandArgument="SBarrived6m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1left6m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button22" runat="server" Text="Sett inn" CommandArgument="D1left6m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot 6m</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button33" runat="server" Text="Sett inn" CommandArgument="D2left6m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2left6m" runat="server" Width="75"></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBleft6m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button23" runat="server" Text="Sett inn" CommandArgument="SBleft6m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1arrived3m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button24" runat="server" Text="Sett inn" CommandArgument="D1arrived3m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Ankom 3m</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button34" runat="server" Text="Sett inn" CommandArgument="D2arrived3m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2arrived3m" runat="server" Width="75"></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBarrived3m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button25" runat="server" Text="Sett inn" CommandArgument="SBarrived3m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1left3m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button26" runat="server" Text="Sett inn" CommandArgument="D1left3m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot 3m</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button35" runat="server" Text="Sett inn" CommandArgument="D2left3m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2left3m" runat="server" Width="75"></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBleft3m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button27" runat="server" Text="Sett inn" CommandArgument="SBleft3m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1reachedSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button28" runat="server" Text="Sett inn" CommandArgument="D1reachedSurface" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">På overflaten</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button36" runat="server" Text="Sett inn" CommandArgument="D2reachedSurface" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2reachedSurface" runat="server" Width="75"></asp:TextBox>
                    
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBreachedSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button29" runat="server" Text="Sett inn" CommandArgument="SBreachedSurface" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="D1ascensionTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Oppstigningstid</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2ascensionTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBascensionTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="D1totalDivingTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Dykketid</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2totalDivingTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBtotalDivingTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="D1N2GroupAfterDive" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">N2-gruppe etter dykk</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"><asp:TextBox ID="D2N2GroupAfterDive" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:TextBox ID="SBN2GroupAfterDive" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"><asp:DropDownList ID="D1isEverythingOKDropDownList" runat="server" Width="75"> 
                       <asp:ListItem Value="0">Ja</asp:ListItem>
                       <asp:ListItem Value="1">Nei</asp:ListItem>
                   </asp:DropDownList> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Alt vel etter dykk?</asp:TableCell>
                <asp:TableCell runat="server">
                 <div style="text-align:right;"><asp:DropDownList ID="D2isEverythingOKDropDownList" runat="server" Width="75">
                       <asp:ListItem Value="0">Ja</asp:ListItem>
                       <asp:ListItem Value="1">Nei</asp:ListItem>
                   </asp:DropDownList></div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                   <div style="text-align:left;"> <asp:DropDownList ID="SBisEverythingOKDropDownList" runat="server" Width="75">
                       <asp:ListItem Value="0">Ja</asp:ListItem>
                       <asp:ListItem Value="1">Nei</asp:ListItem>
                   </asp:DropDownList></div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>

        </asp:Table>
    </div>

    </ContentTemplate>
</asp:UpdatePanel>
    





   <asp:UpdatePanel runat="server">
       <ContentTemplate>
    <div style="text-align:center; padding:0px; height:22px; width:auto;">

        <asp:Table ID="SurfaceCompressionDiveTable" runat="server" Visible="False" GridLines="Both" HorizontalAlign="Left">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Dykker 1</asp:TableCell>
                <asp:TableCell runat="server">Overflatedekompresjonsdykk</asp:TableCell>
                <asp:TableCell runat="server">Dykker 2</asp:TableCell>
                <asp:TableCell runat="server">Standby</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_leftSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button37" runat="server" Text="Sett inn" CommandArgument="D1Comp_leftSurface" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot overflaten</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button41" runat="server" Text="Sett inn" CommandArgument="D2Comp_leftSurface" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_leftSurface" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_leftSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button38" runat="server" Text="Sett inn" CommandArgument="SBComp_leftSurface" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_reachedBottom" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button39" runat="server" Text="Sett inn" CommandArgument="D1Comp_reachedBottom" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">På bunn</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button42" runat="server" Text="Sett inn" CommandArgument="D2Comp_reachedBottom" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_reachedBottom" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_reachedBottom" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button40" runat="server" Text="Sett inn" CommandArgument="SBComp_reachedBottom" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_leftBottom_Depth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot bunn (dybde)</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_leftBottom_Depth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_leftBottom_Depth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button43" runat="server" Text="Sett inn" CommandArgument="D1Comp_leftBottom_Time" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot dybde (klokkeslett)</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button77" runat="server" Text="Sett inn" CommandArgument="D2Comp_leftBottom_Time" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button44" runat="server" Text="Sett inn" CommandArgument="SBComp_leftBottom_Time" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_bottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Bunntid</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_bottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server"> 
                    <div style="text-align:left;"><asp:TextBox ID="SBComp_bottomTime" runat="server" Width="75"></asp:TextBox> </div></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_maxDepth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Maks dybde</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_maxDepth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_maxDepth" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_ELD" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">ELD</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_ELD" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_ELD" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_additionToBottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tillegg til bunntid</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_additionToBottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_additionToBottomTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_tableUsed_Meter" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (meter)</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_tableUsed_Meter" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_tableUsed_Meter" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_tableUsed_Minutes" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (minutt)</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_tableUsed_Minutes" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_tableUsed_Minutes" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button47" runat="server" Text="Sett inn" CommandArgument="D1Comp_ascensionToFirstStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Oppstigning til 1. stopp</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button78" runat="server" Text="Sett inn" CommandArgument="D2Comp_ascensionToFirstStop" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button48" runat="server" Text="Sett inn" CommandArgument="SBComp_ascensionToFirstStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button45" runat="server" Text="Sett inn" CommandArgument="D1Comp_timeAtSafetyStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Tid på sikkerhetsstopp</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button79" runat="server" Text="Sett inn" CommandArgument="D2Comp_timeAtSafetyStop" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button46" runat="server" Text="Sett inn" CommandArgument="SBComp_timeAtSafetyStop" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_left18m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button49" runat="server" Text="Sett inn" CommandArgument="D1Comp_left18m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot 18m stopp</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button80" runat="server" Text="Sett inn" CommandArgument="D2Comp_left18m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_left18m" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_left18m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button50" runat="server" Text="Sett inn" CommandArgument="SBComp_left18m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_left15m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button51" runat="server" Text="Sett inn" CommandArgument="D1Comp_left15m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot 15m stopp</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button81" runat="server" Text="Sett inn" CommandArgument="D2Comp_left15m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_left15m" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_left15m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button52" runat="server" Text="Sett inn" CommandArgument="SBComp_left15m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_left12m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button53" runat="server" Text="Sett inn" CommandArgument="D1Comp_left12m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot 12m stopp</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button82" runat="server" Text="Sett inn" CommandArgument="D2Comp_left12m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_left12m" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_left12m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button54" runat="server" Text="Sett inn" CommandArgument="SBComp_left12m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_time12_0m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button55" runat="server" Text="Sett inn" CommandArgument="D1Comp_time12_0m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Tid 12-0m</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button83" runat="server" Text="Sett inn" CommandArgument="D2Comp_time12_0m" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_time12_0m" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_time12_0m" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button56" runat="server" Text="Sett inn" CommandArgument="SBComp_time12_0m" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="ChamberSealedButton" runat="server" Text="Forsegl kammer" OnClick="ChamberSealedButton_Click" />
                </asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_reached15mInChamber" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button57" runat="server" Text="Sett inn" CommandArgument="D1Comp_reached15mInChamber" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Ankom 15m i kammer</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button84" runat="server" Text="Sett inn" CommandArgument="D2Comp_reached15mInChamber" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_reached15mInChamber" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_reached15mInChamber" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button58" runat="server" Text="Sett inn" CommandArgument="SBComp_reached15mInChamber" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_surfaceInterval" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button59" runat="server" Text="Sett inn" CommandArgument="D1Comp_surfaceInterval" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Overflateintervall</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button85" runat="server" Text="Sett inn" CommandArgument="D2Comp_surfaceInterval" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_surfaceInterval" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_surfaceInterval" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button60" runat="server" Text="Sett inn" CommandArgument="SBComp_surfaceInterval" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_o2_1" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button61" runat="server" Text="Sett inn" CommandArgument="D1Comp_o2_1" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">O2 - 1</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button86" runat="server" Text="Sett inn" CommandArgument="D2Comp_o2_1" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_o2_1" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_o2_1" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button62" runat="server" Text="Sett inn" CommandArgument="SBComp_o2_1" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_air_1" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button63" runat="server" Text="Sett inn" CommandArgument="D1Comp_air_1" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Luft - 1</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button87" runat="server" Text="Sett inn" CommandArgument="D2Comp_air_1" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_air_1" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_air_1" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button64" runat="server" Text="Sett inn" CommandArgument="SBComp_air_1" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_o2_2" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button65" runat="server" Text="Sett inn" CommandArgument="D1Comp_o2_2" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">O2 - 2</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button88" runat="server" Text="Sett inn" CommandArgument="D2Comp_o2_2" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_o2_2" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_o2_2" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button66" runat="server" Text="Sett inn" CommandArgument="SBComp_o2_2" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_air_2" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button67" runat="server" Text="Sett inn" CommandArgument="D1Comp_air_2" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Luft - 2</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button89" runat="server" Text="Sett inn" CommandArgument="D2Comp_air_2" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_air_2" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_air_2" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button68" runat="server" Text="Sett inn" CommandArgument="SBComp_air_2" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_o2_3" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button69" runat="server" Text="Sett inn" CommandArgument="D1Comp_o2_3" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">O2 - 3</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button90" runat="server" Text="Sett inn" CommandArgument="D2Comp_o2_3" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_o2_3" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_o2_3" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button70" runat="server" Text="Sett inn" CommandArgument="SBComp_o2_3" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_air_3" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button71" runat="server" Text="Sett inn" CommandArgument="D1Comp_air_3" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Luft - 3</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button91" runat="server" Text="Sett inn" CommandArgument="D2Comp_air_3" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_air_3" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_air_3" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button72" runat="server" Text="Sett inn" CommandArgument="SBComp_air_3" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_left12mWithoutO2" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button73" runat="server" Text="Sett inn" CommandArgument="D1Comp_left12mWithoutO2" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Forlot 12m uten O2</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button92" runat="server" Text="Sett inn" CommandArgument="D2Comp_left12mWithoutO2" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_left12mWithoutO2" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_left12mWithoutO2" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button74" runat="server" Text="Sett inn" CommandArgument="SBComp_left12mWithoutO2" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="D1Comp_reachedSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button75" runat="server" Text="Sett inn" CommandArgument="D1Comp_reachedSurface" OnClick="TimeButton_Click"/>
                </asp:TableCell>
                <asp:TableCell runat="server">Kammer på overflaten</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button93" runat="server" Text="Sett inn" CommandArgument="D2Comp_reachedSurface" OnClick="TimeButton_Click"/>
                    <asp:TextBox ID="D2Comp_reachedSurface" runat="server" Width="75"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SBComp_reachedSurface" runat="server" Width="75"></asp:TextBox>
                    <asp:Button ID="Button76" runat="server" Text="Sett inn" CommandArgument="SBComp_reachedSurface" OnClick="TimeButton_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_timeInChamber" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tid i kammer</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_timeInChamber" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_timeInChamber" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_timeAtSea" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Tid i sjø</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_timeAtSea" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_timeAtSea" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_totalDecompression" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Total dekompresjon</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_totalDecompression" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_totalDecompression" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_totalDivingTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">Total dykketid</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_totalDivingTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_totalDivingTime" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="D1Comp_N2GroupAfterDive" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">N2-gruppe etter dykk</asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:right;"><asp:TextBox ID="D2Comp_N2GroupAfterDive" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                     <div style="text-align:left;"><asp:TextBox ID="SBComp_N2GroupAfterDive" runat="server" Width="75"></asp:TextBox> </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div style="text-align:left;"> <asp:DropDownList ID="D1Comp_isEverythingOKDropDownList" runat="server" Width="75">
                       <asp:ListItem Value="0">Ja</asp:ListItem>
                       <asp:ListItem Value="1">Nei</asp:ListItem>
                   </asp:DropDownList></div>
                </asp:TableCell>
                <asp:TableCell runat="server">Alt vel etter dykk?</asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:right;"> <asp:DropDownList ID="D2Comp_isEverythingOKDropDownList" runat="server" Width="75">
                       <asp:ListItem Value="0">Ja</asp:ListItem>
                       <asp:ListItem Value="1">Nei</asp:ListItem>
                   </asp:DropDownList></div>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <div style="text-align:left;"> <asp:DropDownList ID="SBComp_isEverythingOKDropDownList" runat="server" Width="75">
                       <asp:ListItem Value="0">Ja</asp:ListItem>
                       <asp:ListItem Value="1">Nei</asp:ListItem>
                   </asp:DropDownList></div>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>

    </div>

</ContentTemplate>
   </asp:UpdatePanel>


    <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>

        <div style="text-align:left; padding:0px; height:22px; width:auto;">

            <asp:Table ID="PressureChamberDiveTable" runat="server"></asp:Table>



        </div>
  </ContentTemplate></asp:UpdatePanel>







    <asp:UpdatePanel runat="server"><ContentTemplate>

    <asp:Panel ID="PopupPanel" runat="server" BackColor="White" Width="50%" Height="75%">
        <asp:Button ID="SaveToDatabaseButton" runat="server" Text="Lagre til database" OnClick="SaveToDatabaseButton_Click" />
        <asp:Button ID="CancelPopupButton" runat="server" Text="Avbryt" OnClientClick="" />
        <asp:Label ID="Label1" runat="server" Text="Label">Sikker?</asp:Label>
    </asp:Panel>




    <ajaxToolkit:AlwaysVisibleControlExtender runat="server" BehaviorID="PopupPanel_AlwaysVisibleControlExtender" UseAnimation="true" HorizontalSide="Center" VerticalSide="Middle" TargetControlID="PopupPanel" ID="PopupPanel_AlwaysVisibleControlExtender"></ajaxToolkit:AlwaysVisibleControlExtender>
    <ajaxToolkit:DropShadowExtender runat="server" BehaviorID="PopupPanel_DropShadowExtender" TargetControlID="PopupPanel" ID="PopupPanel_DropShadowExtender"></ajaxToolkit:DropShadowExtender>
    <ajaxToolkit:PopupControlExtender runat="server" PopupControlID="PopupPanel" ExtenderControlID="" BehaviorID="PopupPanel_PopupControlExtender" TargetControlID="SubmitButton" ID="PopupPanel_PopupControlExtender"></ajaxToolkit:PopupControlExtender>
    <asp:Button ID="SubmitButton" runat="server" Text="Forhåndsvis og lagre" OnClick="SubmitButton_Click" />
        </ContentTemplate> </asp:UpdatePanel>

            <div>
                Merknader
                <asp:TextBox ID="NotesTextBox" runat="server"></asp:TextBox>
                <ajaxToolkit:ResizableControlExtender HandleCssClass="handlecss" runat="server" BehaviorID="NotesTextBox_ResizableControlExtender" TargetControlID="NotesTextBox" ID="NotesTextBox_ResizableControlExtender"></ajaxToolkit:ResizableControlExtender>
            </div>


</asp:Content>