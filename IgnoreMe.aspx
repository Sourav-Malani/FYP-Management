<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IgnoreMe.aspx.cs" Inherits="IgnoreMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        body {
            background: #33F2FF;
            font-family: 'Sans Serif Collection';
            background-image: url(http://localhost:61699/img/pexels-pixabay-159711.jpg);
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
    </style>
</head>
<body>
    <div class="form-wrap">
    <form id="form1" runat="server">
    <h2>Regestration From</h2>
    <asp:TextBox ID="TextBox1" runat="server" class="textbox" placeholder="Name1"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" class="textbox" placeholder="Name2"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" class="textbox" placeholder="Name3"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" class="registerbutton" />
        <asp:Label ID="Label1" runat="server" Text="Label" class="labeltext"></asp:Label>
    </form>
    </div>
</body>
</html>
