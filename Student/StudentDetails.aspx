<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="Student_Details" %>

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
        .lgnbtn {
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
        #txt_Username{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
        }
        #txt_password{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 

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
            width:500px;
            background:#ffffff;
            padding: 30px 20px;
            position:center;
            display:block;
            margin:10px auto;
            border-radius:25px;
            box-shadow:0 0 15px #808080;
        }
        h2{
            text-align:center;
            color:#0C64F7;
            font-weight:normal;
            margin-block:20px;
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
        .auto-style1 {
            color: white;
            cursor: pointer;
            border-radius: 8px;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 8px 0;
            padding: 14px 20px;
            background-color: #808080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

        </asp:GridView>
        <asp:SqlDataSource ID="StudentDetails" runat="server" OnSelecting="StudentDetails_Selecting"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Go back" CssClass="auto-style1" OnClick="Button1_Click" Width="320px" />

    </form>
</body>
</html>
