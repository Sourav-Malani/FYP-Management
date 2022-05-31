<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentsRegesteredInFyp1.aspx.cs" Inherits="ignoreThisFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    </form>
</body>
</html>
