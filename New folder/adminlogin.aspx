<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminmenu" %>

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
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 635px;
             background-image:url("img.jpg");
            background-repeat:no-repeat;
            background-size:cover;
        }
        .style2
        {
            height: 150px;
        }
        .style3
        {
        	
        	background:rgba(0,0,0,.1);
        	box-shadow:0 10px 20px rgba(0,0,0,.5);
        	border-radius:80px;
            width: 48%;
            height: 262px;
        }
        .style5
        {
        	color:Red;
        	font-size:x-large;
            height: 57px;
        }
        .tetbox
        {
        	border-bottom:1px solid #fff;
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
    color:yellow;
    font-weight:normal;
    
}
        .style6
        {
            width: 772px;
        }
            .btn
            {
            border-radius:20px;}
        
        .style7
        {
            width: 106px;
        }
        
        .style8
        {
            height: 59px;
        }
        
        .style9
        {
            height: 7px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 638px">
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td align="center" class="style2" colspan="3" bgcolor="White">
                    <asp:Image ID="Image1" runat="server" Height="151px" ImageUrl="~/ealogo.png" 
                        Width="1173px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" colspan="3" bgcolor="Black">
                </td>
            </tr>
            <tr>
                <td  class="style7">
                    &nbsp;</td>
                <td  align="right" class="style6">
                    <table cellpadding="0" cellspacing="0" class="style3">
                        <tr>
                            <td align="center" class="style5">
                                Admin Login</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:TextBox ID="TextBox1" runat="server" Width="294px" CssClass="tetbox" placeholder="User Name"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:TextBox ID="TextBox2" runat="server" Width="286px" CssClass="tetbox" 
                                    placeholder="Password" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style8">
&nbsp;<asp:Button ID="Button1" runat="server" Height="32px" Text="LOGIN" Width="140px" BackColor="#FF9933" 
                                    ForeColor="White" 
                                    onmouseover="this.style.backgroundColor='red'"
                                    onmouseout="this.style.backgroundColor='#FF9933'" CssClass="btn" 
                                    onclick="Button1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td >
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
