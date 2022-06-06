﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MakeSupervisor.aspx.cs" Inherits="FYP_Committee_MakeSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        h2{
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <center>
            <h2> To make a faculty member supervisor, Choose facultyID from below</h2>
            <asp:DropDownList ID="DropDownList1" appendDataBoundItems="True" runat="server" CssClass="select" DataSourceID="FacultyNotSupervisor" DataTextField="facultyID" DataValueField="facultyID">
            <asp:ListItem>--Select Faculty--</asp:ListItem>
            </asp:DropDownList>
                <asp:SqlDataSource ID="FacultyNotSupervisor" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="SELECT facultyID
FROM Faculty
WHERE facultyID NOT IN
     (SELECT supervisorID 
     FROM supervisors)
"></asp:SqlDataSource>
            </center>
        </div>
        <br><br>
        <div>
            <center>
            <asp:Button ID="Button1" runat="server" Text="Button" class="sgnbtn" Width="302px" OnClick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Go Back" class="cnbtn" Width="302px" OnClick="Button2_Click" />
            </center>
        </div>
    </form>
</body>
</html>
