<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
    
body, html {
  height: 100%;
   margin: 0;
   background-color:#FBEEC1;
  padding: 0;
  font-family: sans-serif;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 5px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 300px;
  outline: none;
  color:#FFFFCC;
  border-radius: 24px;
  transition: 0.25s;
}
.drop{
  border:0;
  background: none;
  display: block;
  margin: 5px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 300px;
  outline: none;
  color:#FFFFCC;
  border-radius: 24px;
  transition: 0.25s;
}

.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width: 280px;
  border-color: #2ecc71;
}
.box input[type = "submit"]{
  border:0;
  background: #99ffcc;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: black;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type = "submit"]:hover{
  background: #2ecc71;
}
div.box{
  width: 800px;
  padding: 40px;
  position: absolute;
  top: 85%;
  left: 60%;
  transform: translate(-50%,-50%);
  text-align: center;
}
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
 div.user
    {
  position: absolute;
  top: 20px;
  left: 30px;
   width: 250px;
  height: 20px;
  font-size :25px;

  background-color:orange;
        }
div.header
    {
        height:100px;
       background-color:orange;
       padding-bottom:0px;
    }
.cc,.cc1
{
      border:0;
  background:#e8c87f;
  display: block;
  margin: 20px auto;
  text-align: right;
  border: 2px solid #e8c87f;
  padding: 14px 40px;
  outline: none;
  color: #e8c87f;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;

}
.cc2
{
 border:0;
  background:#E91557;
  display: block;
  margin: 20px auto;
  text-align: right;
  border: 2px solid red;
  padding: 14px 40px;
  outline: none;
  color: black;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;   
    
}
.cc2:hover
{
    background-color:#A30D3c;
}
.cc1:hover
{
    background-color: #2ecc71;
}
.tablink:hover {
  background-color: #777;
}

div.logout
{
  position: absolute;
  top: 0px;
  right:10px;
  width: 150px;
  height: 50px;
  font-size :30px;
  background-color:Orange;
}
 div.b1
 {
     position: absolute;
  top: 100px;
  left:380px;
  width: 150px;
  height: 150px;
  font-size :30px;      
 }
 div.b3
 {     position: absolute;
  top: 100px;
  right:380px;
  width: 150px;
  height: 150px;
  font-size :30px; 
 }

        .style1
        {
            height: 98px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class ="header">
<div class="user">
   
    <asp:Label ID="Label" runat="server" Text="Welcome....."></asp:Label>
    </div> 
    <div class="logout">
    <asp:Button ID="logout" Width="90px" class="cc" runat="server" Text="Back" 
            onclick="logout_Click1" UseSubmitBehavior="False" ValidationGroup="t" 
            ForeColor="Black"/>
    </div>
    </div>
     <div  class="box" >
 <table class="style1">
        <tr>
            <td class="style2">
                Student Name</td>
            <td class="style3">
                <asp:TextBox class="text" ID="un" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Student Name is required" ControlToValidate="un" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
       <tr>
            <td class="style2">
                Student ID</td>
            <td class="style3">
                <asp:TextBox class="text" ID="sid" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Student ID is required" ControlToValidate="sid" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="style2">
                Fee Receipt</td>
            <td class="style3">
                <asp:TextBox class="text" ID="frn" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Fee Receipt is required" ControlToValidate="frn" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="style2">
              Father Name</td>
            <td class="style3">
                <asp:TextBox class="text"  ID="fname" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Father Name is required" ControlToValidate="fname" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="style2">
                Course</td>
            <td class="style3">
                           <asp:DropDownList ID="course" class ="drop" runat="server" Height="48px" 
                    Width="330px" ForeColor="Black" CausesValidation="True">
                    <asp:ListItem>Select Course</asp:ListItem>
                    <asp:ListItem>B.Tech</asp:ListItem>
                    <asp:ListItem>M.Tech</asp:ListItem>
                    <asp:ListItem>B.Sc.</asp:ListItem>
                    <asp:ListItem>M.Sc.</asp:ListItem>
                    <asp:ListItem>Ph.D.</asp:ListItem>
                      <asp:ListItem>B.Ed.</asp:ListItem>
                      <asp:ListItem>M.Ed.</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Stream is required" ControlToValidate="course" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="style2">
               Branch</td>
            <td class="style3">
                           <asp:DropDownList ID="branch" class ="drop" runat="server" Height="48px" 
                    Width="330px" ForeColor="Black" CausesValidation="True">
                    <asp:ListItem>Select Branch</asp:ListItem>
                     <asp:ListItem>Biotechnology</asp:ListItem>
                    <asp:ListItem>Bioinformatics</asp:ListItem>
                      <asp:ListItem>Civil Engineering</asp:ListItem>
                    <asp:ListItem>Computer Science & Engineering</asp:ListItem>
                       <asp:ListItem>Dairy Technology</asp:ListItem>
                    <asp:ListItem>Electronic & Communication Engineering</asp:ListItem>
                    <asp:ListItem>Electrical Engineering</asp:ListItem>
                    <asp:ListItem>Machanical Engineering</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Branch is required" ControlToValidate="branch" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         </tr>
          <tr>
            <td class="style5">
                Semester</td>
            <td class="style6">
                <asp:DropDownList ID="semester" class ="drop" runat="server" Height="48px" 
                    Width="330px" ForeColor="Black">
                    <asp:ListItem>Select Semester</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="semester" ErrorMessage="Select  Semester" ForeColor="Red" 
                      ValidationGroup="tr1"  InitialValue="Select  Semester"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="style2">
                DOB</td>
            <td class="style3">
                <asp:TextBox class="text"  ID="dob" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="DOB is required" ControlToValidate="dob" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="style2">
               Address</td>
            <td class="style3">
                <asp:TextBox class="text"  ID="address" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Address is required" ControlToValidate="address" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="style2">
               Phone Number</td>
            <td class="style3">
                <asp:TextBox class="text"  ID="phone" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="Phone numberis required" ControlToValidate="phone" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        
        <tr>
            <td class="style2">
                E-Mail</td>
            <td class="style3">
                <asp:TextBox class="text"  ID="email" runat="server" Width="300px" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="E-Mail Required" ControlToValidate="email" ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="Not Valid E-Mail" ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
       </tr>
       <tr>
       <td>Upload Image</td>
       <td>
           <asp:FileUpload ID="FileUpload1" runat="server" /></td>
       <td>
           <asp:Label ID="Label2" runat="server" Text="* Image must be passport size" 
               ForeColor="Red"></asp:Label></td>
       </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style1">
                <asp:Button class="submit"  ID="Button1" runat="server" 
                    onclick="Button1_Click" Text="Submit" 
                    Width="120px" ValidationGroup="tr1" />
                </td>
            <td class="style1">
                <asp:Label ID="li" runat="server" ForeColor="Fuchsia"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
            <td>
                &nbsp;</td>
        </tr> 
    </table>
    </div>
    </form>
</body>
</html>
