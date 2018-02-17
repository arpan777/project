<%@ Page Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="staff" Title="Untitled Page" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .styl2
        {
        	background-color:Transparent;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
            border-radius:80px;
            width: 100%;
            height: 356px;
            color:Blue;
        }
        .style11
        {
        	color:Red;
        	font-size:x-large;
            height: 52px;
        }
        .style12
        {
            height: 8px;
        }
        .style13
        {
            height: 52px;
            width: 186px;
        }
        .style14
        {
            height: 8px;
            width: 186px;
        }
        .style15
        {
        	font-size:larger;
            width: 186px;
            
        }
        .button1
        {
        	border-radius:20px; 
        	}
       
        .style16
        {
            color: Red;
            font-size: x-large;
            height: 52px;
            width: 244px;
        }
        .style17
        {
            height: 8px;
            width: 244px;
        }
        .style18
        {
            width: 244px;
        }
       
        .style19
        {
            font-size: larger;
            width: 186px;
            height: 10px;
        }
        .style20
        {
            width: 244px;
            height: 10px;
        }
        .style21
        {
            height: 10px;
        }
        .style22
        {
            font-size: larger;
            width: 186px;
            height: 5px;
        }
        .style23
        {
            height: 5px;
            width: 244px;
        }
        .style24
        {
            height: 5px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
    function PreventBack()
    {
    window.history.forward();
    setTimeout("preventBack()",0);
    window.onunload=function(){null};
    }
    </script>
    <table align="center" cellpadding="0" cellspacing="0" class="styl2">
        <tr>
            <td class="style13">
            </td>
            <td class="style16">
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
               
                <asp:Label ID="Label5" runat="server"><%#name %></asp:Label>
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
                <asp:Label ID="Label6" runat="server"><%#dep %></asp:Label>
                                    </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
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
                City:</td>
            <td class="style18">
                <asp:TextBox ID="TextBox4" runat="server" Width="181px" placeholder=<%#d %>></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style19">
                </td>
            <td class="style20">
            </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style22">
                </td>
            <td class="style23">
                </td>
            <td class="style24">
                </td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" Height="31px" Text="UPDATE" 
                    Width="123px" 
                    BackColor="Blue"
                    
                      onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    BorderWidth="0px" Font-Size="13pt" CssClass="button1" onclick="Button10_Click" 
                   />
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
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

