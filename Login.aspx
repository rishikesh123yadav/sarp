<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >

    <title></title>
    <style type="text/css">

            
      body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: #34495e;
}

.box{
  width: 500px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #191919;
  text-align: center;
}
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width: 280px;
  border-color: #2ecc71;
}
.box input[type = "submit"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type = "submit"]:hover{
  background: #2ecc71;
}

        #form1
        {
            font-weight: 700;
            font-size: xx-large;
            
        }
        .style8
        {
            font-weight: normal;
        }
        .avtar
        {
            height: 41px;
            width: 74px;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form class ="box" id="form1" runat="server">



<h1>Login</h1>
                <asp:TextBox ID="UserName" input type ="text" placeholder="Username" runat="server" Width="171px"></asp:TextBox>
                <span class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please enter UserName" style="font-size: large" 
                    ControlToValidate="UserName" ForeColor="Red"></asp:RequiredFieldValidator>
         
       
                <asp:TextBox ID="Password" input type="password" name="" placeholder="Password" runat="server" TextMode="Password" Width="171px"></asp:TextBox>
                <span class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please enter Password" style="font-size: large" 
                    ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </span>
          
          
                <asp:Button ID="Button_Login"  input type="submit" value ="Login" runat="server" onclick="Button1_Click"  Text="Login" />
                    <asp:Label ID="l1" runat="server" ForeColor="White" font-size="15px"
        Text=""></asp:Label><div>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" font-size="15px" 
        NavigateUrl="~/sarp.aspx">Home</asp:HyperLink>
    </div>
    </form>
</body>
</html>
