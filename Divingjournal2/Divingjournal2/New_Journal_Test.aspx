<%@ Page Title="Ny journal - test" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="New_Journal_Test.aspx.cs" Inherits="Divingjournal2.New_Journal_Test"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="HeaderLabel" runat="server"></asp:Label>
            <h1 id = "h1Title"></h1>
            <asp:Panel ID="JournalTypeButtonPanel" runat="server">

                <asp:Button ID="StandardDiveButton" runat="server" Text="Direkte dykk" Width ="25%" OnClick="StandardDiveButton_Click"/>
                <asp:Button ID="SurfaceCompressionDiveButton" runat="server" Text="Overflatekompresjon" Width ="25%" OnClick="SurfaceCompressionDiveButton_Click" />
                <asp:Button ID="PressureChamberDiveButton" runat="server" Text="Trykkammer" Width ="25%" OnClick="PressureChamberDiveButton_Click"/>

            </asp:Panel>
            <asp:Panel ID="FirstAndSecondInfoPanel" runat="server">
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


                

                <asp:Table ID="SecondInfoTable" runat="server" BorderStyle="None" CellPadding="1" CellSpacing="1" >
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
                </asp:Table>
           </asp:Panel>



            <asp:Panel ID="CrewInfoPanel" runat="server">
                <asp:Table ID="CrewInfoTable" runat="server"  CellPadding="1" CellSpacing="1" >
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
                        <asp:TableCell runat="server" >Andre</asp:TableCell>
                        <asp:TableCell ID="TableCell11" runat="server" >
                            <asp:TextBox ID="OthersTextBox" runat="server" ></asp:TextBox>
                        



</asp:TableCell>

                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>

            <asp:Panel ID="AirInfoPanel" runat="server" >

            </asp:Panel>
            
        </asp:Panel>
    

                <asp:Table ID="AirInfoTable" runat="server"  CellPadding="1" CellSpacing="1" >
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

                    <asp:TableRow ID="TableRow21" runat="server" >

                        <asp:TableHeaderCell CssClass="tableCellHeaderStyle">Nødgass</asp:TableHeaderCell>

                    </asp:TableRow>

                    <asp:TableRow ID="TableRow22" runat="server">

                        <asp:TableCell runat="server" >Våtklokke</asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server" >
                            <asp:TextBox ID="emergencyGas_divingBellTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="TableRow23" runat="server">
                        <asp:TableCell runat="server" >Dykkekurv</asp:TableCell>
                        <asp:TableCell ID="TableCell13" runat="server" >
                            <asp:TextBox ID="emergencyGas_divingBasketTextBox" runat="server" ></asp:TextBox>
                        

