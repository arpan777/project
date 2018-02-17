<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adddep.aspx.cs" Inherits="adddep" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .stylea
        {
        	border-radius:80px;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
            width: 80%;
            height: 209px;
        }
        .style19
        {
        	color:Red;
        	font-size:x-large;
            height: 72px;
        }
         .tetbox
        {
        	border-bottom:1px solid black;
        	background:transparent;
        	outline:none;
        	color:White;
        	font-size:large;
        	border-left-style:none;
        	border-right-style:none;
        	border-top-style:none;
            margin-left: 0px;
        }
        	::placeholder
{
    color:blue;
    font-weight:normal;
    
}
.btn{border-radius:20px;}
        .style11
        {
            color: Red;
            font-size: x-large;
            height: 72px;
            width: 75px;
        }
        .style12
        {
            width: 75px;
            height: 34px;
        }
        .style13
        {
            width: 75px;
            height: 50px;
        }
        .style14
        {
            height: 50px;
        }
        .style15
        {
            width: 75px;
            height: 63px;
        }
        .style16
        {
            height: 63px;
        }
        .style17
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="stylea">
        <tr>
            <td class="style11">
            </td>
            <td class="style19">
                Add Department</td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style14">
                <asp:TextBox ID="TextBox1" runat="server" Width="277px" CssClass="tetbox" placeholder="Department name"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                </td>
            <td align="center" class="style16">
                <asp:Button ID="Button8" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="37px" Text="SUBMIT" Width="169px" 
                    onmouseover="this.style.backgroundColor='red'"
                                    onmouseout="this.style.backgroundColor='#FF9933'" 
                    CssClass="btn" onclick="Button8_Click"/>
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td align="center" class="style17">
                <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

