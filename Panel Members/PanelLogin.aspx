<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PanelLogin.aspx.cs" Inherits="Panel_PanelLogin" %>

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
    <form id="form1" runat="server" class="form-wrap">

        <div class="container">
            <center>
                <h3>Panel Member Login</h3>
            </center>
            <label for="uname"><b>Username&nbsp;&nbsp;   </b></label>
&nbsp;<asp:TextBox runat="server" ID="txt_Username" OnTextChanged="txt_Username_TextChanged"></asp:TextBox><br>
            <label for="psw"><b>Password&nbsp;&nbsp;&nbsp;        </b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password"  OnTextChanged="txt_password_TextChanged"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" OnClick="btn_cancel_Click2" />
        </div>
    </form>
</body>
</html>