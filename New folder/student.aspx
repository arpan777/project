<%@ Page Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.st1
{
background-color:Transparent;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
            border-radius:80px;
            width: 100%;
            height: 356px;
            color:blue;
            }
            
       .style11
        {
        	color:Red;
        	font-size:x-large;
            height: 52px;
    }
    .btn{border-radius:20px;}
            .style12
    {
        height: 20px;
    }
    .style13
    {
        height: 6px;
    }
    .style14
    {
        height: 22px;
    }
    .style15
    {
        height: 18px;
    }
    .style16
    {
        height: 12px;
    }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="st1" 
        style="width: 700px; height: 366px;">
        <tr>
            <td class="style11">
            </td>
            <td class="style11">
                My Profile</td>
            <td class="style11">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style17">
            </td>
            <td class="style12">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td align="center" class="style15">
                Name :</td>
            <td class="style18">
                <asp:Label ID="Label2" runat="server" Font-Size="Large"><%#name %></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style15">
                Deparment :</td>
            <td class="style18">
                <asp:Label ID="Label3" runat="server" Font-Size="Large"><%#dep %></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" align="center">
                Year :</td>
            <td class="style18">
                <asp:Label ID="Label4" runat="server" Font-Size="Large"><%#year %></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style15">
                Email :</td>
            <td class="style18">
                <asp:TextBox ID="TextBox1" runat="server" Width="181px" placeholder=<%#a %>></asp:TextBox>
            </td>
            <td align="center" rowspan="5">
                <asp:Image ID="Image3" runat="server" Width="86px" />
                                    </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style15">
                Mobile No. :</td>
            <td class="style18">
                <asp:TextBox ID="TextBox2" runat="server" Width="181px" placeholder=<%#b %>></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style15">
                Address :</td>
            <td class="style18">
                <asp:TextBox ID="TextBox3" runat="server" Width="181px" placeholder=<%#c %>></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style15">
                State :</td>
            <td class="style18">
                <asp:TextBox ID="TextBox4" runat="server" Width="181px" placeholder=<%#d %>></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style13">
                </td>
            <td class="style13">
            </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style16">
                </td>
            <td class="style16">
                </td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" Height="33px" Text="UPDATE" 
                    Width="123px" 
                    BackColor="Blue"
                    
                      onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    BorderWidth="0px" Font-Size="13pt" CssClass="btn" onclick="Button10_Click" 
              />
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" ForeColor="#0033CC"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

