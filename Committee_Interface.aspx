﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Committee_Interface.aspx.cs" Inherits="Committee_Interface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FYP committee Inteface</title>
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
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
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
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            WELLCOME, DEAR Committee Member<br>
        
            Choose the action you want to perform:<asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Add Student</asp:ListItem>
                <asp:ListItem>Add Faculty</asp:ListItem>
                <asp:ListItem>Create Committee</asp:ListItem>
                <asp:ListItem>Make a Panel</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        
            
        
            <br><br> 
            <asp:Button ID="Button1" runat="server" Text="Continue"  class="lgnbtn" OnClick="Continue_Click" Width="157px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Go Back"  class="cnbtn" OnClick="GoBack_Click" Width="157px" />

            <br>
            
        </p>

    </form>

</body>
</html>