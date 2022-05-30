<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="AddFaculty" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>

<head runat="server">
    <title>Add Student Form</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text],input[type=text],input[type=text],
        input[type=text],input[type=password] {
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
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .sgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
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
        .auto-style1 {
            margin-left: 1px;
        }
    </style>

    <script src ="swalert.js" type="text/javascript"> </script>
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
</head>
    <%--  --%>
<body>
    <form id="form1" runat="server" class="frmalg">

        <div class="container">
            <center>
                <h3>Enter faculty details </h3>
            </center>
<%--            <label for="fname"><b>firstname</b></label>--%>
            <asp:TextBox runat="server" ID="txt_facultyName" placeholder="Full Name*" OnTextChanged="txt_facultyName_TextChanged"></asp:TextBox>
            <asp:TextBox runat="server" ID="txt_facultyID" placeholder="facultyID* (e.g: i19-1234)" OnTextChanged="txt_facultyID_TextChanged"></asp:TextBox>
<%--            <asp:TextBox runat="server" ID="tex_facultyUsername" placeholder="Username*" OnTextChanged="tex_facultyUsername_TextChanged"></asp:TextBox>--%>
            <asp:TextBox runat="server" ID="txt_facultypassword" placeholder="Pass word*" OnTextChanged="txt_facultypassword_TextChanged"></asp:TextBox>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>


            <asp:Button runat="server" ID="btn_addFaculty" CssClass="sgnbtn" Text="Add Faculty" OnClick="btn_addFaculty_Click" />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" OnClick="btn_cancel_Click" />
        </div>
    </form>
</body>
</html>