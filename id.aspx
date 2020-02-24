<%@ Page Language="C#" AutoEventWireup="true" CodeFile="id.aspx.cs" Inherits="id" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <style type="text/css">
        
         


body, html {
  height: 100%;
   margin: 0;
   background-color:#34495E;
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
  top: 40%;
  left: 50%;
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
  background:#8EE4AF ;
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
.cc:hover
{
    background-color:#A30D3c;
    border:2px solid #A30D3c;
}
.cc1:hover
{
    background-color: #A30D3c;
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
      
     
         .style2
         {
             width: 100%;
         }
         .style3
         {
             width: 186px;
         }
         .style4
         {
             width: 186px;
             text-align: right;
         }
         .style5
         {
             width: 284px;
         }
      
     
         .style6
         {
             width: 186px;
             height: 22px;
         }
         .style7
         {
             width: 284px;
             height: 22px;
         }
         .style8
         {
             height: 22px;
         }
         #form1
         {
             text-align: center;
         }
      
     
         </style>
</head>
<body>
    <form class="box" id="form1" runat="server">
<div class ="header">
<div class="user">
   
    <asp:Label ID="Label" runat="server" Text="Welcome....."></asp:Label>
    </div> 
    <div class="logout">
    <asp:Button ID="logout" Width="120px" class="cc" runat="server" Text="Logout" 
            onclick="logout_Click1" UseSubmitBehavior="False"/>
    </div>
    </div>
    <div class="box">
    <table class="style2" align="center">
        <tr>
            <td class="style4">
                Enter Student ID</td>
            <td class="style5">
                <asp:TextBox ID="sid" placeholder="Enter Student ID" input type ="text" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" 
                    ErrorMessage="ID Required" ForeColor="Red" ControlToValidate="sid" 
                    ValidationGroup="t"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Enter OTP</td>
            <td class="style5">
                <asp:TextBox ID="otp"   placeholder="Enter OTP" input type = "text" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="OTP Required" ForeColor="Red" ControlToValidate="otp" 
                    ValidationGroup="t"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" class="cc" runat="server" Text="Submit" 
                    ValidationGroup="t" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="style8">
                </td>
        </tr>
    </table>
     </div>
    </form>
  
</body>
</html>
