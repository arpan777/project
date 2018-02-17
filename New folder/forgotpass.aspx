<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
 <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       .stt
       {
       	color:white;
       	background-color:black;
       	width:235px;
       	}
        .style1
        {
            width: 100%;
            height: 636px;
             background-image:url("img.jpg");
            background-repeat:no-repeat;
            background-size:cover;
        }
        .style2
        {
        	background-color:White;
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
        	
            height: 155px;
            width: 1317px;
        }
        .style3
        {
            height: 48px;
            width: 1317px;
        }
        .style9
        {
        	background-color:black;
            width: 1317px;
            height: 15px;
        }
        .style11
        {
        } 
        
.btn{border-radius:20px;}
        .style12
        {
         background-color:White;
        	box-shadow:0 15px 25px rgba(0,0,0,.5);          
            width: 51%;
            height: 216px;
        }
        .style13
        {
            width: 319px;
             text-align:center;
        }
        .style14
        {
            height: 73px;
             text-align:center;
        }
        .style15
        {
            height: 51px;
           
            
        }
        .style16
        {
            height: 60px;
            color:Red;
            font-size:larger;
            text-align:center;
        }
        .style17
        {
        	text-align:center;
            height: 51px;
            width: 319px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div ID="menu">
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2" align="center" >
            
              
            
               <img src="ealogo.png" width="80%" style="height: 150px"/></td>
            </tr>
            <tr>
                <td class="style3">
                
            
             <ul>
               <li><a href="Aboutus.aspx">About Us</a></li>
               <li><a href="#">Contact Us</a>
               <ul class="stt">
              Email:arpanbobkhaling@gmail.com
               Mobile:+918759429520
              
               </ul></li>
               <li><a href="adminlogin.aspx">Admin Panel</a>
               </li>
               <li><a href="home.aspx">Home </a></li>
               </ul>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
        </tr>
       
        <tr >
            <td class="style11" align="center">
                <table cellpadding="0" cellspacing="0" class="style12" >
                    <tr>
                        <td class="style16" colspan="2" bgcolor="#FFFFCC">
                            FORGOT PASSWORD</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Enter your Email_id</td>
                                <td align="left" class="style15">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style14" colspan="2">
                                    <asp:Button ID="Button1" runat="server" BackColor="Blue" ForeColor="White" 
                                        Height="32px" Text="SEND PASSWORD" Width="233px" CssClass="btn" 
                                        onclick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Password is send to your Email address</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>


            </tr>
            
        </table>
    
    </div>
    </form>
</body>

</html>
