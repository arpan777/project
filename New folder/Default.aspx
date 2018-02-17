<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            top: 3px;
            left: 10px;
            position: absolute;
            height: 578px;
        }
        .style2
        {
            height: 114px;
            background-color: #006666;
        }
        .style3
        {
            height: 48px;
            background-color: #006666;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="menu">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
            
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
            
               <ul>
               <li><a href="#">Help</a></li>
               <li><a href="#">Contact Us</a></li>
               <li><a href="#">About Us</a>
               <ul>
               <li><a href="#">Objectives</a></li>
               <li><a href="#">Onine Exam</a></li>
               <li><a href="#">working</a></li>
               </ul>
               </li>
               <li><a href="#">Home </a></li>
               </ul>
            
            </td>
        </tr>
        <tr>
            <td>
                <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD ATTENDANCE</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                <tr>
                    <td class="style7">
                        Select Standard :
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblstd" runat="server"></asp:Label>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        Select Division :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpdiv" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Button ID="Button7" runat="server" CssClass="btn" onclick="Button7_Click" 
                            Text="Select" />
                    </td>
                    <td>
            <asp:Label ID="lblcnt" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblatt" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </asp:MultiView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
    </table>
     </div>
    </form>
</body>
</html>

