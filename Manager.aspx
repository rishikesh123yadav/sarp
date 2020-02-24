<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    
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
  background:#8EE4AF;
  display: block;
  margin: 20px auto;
  text-align: right;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: black;
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
.cc3
{
 border:0;
  background:Hex={FF,FF,CC};
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
.cc:hover
{
    background-color:#A30D3c;
     border: 2px solid black;
    
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
  right:430px;
  width: 150px;
  height: 150px;
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
  outline: none;
  color:#FFFFCC;
  border-radius: 24px;
  transition: 0.25s;
  }
 div.b3
 {     position: absolute;
  top: 100px;
  right:200px;
  width: 150px;
  height: 150px;
  font-size :30px; 
 }
  div.b4
 {     position: absolute;
  top: 100px;
  left:350px;
  width: 150px;
  height: 150px;
  font-size :30px; 
 }
  div.b5
 {     position: absolute;
  top: 115px;
  left:20px;
 }
  div.b6
 {     position: absolute;
  top: 115px;
  left:180px;
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class ="header">
<div class="user">
   
    <asp:Label ID="Label" runat="server" Text="Welcome....."></asp:Label>
    </div> 
    <div class="logout">
    <asp:Button ID="logout" Width="120px" class="cc" runat="server" Text="Logout" 
            onclick="logout_Click1" UseSubmitBehavior="False"/>
    </div>
    </div>
   <div class="b5">
      <asp:DropDownList ID="session" class ="drop" runat="server" Height="46px" 
                    Width="150px" ForeColor="white" BackColor="#34495E">
                    <asp:ListItem>Select Session</asp:ListItem>
                    <asp:ListItem Value="0">jan-june</asp:ListItem>
                     <asp:ListItem Value="1">july-dec</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
               </div> <div class ="b6">
                 <asp:DropDownList ID="year" class ="drop" runat="server" Height="46px" 
                    Width="150px" ForeColor="white" BackColor="#34495E">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem Value="201920">2019-20</asp:ListItem>
                     <asp:ListItem Value="202021">2020-21</asp:ListItem>
                     <asp:ListItem Value="202122">2021-22</asp:ListItem>
                     <asp:ListItem Value="202223">2022-23</asp:ListItem>
                </asp:DropDownList>
    </div>
     <div class="b4">
     <asp:Button ID="Button4" class="cc1" runat="server" onclick="Button4_Click" 
        Text="Create Session" /></div>
    <div class="b1">
     <asp:Button ID="Button1" class="cc1" runat="server" onclick="Button1_Click" 
        Text="enable no dues" /></div><div class="b2"><asp:Button ID="Button2"  class="cc2" runat="server" onclick="Button2_Click" 
        Text="disable no dues" /></div><div class="b3"><asp:Button ID="Button3"  class="cc3" runat="server" onclick="Button3_Click" 
        Text="Add Student" /></div>
        <hr />
        <asp:ScriptManager ID ="ScriptMannager1" runat ="server"></asp:ScriptManager>
  <asp:Timer ID="Timer1" runat="server" Interval="100" OnTick="Timer1_Tick"></asp:Timer>
  <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
        style="margin-right: 110px; text-align: center; margin-top: 3px;" DataKeyNames="sid" 
        Width="1300px" AutoGenerateDeleteButton="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Student Name" 
                SortExpression="name" >
            </asp:BoundField>
            <asp:BoundField DataField="sid" HeaderText="Student ID" ReadOnly="True" 
                SortExpression="sid" />
            <asp:BoundField DataField="frn" HeaderText="Fee Receipt" SortExpression="frn" />
            <asp:BoundField DataField="fname" HeaderText="Father Name" 
                SortExpression="fname" />
            <asp:BoundField DataField="course" HeaderText="Course" 
                SortExpression="course" />
            <asp:BoundField DataField="branch" HeaderText="Branch" 
                SortExpression="branch" />
            <asp:BoundField DataField="semester" HeaderText="Semester" 
                SortExpression="semester" />
            <asp:BoundField DataField="dob" HeaderText="Date Of Birth" 
                SortExpression="dob" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="Email" HeaderText="E-Mail" SortExpression="Email" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
     </ContentTemplate><Triggers><asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" /></Triggers></asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        
        SelectCommand="SELECT [name], [sid], [frn], [fname], [course], [branch], [semester], [dob], [address], [phone], [Email] FROM [manager]" DeleteCommand="DELETE from [manager] where[sid]=@sid"></asp:SqlDataSource>
   
   
    </form>
</body>
</html>
