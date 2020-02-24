<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admitcard.aspx.cs" Inherits="admitcard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <script language="javascript">
       function printdiv(printpage) {
           var headstr = "<html><head><title></title></head><body>";
           var footstr = "</body>";
           var newstr = document.all.item(printpage).innerHTML;
           var oldstr = document.body.innerHTML;
           document.body.innerHTML = headstr + newstr + footstr;
           window.print();
           document.body.innerHTML = oldstr;
           return false;
       }
</script>

    <style  type="text/css">
      #menu ul  {
    list-style :none;
    padding:0px;
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
  height: 424px;
   margin: 0;
   background-color:#FBEEC1;
  padding: 0;
  font-family: sans-serif;
}
div.box{
  width: 800px;
  padding: 40px;
  position: absolute;
  top: 60%;
  left: 45%;
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
 .aa .active
        {
            background-color:#e2b03b;
        }
.cc:hover
{
     background-color:#34495e;
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
      
        .style1
        {
            width: 100%;
            background-color: #FF9999;
        }
                      
        .style6
        {
            width: 207px;
            height: 55px;
            text-align: left;
        }
        .style7
        {
            width: 238px;
            height: 55px;
            text-align: left;
        }
        .style8
        {
            width: 207px;
            height: 58px;
            text-align: left;
        }
        .style9
        {
            width: 238px;
            height: 58px;
            text-align: left;
        }
        .style10
        {
            width: 207px;
            text-align: left;
            height: 54px;
        }
        .style11
        {
            width: 238px;
            text-align: left;
            height: 54px;
        }
        .style12
        {
            width: 207px;
            height: 57px;
            text-align: left;
        }
        .style13
        {
            width: 238px;
            height: 57px;
            text-align: left;
        }
        .style14
        {
            width: 207px;
            height: 63px;
            text-align: left;
        }
        .style15
        {
            width: 238px;
            height: 63px;
            text-align: left;
        }
              
        .style16
        {
            color: #0099FF;
        }
        .style17
        {
            color: #339933;
            font-weight: 700;
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
     <li><a href="nodues.aspx">No Dues</a></li>
      <li><a href="id1.aspx">Id Card</a></li>
       <li><a class="active" href="admitcard123.aspx">Admit Card</a></li></ul>
    </div>
    <div class="box">
        <asp:Panel ID="Panel1" align="center" runat="server" Width="900px" 
            Height="400px">
            <div id ="div_print">
              <table class="style1" width="800px"  bgcolor="#FF66CC" align="center">
                 <tr><td><asp:Label ID="Label1" runat="server" 
                         Text="SAM HIGGINBOTTOM UNIVERSITY OF AGRICULTURE, TECHNOLOGY & SCIENCE" 
                         CssClass="style17"></asp:Label></td></tr>
                 <tr><td><asp:Label ID="Label9" runat="server" 
                         Text="(U.P.State Act No.35 of 2016, as passed by the Uttar Pradesh Legislature)" 
                         CssClass="style17"></asp:Label></td></tr>
                 <tr><td><asp:Label ID="Label10" runat="server" 
                         Text="P.O.Agriculture Institute, Allahabad 211007,U.P.INDIA" CssClass="style17"></asp:Label></td></tr>
                      <tr>
                          <td class="style16">
                              Admitcard</td>
                      </tr>
            </table>
                <table align="center" bgcolor="#FF66CC" class="style1">
                    <tr><td></td><td></td>
                        <td class="style6">
                            Student Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                        <td class="style7">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td rowspan="2">
                            <asp:Image ID="Image1" runat="server" Width="100px" />
                        </td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td rowspan="6">
                            &nbsp;</td>
                        <td rowspan="6">
                        </td>
                    </tr>
                    <tr><td></td><td></td>
                        <td class="style6">
                            Student ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                        <td class="style7">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr><td></td><td></td>
                        <td class="style8">
                            Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                        <td class="style9">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td rowspan="2" colspan="14">
                            &nbsp;</td>
                    </tr>
                    <tr><td></td><td></td>
                        <td class="style10">
                            Branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        </td>
                        <td class="style11">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr><td></td><td></td>
                        <td class="style12">
                            Semester&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                        <td class="style13">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td colspan="14">
                            &nbsp;</td>
                    </tr>
                    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td></td>
                        <td class="style14">
                            Date Of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                        <td class="style15">
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td colspan="14">
                            &nbsp;</td>
                    </tr>
                </table>






            </div>
            <input  name="b_print"  type="button" class="ipt"   onclick="printdiv('div_print');" value=" Print Admit Card ">

        </asp:Panel>
    </div>
    </form>
      </div>
      
</body>
</html>
