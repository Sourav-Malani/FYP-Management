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
    <form id="form1" runat="server" class="form-wrap">
        <h1> Choose the group to assign it a Supervisor </h1>
        <div>
            <p>Group No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             Supervisor</p>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select" DataSourceID="studentsWithoutSupervisor" DataTextField="Project Title" DataValueField="groupID"></asp:DropDownList>
            <asp:SqlDataSource ID="studentsWithoutSupervisor" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="SELECT SG.groupID,
       SG.Member1rollNo,S1.studentName as 'student1  Name',
	   SG.Member2rollNo, S2.studentName as 'student2 Name',
	   SG.Member3rollNo, S3.studentName as 'Studen3  Name',
	   SG.supervID, SN.facultyName as 'Supervisor Name',
	   SG.co_supervID, CSN.facultyName as 'Co_Supervisor',
	   SG.projectTitle as 'Project Title',
	   SG.projectDetails as 'Project Desc.'
FROM FYP1 FYP1
    LEFT OUTER JOIN studentGroup SG ON FYP1.groupID = SG.groupID 
    LEFT OUTER JOIN supervisors SV ON SG.supervID  = SV.supervisorID
    LEFT OUTER JOIN Faculty SN ON   SG.supervID= SN.facultyID
    LEFT OUTER JOIN Faculty CSN ON   SG.co_supervID= CSN.facultyID
    LEFT OUTER JOIN student S1 ON SG.Member1rollNo  = S1.studentRollNo
    LEFT OUTER JOIN student S2 ON SG.Member2rollNo  = S2.studentRollNo
    LEFT OUTER JOIN student S3 ON SG.Member3rollNo  = S3.studentRollNo
WHERE (SG.supervID is NULL)	"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="select"></asp:DropDownList>

        </div>
    </form>
</body>
</html>
