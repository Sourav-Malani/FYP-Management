﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChooseSupervisor.aspx.cs" Inherits="FYP_Committee_ChooseSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Choose Supervisors</title>
   <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;

        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #808080;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
            border-radius: 8px;

        }

        .sgnbtn {
            background-color: #0C64F7;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
            border-radius: 8px;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }

        
    </style>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        body{
            background:#f1f1f1;
            font-family:'Sans Serif Collection';

        }
        .form-wrap{
            width:750px;
            height:750px;
            background:#ffffff;
            padding: 30px 20px;
            position:center;
            display:block;
            margin:30px auto;
            border-radius:25px;
            box-shadow:0 0 15px #808080;
        }
        h1{
            text-align:center;
            color:#0C64F7;
            font-weight:lighter;
            margin-block:10px;
            font-family:sans-serif;
        }
        h3{
            font-family:sans-serif;
            text-align:center;
            color:#808080;
            font-weight:normal;
            margin-block:20px;
        }
        label{
            font-family:sans-serif;
            text-align:center;
            color:#808080;
            font-weight:normal;
            margin-block:20px;
        }
    </style>


    <script src ="../swalert.js" type="text/javascript"> </script>
    <script>
        function emptyValue() {
            Swal.fire(
                'Some Fields Empty!',
                'Please Fill all the fields!',
                'error'
            )
        }
        function WorkLoad() {
            Swal.fire(
                'Oops!',
                'Work load of supervisor is not available!',
                'error'
            )
        }

        function AllSet() {
            Swal.fire(
                'Data added.',
                'You can go back.',
                'success'
            )

        }
    </script>
    <style>
        .select{
            padding:8px 12px;
            color:#333333;
            
            border: 1px solid #808080;
            cursor: pointer;
            border-radius: 5px;
            text-align:center;
            /* Replace default string (arrow) */  
            
        }
        .select:focus,
        .select:hover{
            outline:none;
            border: 1px solid #bbbbbb;
        }
        .select option{
            background: white;
        }
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #0C64F7;
            color: white;
            padding: 14px 20px;
            margin: 8px 0 8px 37;
            cursor: pointer;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-wrap">
        <h1> Choose the group to assign it a Supervisor </h1>
        <div>
            <p>Group No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             Supervisor</p>
            <asp:DropDownList appendDataBoundItems="true" ID="DropDownList1" runat="server" CssClass="select" DataSourceID="studentsWithoutSupervisor" DataTextField="Project Title" DataValueField="groupID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>--Select Group--</asp:ListItem>
               </asp:DropDownList>
            <asp:SqlDataSource ID="studentsWithoutSupervisor" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="groupsWithoutSupervisor" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList appendDataBoundItems="true" ID="DropDownList2" runat="server" CssClass="select" DataSourceID="SupervisorAvailable" DataTextField="supervisorID" DataValueField="supervisorID" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                 <asp:ListItem>--Select Supervisor--</asp:ListItem>
            </asp:DropDownList>

            <asp:SqlDataSource ID="SupervisorAvailable" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="select supervisorID
FROM supervisors
Where (sWorkLoad&lt;6)
"></asp:SqlDataSource>

            <asp:Button runat="server" ID="btn_chooseSupervisor" CssClass="auto-style1" Text="Add Supervisor" OnClick="btn_ChooseSupervisor_Click" Width="253px" />
            <asp:Button runat="server" ID="btn_GoBack" CssClass="cnbtn" Text="Go Back" OnClick="btn_GoBack_Click" Width="253px" />

        </div>
    </form>
</body>
</html>
