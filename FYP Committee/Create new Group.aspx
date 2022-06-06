<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create new Group.aspx.cs" Inherits="FYP_Committee_Create_new_Group" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        #txt_Username{
            border-radius: 2px;
            text-align:center;
            font-family:sans-serif;
        }
        #txt_password{
            border-radius: 2px;
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
            width:500px;
            background:#ffffff;
            padding: 30px 20px;
            position:center;
            display:block;
            margin:10px auto;
            border-radius:25px;
            box-shadow:0 0 15px #808080;
        }
        h1{
            text-align:center;
            color:#000000;
            font-size: 14px;
            margin-block:15px;
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
        .select{
            padding:8px 12px;
            color:#333333;
            
            border: 1px solid #808080;
            cursor: pointer;
            border-radius: 5px;
            width: 180px;
            height: 50px;
            top: 50%;
            left: 50%;
            margin-left: 90px;
            margin-top: -100px; 
            
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
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #0C64F7;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            border-radius: 8px;
        }
        .auto-style2 {
            margin-left: 51;
            border-radius:2px;
            text-align:center;
        }

    </style>

    <script src ="../swalert.js" type="text/javascript"> </script>
    <script>
        function Invalid() {
            Swal.fire(
                'Oops!',
                'Make Sure you have not selected same Member Twice.',
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
        function AllSet() {
            Swal.fire(
                'Data added.',
                'You can go back.',
                'success'
            )

        }
    </script>
</head>
<body>
            <asp:SqlDataSource ID="StudentsNotInAnyGroup" runat="server" ConnectionString="<%$ ConnectionStrings:FYP_MConnectionString %>" SelectCommand="studentsNotInAnyGroup" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <form id="form1" runat="server" class="container"> 
            <h2> Select Group Members (You can skip 3rd Member</h2>
            <h1> Please select different Name for each dropdown</h1><br/>
        <div>
           <center>
            <asp:DropDownList ID="DropDownList1" appendDataBoundItems="True"  runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" class="select" DataSourceID="StudentsNotInAnyGroup" DataTextField="studentName" DataValueField="studentRollNo">
                    <asp:ListItem>--Select Member 1--</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2"  appendDataBoundItems="True" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" class="select" DataSourceID="StudentsNotInAnyGroup" DataTextField="studentName" DataValueField="studentRollNo">
                    <asp:ListItem>--Select Member 2--</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp
            
            <asp:DropDownList ID="DropDownList3" appendDataBoundItems="True" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" class="select" DataSourceID="StudentsNotInAnyGroup" DataTextField="studentName" DataValueField="studentRollNo">
                <asp:ListItem>--Select Member 3--</asp:ListItem>
            </asp:DropDownList>
        </center>
            <br/>
            <center>
           <label for="PrTitle"><b>Project Title </b></label>
            &nbsp;<br />
            <asp:TextBox runat="server" ID="txt_PrTitle" placeholder="Project Title*" CssClass="auto-style2" OnTextChanged="txt_PrTitle_TextChanged" Width="406px"></asp:TextBox>
                <label for="Des"><b>
            <br />
            Group Description </b></label>
            &nbsp;<br />
                <asp:TextBox runat="server" ID="txt_PrDes" placeholder="Description" CssClass="auto-style2" Width="399px"></asp:TextBox>
            </center>

        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center>
        <asp:Button runat="server" ID="btn_addGroup" CssClass="auto-style1" Text="Add group" OnClick="btn_addGroup_Click" Width="344px" />
        &nbsp;&nbsp;
        <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" OnClick="btn_cancel_Click" Width="305px" />
        </center>
        
    </form>
</body>
</html>
