<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
     <script type="text/javascript">
  
    function DisableBackbutton(){
    window.history.forward();
    }
   DisableBackbutton();
    window.onload= DisableBackbutton;
    window.onpageshow=function(evt)
    {if(evt.persisted) DisableBackbutton()}
    window.onunload=function()
    {
    void(0)
    }
    </script>
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
        }
        .style10
        {
            width: 1317px;
            
        }
        .style11
        {
            width: 1337px;
        } 
        .style12
        {
        	box-shadow:0 15px 25px rgba(0,0,0,.5);
        	border-radius:80px;
            width: 95%;
            height: 253px;
        }
         .tetbox
        {
        	border-bottom:1px solid BLUE;
        	background:transparent;
        	outline:none;
        	color:White;
        	font-size:large;
        	border-left-style:none;
        	border-right-style:none;
        	border-top-style:none;
        	
        	}
        	::placeholder
{
    color:GRAY;
    font-weight:normal;
    
}
.btn{border-radius:20px;}
        .style13
        {
            width: 181px;
        }
        .f
        {
         background-color:Transparent;
        	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div ID="menu">
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2" align="center" colspan="2" >
            
              
            
               <img src="ealogo.png" width="80%" style="height: 150px"/></td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                
            
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
            <td class="style9" colspan="2">
                &nbsp;</td>
        </tr>
       
        <tr >
            <td class="style11">
                <div id="slider" >
<figure>
&nbsp;<img src="111109-grove-554.jpg" width="70%" height="400px"  />
<img src="student-folio.jpg"width="70%" height="400px" align="middle"/>
<img src="attendance.jpg"width="70%" height="400px"/>
<img src="kids-in-classroom2.jpg"width="70%" height="400px"/>
<img src="nclass_high_classroom_attendance-e1423939401659.jpg"width="70%" height="400px" />


</figure>	

</div></td>


            <td class="style10">
                <table align="center" cellpadding="0" cellspacing="0" class="style12">
                    <tr>
                        <td align="center" style="font-size: x-large; color: #FF0000" colspan="2">
                            LOGIN</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" placeholder="Username" 
                                        Width="248px" CssClass="tetbox" ForeColor="Black"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" placeholder="Password" 
                                        Width="248px" CssClass="tetbox" ForeColor="Black" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Larger" 
                                        ForeColor="#FF66FF" GroupName="ch" Text="Staff" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Larger" 
                                        ForeColor="#FF66FF" GroupName="ch" Text="Student" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="Button1" runat="server" ForeColor="White" Height="31px" 
                                        Text="SUBMIT" Width="150px"
                                        onmouseover="this.style.backgroundColor='red'"
                                    onmouseout="this.style.backgroundColor='#FF9933'" CssClass="btn" 
                                        BackColor="#FF9933" onclick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" ForeColor="Blue" 
                                        Text="forgot password?" Width="105px" CssClass="f" BorderWidth="0px" 
                                        onclick="Button2_Click" />
                                </td>
                                <td align="center">
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
