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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="ShowStudentsRegesteredInFYP1" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </form>
</body>
</html>
