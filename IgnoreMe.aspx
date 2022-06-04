<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IgnoreMe.aspx.cs" Inherits="IgnoreMe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFN" runat="server" OnTextChanged="txtFN_TextChanged"></asp:TextBox>
         <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                 <asp:TextBox ID="txtLN" runat="server" OnTextChanged="txtLN_TextChanged"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>