<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentsRegesteredInFyp1.aspx.cs" Inherits="ignoreThisFile" %>

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
    .cnbtn {
        background - color: #808080;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 49 %;
        border - radius: 8px;

    }
        .auto-style1 {
            margin-left: 331px;
        }
        .auto-style2 {
            color: white;
            cursor: pointer;
            width: 49 %;
            border-radius: 8px;
            border-style: none;
            border-color: inherit;
            border-width: 8px;
            margin-left: 128;
            margin-right: 0;
            margin-top: 8px;
            margin-bottom: 8px;
            padding: 14px 20px;
            background: #808080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <br />
        Students Regestered in FYP1:<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="groupID" HeaderText="groupID" InsertVisible="False" ReadOnly="True" SortExpression="groupID" />
                <asp:BoundField DataField="Member1rollNo" HeaderText="Member1rollNo" SortExpression="Member1rollNo" />
                <asp:BoundField DataField="student1  Name" HeaderText="student1  Name" SortExpression="student1  Name" />
                <asp:BoundField DataField="Member2rollNo" HeaderText="Member2rollNo" SortExpression="Member2rollNo" />
                <asp:BoundField DataField="student2 Name" HeaderText="student2 Name" SortExpression="student2 Name" />
                <asp:BoundField DataField="Member3rollNo" HeaderText="Member3rollNo" SortExpression="Member3rollNo" />
                <asp:BoundField DataField="Studen3  Name" HeaderText="Studen3  Name" SortExpression="Studen3  Name" />
                <asp:BoundField DataField="supervID" HeaderText="supervID" SortExpression="supervID" />
                <asp:BoundField DataField="Supervisor Name" HeaderText="Supervisor Name" SortExpression="Supervisor Name" />
                <asp:BoundField DataField="co_supervID" HeaderText="co_supervID" SortExpression="co_supervID" />
                <asp:BoundField DataField="Co_Supervisor" HeaderText="Co_Supervisor" SortExpression="Co_Supervisor" />
                <asp:BoundField DataField="Project Title" HeaderText="Project Title" SortExpression="Project Title" />
                <asp:BoundField DataField="Project Desc." HeaderText="Project Desc." SortExpression="Project Desc." />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="ShowStudentsRegesteredInFYP1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
       <p class="auto-style1">
        <asp:Button ID="Button1" runat="server" Text="Go back" CssClass="auto-style2" OnClick="Button1_Click" />
           </p>
    </form>
</body>
</html>
