﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FYP_Committee_Interface_Login.aspx.cs" Inherits="FYP_Committee_Interface_Login" %>



<!DOCTYPE html>
<script runat="server">



</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    <script src ="../swalert.js" type="text/javascript"> </script>
    <script>
        function Invalid() {
            Swal.fire(
                'Oops!',
                'Wrong info!',
                'error'
            )
        }
        function EmptyValue() {
            Swal.fire(
                'Oops.',
                'Fields empty',
                'error'
            )

        }
    </script>
</head>
<body>
    <form id="form1" runat="server" class="frmalg">

        <div class="container">
            <center>
                <h3>FYP Committee Login </h3>
            </center>
            <label for="uname"><b>Username </b></label>
&nbsp;<asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" OnClick="btn_cancel_Click2" />
        </div>
    </form>
</body>
</html>