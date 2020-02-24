<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="sarp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: #777;
}

 .bgimg-2, .bgimg-3 {
  position: relative;
  opacity: 0.65;
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

}

.bgimg-2 {
  background-image: url("img_4.jpg");
  min-height: 600px;
}

.bgimg-3 {
  background-image: url("img_6.jpg");
  min-height: 600px;
}

.caption {
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  text-align: center;
  color: #000;
}

.caption span.border {
  background-color: #111;
  color: #fff;
  padding: 18px;
  font-size: 25px;
  letter-spacing: 10px;
}

h3 {
  letter-spacing: 5px;
  text-transform: uppercase;
  font: 20px "Lato", sans-serif;
  color: #111;
}


@media only screen and (max-device-width: 1024px) {
  .bgimg-2, .bgimg-3 {
    background-attachment: scroll;
  }
}
</style>
</head>
<body>

<div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
  <h3 style="text-align:center;">SHUATS AUTOMATED REGISTRATION PORTAL(SARP)</h3>
  <p>Student Automated Registration Portal is a project which will automate the entire process of registration of the students in the university. Main aim of this project is to make the registration process online and easy for the students and the administration as well. It will ease the whole procedure of academic registration. It will facilitate the registration processes so that students will need not to roam in college campus to get their documents signed and submitted. It will allow the students to fill up their forms online at their own will before the examination. And also, the project will allow the students to apply for id card and fill no dues form. 
</p>
</div>

<div class="bgimg-2">
  <div class="caption">
  <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"></span>
  </div>
</div>

<div style="position:relative;">
  <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
  <p>For Academic enquiry just visit. <a href="shiatsmail.edu.in">SHUATS Mail</a>. or for  more information <a href="shuats.edu.in">SHUATS Allahabad.</a> </p>
  </div>
</div>

<div class="bgimg-3">
  <div class="caption">
  <span class="border" style="background-color:transparent;"></span>
  </div>
</div>

<div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
  <h3 style="text-align:center;">SHUATS UNIVERSITY</h3>
  <p>SAM HIGGINBOTTOM UNIVERSITY OF AGRICULTURE, TECHNOLOGY AND SCIENCES(SHUATS), formerly ALLAHABAD AGRICULTURE INSTITUTE, is a grant-in-aid autonomus university in Allahabad,Indiarun by 'Sam Higginbottom Educational and Charitable Society,Allahabad'.It was established in 1910 by Dr.Sam Higginbottom in 1942.</p>
</div>
</body>
</html>
</asp:Content>
