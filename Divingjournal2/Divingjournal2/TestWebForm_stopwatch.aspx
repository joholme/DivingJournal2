<%@ Page Title="Test Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestWebForm_stopwatch.aspx.cs" Inherits="Divingjournal2.TestWebForm_stopwatch" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <script type="text/javascript" src="Stopwatch.js"></script>

    <p id="output">00:00:00:00</p>

    <div id="controls">
        <button id="startPause" onclick="startPause()">Start</button>
        <button onclick ="reset()">Reset</button>
    </div>

</asp:Content>