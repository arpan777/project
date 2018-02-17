<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addstaff.aspx.cs" Inherits="addstaff" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .styl
        {
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
        	border-radius:80px;
            width: 100%;
            height: 440px;
        }
        .styl1
        {
        	color:blue;
        	text-align:center;
            width: 186px;
        }
        .style11
        {
            width: 186px;
            height: 54px;
        }
        .style12
        {
        	color:Red;
        	font-size:x-large;
            height: 46px;
        }
        .style13
        {
            width: 707px;
            height: 13px;
        }
        .style14
        {
            height: 13px;
        }
          .tetbox
        {
        	border-bottom:1px solid purple;
        	background:transparent;
        	outline:none;
        	width:180px;
        	color:black;
        	font-size:large;
        	border-left-style:none;
        	border-right-style:none;
        	border-top-style:none;
            margin-left: 0px;
        }
        .btn{border-radius:20px;}
        .style15
        {
            color: Red;
            font-size: x-large;
            height: 46px;
            width: 273px;
        }
        .style16
        {
            height: 13px;
            width: 273px;
        }
        .style17
        {
            width: 273px;
        }
        .style25
        {
            width: 273px;
            height: 32px;
        }
        .style26
        {
        }
        .style27
        {
            color: blue;
            text-align: center;
            width: 707px;
            height: 38px;
        }
        .style28
        {
            width: 273px;
            height: 38px;
        }
        .style30
        {
            width: 707px;
            height: 46px;
        }
        .style32
        {
            color: Red;
            font-size: x-large;
            height: 46px;
            width: 183px;
        }
        .style34
        {
        }
        .style35
        {
            width: 183px;
            height: 13px;
        }
        .style37
        {
            height: 10px;
            width: 273px;
        }
        .style39
        {
            color: blue;
            text-align: center;
            width: 186px;
            height: 24px;
        }
        .style40
        {
            width: 273px;
            height: 24px;
        }
        .style41
        {
            height: 24px;
        }
        .style42
        {
            color: blue;
            text-align: center;
            width: 707px;
            height: 12px;
        }
        .style43
        {
            height: 12px;
            width: 273px;
        }
        .style44
        {
            height: 12px;
        }
        .style45
        {
            color: blue;
            text-align: center;
            width: 707px;
            height: 28px;
        }
        .style46
        {
            width: 273px;
            height: 28px;
        }
        .style47
        {
            height: 28px;
        }
        .style48
        {
            color: blue;
            text-align: center;
            width: 707px;
            height: 32px;
        }
        .style50
        {
            height: 32px;
        }
        .style51
        {
            color: blue;
            text-align: center;
            width: 707px;
            height: 46px;
        }
        .style52
        {
            width: 273px;
            height: 46px;
        }
        .style53
        {
            height: 46px;
        }
        .style55
        {
            color: blue;
            text-align: center;
            width: 186px;
            height: 34px;
        }
        .style56
        {
            height: 34px;
        }
        .style57
        {
            color: blue;
            text-align: center;
            width: 707px;
            height: 34px;
        }
        .style58
        {
            width: 273px;
            height: 34px;
        }
        .style59
        {
            color: blue;
            text-align: center;
            width: 707px;
            height: 24px;
        }
        .style60
        {
            color: blue;
            text-align: center;
            width: 707px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="styl">
        <tr>
            <td class="style30">
            </td>
            <td class="style15">
                Add Staff</td>
            <td class="style32">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style16">
            </td>
            <td class="style35">
            </td>
            <td class="style14">
            </td>
        </tr>
        <tr>
            <td class="style45">
                Name :</td>
            <td class="style46">
                <asp:TextBox ID="TextBox1" runat="server"  CssClass="tetbox"></asp:TextBox>
            </td>
            <td class="style47">
                </td>
            <td class="style47">
                </td>
        </tr>
        <tr>
            <td class="style48">
                Email :</td>
            <td class="style25">
                <asp:TextBox ID="TextBox2" runat="server"  CssClass="tetbox"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="!!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style50">
                </td>
            <td class="style50">
                </td>
        </tr>
        <tr>
            <td class="style48">
                Contact No. :</td>
            <td class="style25">
                <asp:TextBox ID="TextBox3" runat="server"  CssClass="tetbox"></asp:TextBox>
            </td>
            <td class="style50">
                </td>
            <td class="style50">
                </td>
        </tr>
        <tr>
            <td class="style48">
                Qualification :</td>
            <td class="style25">
                <asp:TextBox ID="TextBox4" runat="server"  CssClass="tetbox"></asp:TextBox>
            </td>
            <td class="style50" align="center" colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn" 
                    Font-Size="Large" ForeColor="White" Width="291px" />
            </td>
        </tr>
        <tr>
            <td class="style51">
                Address :</td>
            <td class="style52">
                <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"  
                    CssClass="tetbox" Height="31px"></asp:TextBox>
            </td>
            <td class="style53">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT [Department] FROM [dep]"></asp:SqlDataSource>
            </td>
            <td class="style53">
                </td>
        </tr>
        <tr>
            <td class="style59">
                City :</td>
            <td class="style40">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="tetbox"></asp:TextBox>
            </td>
            <td class="style39">
                Username :</td>
            <td class="style41">
                <asp:TextBox ID="TextBox7" runat="server"  CssClass="tetbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style60">
                Pincode :</td>
            <td class="style37">
                <asp:TextBox ID="TextBox6" runat="server"  CssClass="tetbox"></asp:TextBox>
            </td>
            <td class="styl1">
                Password :</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"  CssClass="tetbox" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style57">
                Gender :</td>
            <td class="style58">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px"  
                    CssClass="tetbox">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style55">
                Confirm Password :</td>
            <td class="style56">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="!!"></asp:CompareValidator>
                <asp:TextBox ID="TextBox9" runat="server"  CssClass="tetbox" 
                    TextMode="Password"></asp:TextBox>
                                    </td>
        </tr>
        <tr>
            <td class="style27">
                Department Name :</td>
            <td class="style28">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px"  
                    CssClass="tetbox" DataSourceID="SqlDataSource1" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
            </td>
            <td class="styl1">
                &nbsp;</td>
            <td class="style26">
                                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style43">
                </td>
            <td class="style44">
                </td>
            <td class="style44">
                </td>
        </tr>
        <tr>
            <td class="style60">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style34">
                <asp:Button ID="Button8" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="38px" Text="SUBMIT" Width="181px" onmouseover="this.style.backgroundColor='red'"
                                    onmouseout="this.style.backgroundColor='#FF9933'" 
                    CssClass="btn" onclick="Button8_Click" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

