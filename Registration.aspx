<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style  type="text/css">
       #menu ul  {
    list-style :none;
    padding:0px;
    }
     .aa .active
        {
            background-color:#e2b03b;
        }
     #menu ul li
    {
    background-color: #2ecc71;
    border:0px;
    text-align:center;
    height:65px;
    float:left;
    width:25%;
    line-height:65px;
   padding:0px;
    }
    .text{
  border:0;
  background: none;
  display: block;
  margin: 5px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 300px;
  outline: none;
  color:black;
  border-radius: 24px;
  transition: 0.25s;
}

.text:focus{
  width: 280px;
  border-color: #2ecc71;
}
.submit{
  border:0;
  background: #99ffcc;
  display: block;
  margin: 20px auto 20px 0px;
  text-align: left;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: black;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.submit:hover{
  background: #2ecc71;
}
    #menu ul li a
    {
        text-decoration:none;
        color:White;
        display:block;
    }
     #menu ul li a:hover
     {
         background-color: #777;
          height:65px;
     }
        
        * {box-sizing: border-box;
            margin-left: 0px;
            margin-top: 0px;
            text-align: center;
        }


body, html {
  height: 100%;
   margin: 0;
   background-color:#FBEEC1;
  padding: 0;
  font-family: sans-serif;
}
div.box{
  width: 800px;
  padding: 40px;
  position: absolute;
  top: 90%;
  left: 55%;
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

        }
div.header
    {
        height:100px;
       background-color:#34495e;
       padding-bottom:0px;
    }
.cc
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
.tablink:hover {
  background-color: #777;
}

div.logout
{
  position: absolute;
  top: 0px;
  right:10px;
  width: 150px;
  font-size :30px;
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
      
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            height: 26px;
            width: 106px;
        }
              
        .style5
        {
            width: 216px;
        }
      
        .style6
        {
            text-align: left;
            width: 106px;
        }
        .style7
        {
            text-align: left;
            height: 26px;
            width: 143px;
        }
        .style9
        {
            text-align: left;
            width: 264px;
        }
      
        .style11
        {
            text-align: left;
            height: 26px;
            width: 270px;
        }
        .style12
        {
            width: 270px;
        }
        .style15
        {
            height: 62px;
        }
        .style16
        {
            text-align: left;
            width: 270px;
            height: 62px;
        }
        .style17
        {
            width: 216px;
            height: 62px;
        }
        .style18
        {
            text-align: left;
            width: 270px;
        }
        .style19
        {
            width: 264px;
        }
              
    </style>
</head>
<body>
<div class="back">
 <form  id="form2" runat="server">
<div class ="header">
<div class="user">
   
    <asp:Label ID="Label" runat="server" Text="Welcome....." ForeColor="White"></asp:Label>
    </div> 
    <div class="logout">
    <asp:Button ID="logout" Width="120px" class="cc" runat="server" Text="Logout" 
            onclick="logout_Click1" UseSubmitBehavior="False"/>
    </div>
    </div>
     <div id ="menu" >
    <ul class="aa">
     <li><a class="active" href="registration.aspx">Registration</a></li>
     <li><a href="nodues.aspx">No Dues</a></li>
      <li><a href="id1.aspx">Id Card</a></li>
       <li><a href="admitcard123.aspx">Admit Card</a></li></ul>
    </div>
   <div class="box">
   <table align="center">
   <tr>
   <td class="style18">
       <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
   </td>
   <td>
       <asp:TextBox class ="text" ID="name" runat="server"></asp:TextBox>
   </td>
   <td class="style18">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="Student Name Required" CssClass="style2" 
           ControlToValidate="name" ValidationGroup="u"></asp:RequiredFieldValidator>
   </td>
   <td class="style5">
       &nbsp;</td>
   </tr>
   <tr>
   <td class="style8">
       <asp:Label ID="Label2" runat="server" Text="Student ID"></asp:Label>
   </td>
   <td class="style3">
       <asp:TextBox class ="text" ID="sid" runat="server" ReadOnly="True"></asp:TextBox>
   </td>
   <td class="style11">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ErrorMessage="Student ID Required" CssClass="style2" 
           ControlToValidate="sid" ValidationGroup="u"></asp:RequiredFieldValidator>
   </td>
   <td class="style6">
       <asp:Image ID="Image1" runat="server" />
   </td>
   </tr>
   <tr>
   <td class="style18">
       <asp:Label ID="Label3" runat="server" Text="Father Name"></asp:Label>
   </td>
   <td>
       <asp:TextBox class ="text" ID="fname" runat="server"></asp:TextBox>
   </td>
   <td class="style18">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ErrorMessage="Father Name Required" CssClass="style2" 
           ControlToValidate="fname" ValidationGroup="u"></asp:RequiredFieldValidator>
   </td>
   <td class="style5">
       &nbsp;</td>
   </tr>
     <tr>
            <td class="style8">
                <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label></td>
            <td class="style6">
                <asp:DropDownList ID="course" class ="drop" runat="server" Height="46px" 
                    Width="300px" ForeColor="Black">
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
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Stream is required" ControlToValidate="course" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
            <td></td>
        </tr>
         <tr>
            <td class="style8">
                <asp:Label ID="Label5" runat="server" Text="Branch"></asp:Label></td>
            <td class="style6">
                <asp:DropDownList ID="branch" class ="drop" runat="server" Height="46px" 
                    Width="300px" ForeColor="Black">
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
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Branch is required" ControlToValidate="branch" 
                    ForeColor="Red" ValidationGroup="tr1"></asp:RequiredFieldValidator>
            </td>
            <td></td>
         </tr>
          <tr>
            <td class="style8">
                <asp:Label ID="Label6" runat="server" Text="Semester"></asp:Label></td>
            <td class="style6">
                <asp:DropDownList ID="semester" class ="drop" runat="server" Height="46px" 
                    Width="300px" ForeColor="Black">
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
                <td class="style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="semester" ErrorMessage="Select  Semester" ForeColor="Red" 
                      ValidationGroup="tr1"  InitialValue="Select  Semester"></asp:RequiredFieldValidator>
            </td><td></td>
        </tr>
   <tr>
   <td class="style8">
       <asp:Label ID="Label7" runat="server" Text="DOB"></asp:Label>
   </td>
   <td class="style15">
       <asp:TextBox class ="text" ID="dob" runat="server"></asp:TextBox>
   </td>
   <td class="style16">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
           ErrorMessage="DOB Required" CssClass="style2" ControlToValidate="dob" 
           ValidationGroup="u"></asp:RequiredFieldValidator>
   </td>
   <td class="style17">
       </td>
   </tr>
    <tr>
   <td class="style8">
       <asp:Label ID="Label13" runat="server" Text="Address"></asp:Label>
       </td>
   <td>
       <asp:TextBox class ="text" ID="address" runat="server"></asp:TextBox>
   </td>
   <td class="style18">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
           ErrorMessage="Address Required" CssClass="style2" 
           ControlToValidate="address" ValidationGroup="u"></asp:RequiredFieldValidator>
   </td>
   <td class="style8">
       &nbsp;</td>
   </tr>
    <tr>
   <td class="style19">
       <asp:Label ID="Label12" runat="server" text-align="center" Text="Phone Number"></asp:Label>
   </td>
   <td>
       <asp:TextBox text-align="center" class ="text" ID="phone" runat="server"></asp:TextBox>
   </td>
   <td class="style18">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
           ErrorMessage="PhoneNumber Required" CssClass="style2" 
           ControlToValidate="phone" ValidationGroup="u"></asp:RequiredFieldValidator>
   </td>
   <td class="style8">
       &nbsp;</td>
   </tr>
    <tr>
   <td class="style19">
       <asp:Label ID="Label9" runat="server" Text="E-Mail"></asp:Label>
   </td>
   <td>
       <asp:TextBox class ="text" ID="email" runat="server"></asp:TextBox>
   </td>
   <td class="style18">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
           ErrorMessage="E-Mail Required" CssClass="style2" ControlToValidate="email"   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
           ValidationGroup="u"></asp:RequiredFieldValidator>
   </td>
   <td class="style5">
       &nbsp;</td>
   </tr>
    <tr>
       <td class="style8">Upload Image</td>
       <td>
           <asp:FileUpload ID="FileUpload1" runat="server" /></td>
       <td class="style12">
           <asp:Label ID="Label8" runat="server" Text="* Image must be passport size" 
               ForeColor="Red"></asp:Label> 
        </td>
       <td class="style7">&nbsp;</td>
       </tr>
       <tr>
   <td class="style9">
       &nbsp;</td><td>
            <asp:Button class="submit" ID="Button1" runat="server" Text="submit" 
           onclick="Button1_Click" Width="167px" ValidationGroup="u" /></td>
   <td class="style12"> &nbsp;</td>
   <td class="style7"> &nbsp;</td>
   </tr>
   </div>
  
    </form>
      </div>
</body>
</html>
