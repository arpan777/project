<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addyear.aspx.cs" Inherits="addyear" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .styl
        {
        	border-radius:80px;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
            width: 80%;
            height: 212px;
            color:Blue;
        }
        .styl1
        {
        	
        	font-size:larger;
            width: 158px;
        }
        .btn{border-radius:20px;}
        .style13
        {
            
            font-size: larger;
            width: 215px;
        }
        .style14
        {
            height: 36px;
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="styl">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td style="font-size: x-large; color: #FF0000">
                Add Year</td>
        </tr>
        <tr>
            <td align="center" class="style13">
                Year :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="100px" placeholder="1-4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style13">
                Department :<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT [Department] FROM [dep]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="131px" 
                    DataSourceID="SqlDataSource1" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13" align="center">
                <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button8" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="38px" Text="SUBMIT" Width="125px" CssClass="btn" 
                    
                    onmouseover="this.style.backgroundColor='red'"
                                    onmouseout="this.style.backgroundColor='#FF9933'" 
                    onclick="Button8_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

