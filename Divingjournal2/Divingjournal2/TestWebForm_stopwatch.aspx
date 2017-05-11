<%@ Page Title="Test Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestWebForm_stopwatch.aspx.cs" Inherits="Divingjournal2.TestWebForm_stopwatch" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <script type="text/javascript">

        var T = (function () {
            'use strict';

            var timeElapsed = 0,
                timeStarted = 0,
                splitCount = 0,
                update;

            return {
                timeStarted: timeStarted,
                timeElapsed: timeElapsed,
                splitCount: splitCount,
                update: update
            };
        }());


        // Start timer or continue from paused time
        function startTimer() {

            // If the timer has been paused, the time already elapsed is subtracted
            // from the time NOW so that the elapsed time is maintained when the
            // timer restarts
            T.timeStarted = new Date().getTime() - T.timeElapsed;

            // Need setInterval as a variable so it can be cleared on stop/reset
            update = setInterval(postTime, 10);

            //Disable/enable appropriate buttons	
            document.getElementById("reset").disabled = false;
            startButtons();

            return update;
        }



        //Freeze the timer
        function stopTimer() {

            // Stop the interval updating
            clearInterval(update);

            //Disable/enable appropriate buttons
            stopButtons();
        }



        // Record split without stopping timer. Will add lap time at some point
        function split() {
            T.splitCount++;
            document.getElementById("splits").innerHTML += "</br>Split " + T.splitCount + ": " + render(T.timeElapsed);

        }


        //Reset the timer to zero and clear splits
        function reset() {
            clearInterval(update);
            T.timeStarted = 0;
            T.timeElapsed = 0;
            T.splitCount = 0;
            document.getElementById("timer").innerHTML = "00:00:00";
            document.getElementById("reset").disabled = true;

            stopButtons()

            document.getElementById("splits").innerHTML = "<br>Splits</br>"
        }



        // Disable start button, enable stop and split
        function startButtons() {
            document.getElementById("start").disabled = true;
            document.getElementById("stop").disabled = false;
            document.getElementById("split").disabled = false;

        }

        // Enable start button, disable stop and split
        function stopButtons() {
            document.getElementById("start").disabled = false;
            document.getElementById("stop").disabled = true;
            document.getElementById("split").disabled = true;

        }

        // Convert time to mm/ss/cc
        function render() {
            T.timeElapsed = new Date().getTime() - T.timeStarted;

            var toRender = T.timeElapsed;

            var mins = Math.floor(toRender / 60000);
            toRender -= mins * 60000;
            var secs = Math.floor(toRender / 1000);
            toRender -= secs * 1000;
            var cent = Math.round(toRender / 10);

            return addLeadingZero(mins) + ":" + addLeadingZero(secs) + ":" + addLeadingZero(cent);
        }

        //helper function to make render neater
        function addLeadingZero(n) {
            if (n <= 9) {
                return '0' + n;
            } else {
                return '' + n;
            }
        }

        // Post the time in the timer div
        function postTime(time) {
            document.getElementById("timer").innerHTML = render(time);

        }
    </script>

    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>

            

    
			
                
                    <div id="timer">
                    00:00
                    </div>
                
                
                </asp:TableCell>

            <asp:TableCell>
        
			<button id="start" onclick="startTimer()">Start/continue</button>
			
			<button id="split" onclick="split()" disabled="true">Split/lap</button>
			<button id="reset" onclick="reset()" disabled="true">Reset</button>

			<div id="splits">

		</div>

                </asp:TableCell>
                
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="Button1" runat="server" Text="Button"/>

    <button id="stop" onclick="stopTimer()" disabled="true">Stop/pause</button>


    <script type="text/javascript">
        function ConfirmBox() {
            if (confirm("Submit?")) {
                document.getElementById('Label1').value = document.getElementById('timer').value;
            }
        }
    </script>

     <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClientClick="" OnClick="SubmitButton_Click" />

    <asp:HiddenField ID="HiddenField1" runat="server"/>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

</asp:Content>