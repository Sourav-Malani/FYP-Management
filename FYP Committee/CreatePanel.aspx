<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreatePanel.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Panel</title>
<%--    <meta http-equiv="Refresh" content="5;url=CreatePanel.aspx" />--%>

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
        #txt_facultyName{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
        }
        #txt_facultyID{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
            font-family:sans-serif;
        }
        #txt_facultypassword{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
            font-family:sans-serif;
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
            width:750px;
            height:750px;
            background:#ffffff;
            padding: 30px 20px;
            position:center;
            display:block;
            margin:30px auto;
            border-radius:25px;
            box-shadow:0 0 15px #808080;
        }
        h1{
            text-align:center;
            color:#0C64F7;
            font-weight:lighter;
            margin-block:10px;
            font-family:sans-serif;
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
        function emptyValue() {
            Swal.fire(
                'Some Fields Empty!',
                'Please Fill all the fields!',
                'error'
            )
        }
        function AllSet() {
            Swal.fire(
                'Data added.',
                'You can go back.',
                'success'
            )

        }
    </script>
    <style>
        .select{
            padding:8px 12px;
            color:#333333;
            
            border: 1px solid #808080;
            cursor: pointer;
            border-radius: 5px;
            text-align:center;
            /* Replace default string (arrow) */  
            
        }
        .select:focus,
        .select:hover{
            outline:none;
            border: 1px solid #bbbbbb;
        }
        .select option{
            background: white;
        }
        .auto-style1 {
            width: 565px;
            margin-left: 208px;
        }
        .auto-style2 {
            padding: 8px 12px;
            color: #333333;
            border: 1px solid #808080;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
            margin-left: 14;
        }
        .auto-style4 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #0C64F7;
            color: white;
            padding: 14px 20px;
            margin: 8px 0 8px 27;
            cursor: pointer;
            border-radius: 8px;
        }
        .auto-style5 {
            color: white;
            cursor: pointer;
            border-radius: 8px;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-left: 70px;
            margin-right: 0;
            margin-top: 8px;
            margin-bottom: 8px;
            padding: 14px 20px;
            background-color: #808080;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server" class="form-wrap">
        <h1> To create a panel first select Group Title & then Panel Members</h1>
        <div>
            <asp:DropDownList appendDataBoundItems="true" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="select" DataSourceID="SqlDataSource1" DataTextField="projectTitle" DataValueField="groupID" >
                <asp:ListItem >Select Group</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="SELECT groupID,projectTitle
FROM studentGroup
WHERE groupID NOT IN
     (SELECT Group_Assigned 
     FROM Panel)
"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList  appendDataBoundItems="true" ID="DropDownList2" runat="server"  CssClass="select" DataSourceID="SqlDataSource3" DataTextField="facultyName" DataValueField="facultyID">
                <asp:ListItem>--Select Panel Member 1--</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="FacultyMembersNotInPanel" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" appendDataBoundItems="true"  runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" CssClass="select" DataSourceID="SqlDataSource3" DataTextField="facultyName" DataValueField="facultyID">
                <asp:ListItem>--Select Panel Member 2--</asp:ListItem>
            </asp:DropDownList>
            <br/><br/>
            <p class="auto-style1">
            <asp:DropDownList ID="DropDownList4" appendDataBoundItems="true"  runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource3" DataTextField="facultyName" DataValueField="facultyID">
                <asp:ListItem>--Select Panel Member 3--</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList5" appendDataBoundItems="true"  runat="server" CssClass="select" DataSourceID="SqlDataSource3" DataTextField="facultyName" DataValueField="facultyID">
                <asp:ListItem>--Select Panel Member 4--</asp:ListItem>
            </asp:DropDownList>
            <br/><br/>
            </p>
            <p class="auto-style1">
            <asp:DropDownList ID="DropDownList6" appendDataBoundItems="true" runat="server" CssClass="select" DataSourceID="SqlDataSource3" DataTextField="facultyName" DataValueField="facultyID">
            <asp:ListItem>--Select Panel Member 5--</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList7" appendDataBoundItems="true" runat="server" CssClass="select" DataSourceID="SqlDataSource3" DataTextField="facultyName" DataValueField="facultyID">
            <asp:ListItem>--Select Panel Member 6--</asp:ListItem>
            </asp:DropDownList>
            </p>

        </div>
        <br/>
            <asp:Button runat="server" ID="Button1" CssClass="auto-style5" Text="Cancel" OnClick="btn_GoBack"  class="auto-style3" Width="259px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btn_CreatePanel" CssClass="auto-style4" Text="Create Panel" OnClick="btn_createPanel" class="auto-style3" Width="259px"/>

    </form>
</body>
</html>
