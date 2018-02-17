<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

  
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            top: 3px;
            left: 0px;
           
            height: 638px;
        }
        .style2
        {
            background-color:White;
            height: 126px;
        }
        .style5
        {
            height: 11px;
           background-color:White;
        }
        .style7
        {
            height: 410px;
        }
        .style8
        {
        	background-color:Teal;
        	max-width:70%;
            height: 350px;
            }
        .style9
        {
        	background-color:Teal;
            height: 65px;
            
        }
         .style10
        {
        	
            color:Red;
            font-size: x-large;
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="menu">
    <table class="style1" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td class="style2" align="center" >
            
              
            
               <img src="ealogo.png" width="80%" height="100px"/></td>
        
        </tr>
        <tr>
            <td class="style5" bgcolor="White">
            
             <ul>
               <li><a href="#">About Us</a></li>
               <li><a href="#">Contact Us</a>
               <ul>
               <li><a href="#">jgec.ac.in
                jalpaiguri</a></li>
              
               </ul></li>
               <li><a href="admin.aspx">Admin Panel</a>
               </li>
               <li><a href="Default.aspx">Home </a></li>
               </ul>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style8">
                <div id="slider" >
<figure>
&nbsp;<img src="ealogo.png" width="70%" height="90%"  />
<img src="111109-grove-554.jpg"width="70%" height="90%" align="middle"/>
<img src="attendanceonline1.png"width="70%" height="400px"/>
<img src="kids-in-classroom2.jpg"width="70%" height="400px"/>
<img src="student-folio.jpg"width="70%" height="400px"/>


</figure>	

</div>
           
            <td>
                <div class="loginBox">
       <h1 class="style10">LOGIN</h1>
    <form>

    <input type="text" name="" placeholder="UserName" />
    <input type="password" name="" placeholder="Password" />

    <input type="radio" id="Staff" name="ch"/>
     <label for="Staff" >Staff</label>
       <input type="radio" id="Student" name="ch"/>
       <label for="Student">Student</label>
       
     <input type="button" name="" value:"LOGIN"/>
     
    </form></div></td>
        </tr>
       
    </table>
     </div>
    </form>
</body>
</html>
