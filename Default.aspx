<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> FYP management system</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        body{
            background:#33F2FF;
            font-family:'Sans Serif Collection';
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
        .auto-style1 {
            width: 500px;
            background: #ffffff;
            padding: 30px 20px;
            position: center;
            display: block;
            margin: 10px auto;
            border-radius: 25px;
            box-shadow: 0 0 15px #808080;
            height: 458px;
        }
        .cnbtn {
            background-color: #3882ff;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
            border-radius: 8px;

        }
    </style>
</head>
<body style="background-color:aliceblue">
    <form id="form1" runat="server" class="auto-style1">
        <div align ="center" style ="height:720px">
        <div >

            Wellcome to FYP management system.<br />
            Please select your role to login.<br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" BorderStyle="None" ForeColor="Black" Height="134px" Width="219px">
                <asp:ListItem>STUDENT</asp:ListItem>
                <asp:ListItem>COMMIT. MEMBER</asp:ListItem>
                <asp:ListItem>SUPERVISOR</asp:ListItem>
                <asp:ListItem>PANEL MEMBER</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server"  class="cnbtn" OnClick="Button1_Click" style="margin-left: 6px" Text="Continue" />
            <br />
            <br />
        </div>
         <div/>
    </form>
</body>
</html>
