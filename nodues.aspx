<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nodues.aspx.cs" Inherits="nodues" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            text-align: center;
            margin-top: 0px;
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
  top: 85%;
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

        }
div.header
    {
        height:100px;
       background-color:#34495e;
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
     <li><a href="registration.aspx">Registration</a></li>
     <li><a class="active" href="nodues.aspx">No Dues</a></li>
      <li><a href="id1.aspx">Id Card</a></li>
       <li><a href="admitcard123.aspx">Admit Card</a></li></ul>
    </div>
    <div>
    <pre>
 &nbsp;
  &nbsp;
   &nbsp;
  &nbsp;
     &nbsp;
     &nbsp;
      </pre>
        <asp:Label ID="Label2" runat="server" 
            Text="* Hello You can fill Your NoDues form  when Your Department Allow." 
            ForeColor="Red"></asp:Label>
            <pre></pre>
        <asp:Button ID="NoDuesB" class="cc1" runat="server" Enabled="false"  
            Text="No Dues Form" onclick="NoDuesB_Click"  />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
