<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> FYP management system</title>
    <style type="text/css">
        .backimg{
            background-image:url(img/background2.jpg);
            height:70%;
            width: 70%;
        }
        .auto-style2 {
            background-image: url('img/background2.jpg');
            height: 70%;
            width: 70%;
        }
    </style>

</head>
<body style="background-color:#A050A3">
    <form id="form1" runat="server">
        <div align ="center" style ="height:720px">
        <div class ="auto-style2">
            <br />
            <br />
            Wellcome to FYP management system.<br />
            <br />
            Please select your role to login.<br />
            <br />
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" BorderStyle="None" ForeColor="Black" Height="134px" Width="219px">
                <asp:ListItem>STUDENT</asp:ListItem>
                <asp:ListItem>COMMIT. MEMBER</asp:ListItem>
                <asp:ListItem>SUPERVISOR</asp:ListItem>
                <asp:ListItem>PANEL MEMBER</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 6px" Text="Continue" />
            <br />
        </div>
         <div/>
    </form>
</body>
</html>
