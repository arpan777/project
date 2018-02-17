<%@ Page Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="passwordstaff.aspx.cs" Inherits="passwordstaff" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .sty123
        {
        	 color:Blue;
        	 font-size:larger;
        	background-color:Transparent;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
        	border-radius:80px;
            width: 100%;
            height: 210px;
        }
        .style11
        {
        	color:Red;
        	font-size:x-large;
            height: 47px;
        }
        .btn{border-radius:20px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="sty123">
        <tr>
            <td class="style11">
            </td>
            <td class="style11">
                Password</td>
        </tr>
        <tr>
            <td align="center">
                Old Password
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="147px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                New Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="147px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                Confirm Password</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="147px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="!!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button10" runat="server" BackColor="Blue" ForeColor="White" 
                    Text="SUBMIT" Width="141px" Height="31px" 
                    onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    CssClass="btn" onclick="Button10_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

