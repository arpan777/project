<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet3.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-weight: normal;
            color: #000000;
            font-size: x-large;
            text-align: center;
        }
        .style2
        {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h2 class="style2" >Online&nbsp; Examination</h2>
    <div class="loginBox">
    <h1 class="style1">&nbsp;</h1>
    </div>
   
    <input type="text" name="" placeholder="UserName" />
    <input type="password" name="" placeholder="Password" />
     <input type="submit" name="" value:"LOGIN"/>
     <a href="register.aspx">Sign up</a>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
        SelectCommand="SELECT [IMAGE] FROM [staff]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

