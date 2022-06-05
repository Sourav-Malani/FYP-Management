<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EvaluateGroup.aspx.cs" Inherits="Panel_Members_EvaluateGroup" %>

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
        #txt_fullname{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
        }
        #txt_password{
            border-radius: 12px;
            padding: 20px; 
            width: 200px;
            height: 15px; 
            text-align:center;
            font-family:sans-serif;
        }
        #txt_rollno{
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
            width:700px;
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
        h3{
            font-family:sans-serif;
            text-align:center;
            color:#808080;
            font-weight:normal;
            margin-block:20px;
        }
/*        label{
            font-family:sans-serif;
            text-align:center;
            color:#808080;
            font-weight:normal;
            margin-block:20px;
        }*/
    </style>
    <style>
        .select{
            padding:8px 12px;
            color:#333333;
            
            border: 1px solid #808080;
            cursor: pointer;
            border-radius: 5px;

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

        .full-width {
          grid-column: span 4;
        }
        .auto-style1 {
            width: 599px;
            height: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-wrap">
        <div>
           <p> 1. FYP Poster</p>
           <center>
               Min = 1, Max =10 <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 2. Iteration Definition, FYP Plan, Work Breakdownr</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 3. Work completed for the iteration(s) including design & implementation</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList3" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 4. Slide Design and Content Quality</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList4" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 5. Style (Delivery, Confidence, Clarity)</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList5" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 6. Clarity of Project Scope</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList6" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList6_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 7. Definition of Project Features</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList7" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList7_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p>8. Team Dynamics (Coordination among team members)</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList8" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList8_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 9. Timing of Presentation</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList9" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList9_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 10. Implementation Work Completion</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList10" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList10_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>

           <p> 11. Overall work quality and impression</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList11" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList11_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 12. Code Quality</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList12" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList12_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 13. Level of code integration</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList13" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList13_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 14. Class Diagram/DFD (provided in the report) correctly maps to the Code Implemented</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList14" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList14_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           <p> 15. Handling of Questions</p>
           <center>
           <asp:RadioButtonList ID="RadioButtonList15" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="RadioButtonList15_SelectedIndexChanged" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
           </asp:RadioButtonList>
            </center>
           </div>
            <div class="full-width">
                Reviews/Suggestions<br/>
              <textarea id="message1" class="auto-style1"></textarea>
            </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" class="sgnbtn" OnClick="Button1_Click1"/>
        &nbsp;<asp:Button ID="GoBack" runat="server" Text="Go Back" class="cnbtn" OnClick="Button2_Click1"/>

        </div>
    </form>
</body>
</html>
