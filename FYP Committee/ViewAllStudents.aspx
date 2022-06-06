<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllStudents.aspx.cs" Inherits="FYP_Committee_ViewAllStudentData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .styled-table {
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            font-family: sans-serif;
            min-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }
        .styled-table thead tr {
            background-color: #009879;
            color: #ffffff;
            text-align: left;
        }
        .styled-table th,
        .styled-table td {
            padding: 12px 15px;
        }
        .styled-table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .styled-table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .styled-table tbody tr:last-of-type {
            border-bottom: 2px solid #009879;
        }
        .styled-table tbody tr.active-row {
            font-weight: bold;
            color: #009879;
        }
    </style>
    <style>
        .cnbtn {
            background-color: #808080;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
            border-radius: 8px;
            width: auto;
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
        h2{
            text-align:center;
            color:#0C64F7;
            font-weight:normal;
            margin-block:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <center>
            <h2> Student Details</h2>
        <asp:GridView  ID ="GridView1" class="styled-table" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="StudentDetails" ForeColor="#333333" GridLines="None" DataKeyNames="Roll No" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Full Name" HeaderText="Full Name" SortExpression="Full Name" />
                <asp:BoundField DataField="Roll No" HeaderText="Roll No" SortExpression="Roll No" ReadOnly="True" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView> 
            <asp:SqlDataSource ID="StudentDetails" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="select studentName as 'Full Name', studentRollNo as 'Roll No', studentGender as 'Gender',
studentPassword as 'Password'
from student"></asp:SqlDataSource>
        <asp:Button ID="Button1" class="cnbtn" runat="server" Text="Go Back" Width="176px" OnClick="Button1_Click" />
            </center>
    </form>
</body>
</html>