</asp:TableCell>

                    </asp:TableRow>
                 </asp:Table>






    <asp:Table ID="DiversTable" runat="server" Width="1212px">
        <asp:TableRow runat="server" Width="30%">
            <asp:TableCell ID="Diver1Cell" runat="server">
                 


                 <asp:Panel ID="Diver1Panel" Width="30%" runat="server">
        <h4>Dykker 1</h4>
        <asp:DropDownList ID="OF_TypeDropDownList" runat="server">
            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


            <asp:ListItem Value="1">OF Lett</asp:ListItem>


            <asp:ListItem Value="2">Scuba</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="DirectDropDownList" runat="server">
            <asp:ListItem Value="0">Direkte</asp:ListItem>


            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


            <asp:ListItem Value="2">OD - O2</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="AirTypeDropDownList" runat="server">
            <asp:ListItem Value="0">Luft</asp:ListItem>


            <asp:ListItem Value="1">Nitrox 32%</asp:ListItem>


            <asp:ListItem Value="2">Nitrox 68%</asp:ListItem>


        </asp:DropDownList>


        <asp:CheckBox ID="RepeatedAirCheckBox" Text="Gjentatt" runat="server" />



        <asp:RadioButtonList ID="TransportRadioButtonList" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Value="0">Dykkekurv</asp:ListItem>


            <asp:ListItem Value="1">Våtklokke</asp:ListItem>


        </asp:RadioButtonList>

        <asp:Table ID="VolumeTable" runat="server">



            <asp:TableRow ID="BreathingGearRow" runat="server">
                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="BreathingGearTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="VolumeTitleRow" runat="server">
                <asp:TableHeaderCell>Volum og Trykk</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="VolumeRow" runat="server">
                <asp:TableCell runat="server">
                    Volum
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="VolumeTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="PressureRow" runat="server">
                <asp:TableCell runat="server">
                    Trykk

                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="PressureTextBox" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="PlannedDepthTitleRow" runat="server">
                <asp:TableHeaderCell>Plan dybde og Tid</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="PlannedDepthRow" runat="server">
                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="PlannedDepthTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="PlannedTimeRow" runat="server">
                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="PlannedTimeTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow24" runat="server">
                <asp:TableHeaderCell>|</asp:TableHeaderCell>
                
            </asp:TableRow>
            <asp:TableRow ID="CourseDiveRow" runat="server">
                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="CourseDiveTextBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
      
           

    </asp:Panel>




            </asp:TableCell>
            <asp:TableCell ID="Diver2Cell" runat="server">




                <asp:Panel ID="Diver2Panel" Width="30%" runat="server">
        <h4>Dykker 2</h4>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


            <asp:ListItem Value="1">OF Lett</asp:ListItem>


            <asp:ListItem Value="2">Scuba</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="0">Direkte</asp:ListItem>


            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


            <asp:ListItem Value="2">OD - O2</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="0">Luft</asp:ListItem>


            <asp:ListItem Value="1">Nitrox 32%</asp:ListItem>


            <asp:ListItem Value="2">Nitrox 68%</asp:ListItem>


        </asp:DropDownList>


        <asp:CheckBox ID="CheckBox1" Text="Gjentatt" runat="server" />



        <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Value="0">Dykkekurv</asp:ListItem>


            <asp:ListItem Value="1">Våtklokke</asp:ListItem>


        </asp:RadioButtonList>

        <asp:Table ID="Table1" runat="server">



            <asp:TableRow ID="TableRow25" runat="server">
                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow26" runat="server">
                <asp:TableHeaderCell>Volum og Trykk</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow27" runat="server">
                <asp:TableCell runat="server">
                    Volum
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow28" runat="server">
                <asp:TableCell runat="server">
                    Trykk

                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow29" runat="server">
                <asp:TableHeaderCell>Plan dybde og Tid</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow30" runat="server">
                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow31" runat="server">
                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow32" runat="server">
                <asp:TableHeaderCell>|</asp:TableHeaderCell>
                
            </asp:TableRow>
            <asp:TableRow ID="TableRow33" runat="server">
                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
      
           

    </asp:Panel>




            </asp:TableCell>
            <asp:TableCell ID="StandbyCell" runat="server">




                <asp:Panel ID="StandbyPanel" Width="30%" runat="server">
        <h4>Standby</h4>
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


            <asp:ListItem Value="1">OF Lett</asp:ListItem>


            <asp:ListItem Value="2">Scuba</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem Value="0">Direkte</asp:ListItem>


            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


            <asp:ListItem Value="2">OD - O2</asp:ListItem>


        </asp:DropDownList>


        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem Value="0">Luft</asp:ListItem>


            <asp:ListItem Value="1">Nitrox 32%</asp:ListItem>


            <asp:ListItem Value="2">Nitrox 68%</asp:ListItem>


        </asp:DropDownList>


        <asp:CheckBox ID="CheckBox2" Text="Gjentatt" runat="server" />



        <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Value="0">Dykkekurv</asp:ListItem>


            <asp:ListItem Value="1">Våtklokke</asp:ListItem>


        </asp:RadioButtonList>

        <asp:Table ID="Table2" runat="server">



            <asp:TableRow ID="TableRow34" runat="server">
                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow35" runat="server">
                <asp:TableHeaderCell>Volum og Trykk</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow36" runat="server">
                <asp:TableCell runat="server">
                    Volum
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow37" runat="server">
                <asp:TableCell runat="server">
                    Trykk

                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow38" runat="server">
                <asp:TableHeaderCell>Plan dybde og Tid</asp:TableHeaderCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow39" runat="server">
                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow40" runat="server">
                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow41" runat="server">
                <asp:TableHeaderCell>|</asp:TableHeaderCell>
                
            </asp:TableRow>
            <asp:TableRow ID="TableRow42" runat="server">
                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
      
           

    </asp:Panel>




            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>

   
    <div style="text-align:center;">

        <asp:Table ID="StandardDiveTable" runat="server" Visible="True" HorizontalAlign="Left" GridLines="Both" Width="50%">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Dykker 1</asp:TableCell>
                <asp:TableCell runat="server">Standarddykk</asp:TableCell>
                <asp:TableCell runat="server">Dykker 2</asp:TableCell>
                <asp:TableCell runat="server">Standby</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="D1LeftSurfaceLabel" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="D1LeftSurfaceButton" runat="server" Text="Button" OnClick="D1LeftSurfaceButton_Click" />Forlot overflaten
                    <asp:Button ID="D2LeftSurfaceButton" runat="server" Text="Button" OnClick="D2LeftSurfaceButton_Click"/>
                   
                </asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">På bunn</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot bunn (dybde)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot bunn (klokkeslett)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Bunntid</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Maks dybde</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">ELD</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tillegg til bunntid</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (meter)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (minutt)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Oppstigning til 1. stopp</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tid på sikkerhetsstopp</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Ankom 9m</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot 9m</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Ankom 6m</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot 6m</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Ankom 3m</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot 3m</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">På overflaten</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Oppstigningstid</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Dykketid</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">N2-gruppe etter dykk</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Alt vel etter dykk?</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>

        </asp:Table>
    </div>


    

    <div style="text-align:center;">

        <asp:Table ID="SurfaceCompressionDiveTable" runat="server" Visible="False" GridLines="Both" Width ="50%">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Dykker 1</asp:TableCell>
                <asp:TableCell runat="server">Overflatedekompresjonsdykk</asp:TableCell>
                <asp:TableCell runat="server">Dykker 2</asp:TableCell>
                <asp:TableCell runat="server">Standby</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot overflaten</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">På bunn</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot bunn (dybde)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot dybde (klokkeslett)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Bunntid</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Maks dybde</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">ELD</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tillegg til bunntid</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (meter)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tabell brukt (minutt)</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Oppstigning til 1. stopp</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tid på sikkerhetsstopp</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot 18m stopp</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot 15m stopp</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot 12m stopp</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tid 12-0m</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Kammer forseglet</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Ankom 15m i kammer</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">O2 - 1</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Overflateintervall</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Luft - 1</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">O2 - 2</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Luft - 2</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">O2 - 3</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Luft - 3</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Forlot 12m uten O2</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Kammer på overflaten</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tid i kammer</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Tid i sjø</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Total dekompresjon</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Total dykketid</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">N2-gruppe etter dykk</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">Alt vel etter dykk?</asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>

        </asp:Table>

    </div>



   




     


    <asp:Button ID="SessionButton" runat="server" Text="Save Session" OnClick="SessionButton_Click" />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
</asp:Content>