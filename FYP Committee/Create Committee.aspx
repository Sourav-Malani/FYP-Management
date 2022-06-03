<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create Committee.aspx.cs" Inherits="FYP_Committee_Create_Committee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Committee</title>
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
        #txt_fullname{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
        }
        #txt_password{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
            font-family:sans-serif;
        }
        #txt_rollno{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
            font-family:sans-serif;
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
    </style>
    <style>
        .select{
            padding:8px 12px;
            color:#333333;
            
            border: 1px solid #808080;
            cursor: pointer;
            border-radius: 5px;
            width: 150px;
            height: 50px;
            top: 50%;
            left: 50%;
            margin-left: 90px;
            margin-top: -100px; 
            
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
            height: 165px;
        }

        .auto-style2 {
            margin-top: 0;
        }
        .auto-style3 {
            color: white;
            cursor: pointer;
            border-radius: 8px;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-left: 28px;
            margin-right: 0;
            margin-top: 8px;
            margin-bottom: 8px;
            padding: 14px 20px;
            background-color: #808080;
        }
        .auto-style4 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #0C64F7;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            border-radius: 8px;
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
</head>
    <body>
        <form id="form1" runat="server" class="form-wrap">
        <div>
            <h2 class="auto-style1">Select a Faculty member to make him/her part of FYP Committee </h2>
        </div> 
            <br />
            <p class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server"  OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" class="select" >
            </asp:DropDownList>
                </p>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add" CssClass="auto-style4" OnClick="Button1_Click" Width="191px" />

            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="auto-style3"  OnClick="Button2_Click" Width="200px" />

        </form>
    </body>
</html>
