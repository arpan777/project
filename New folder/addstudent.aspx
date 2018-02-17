<%@ Page Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="addstudent.aspx.cs" Inherits="addstudent" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .textbox
        {
        	border-bottom:1px solid purple;
        	background:transparent;
        	outline:none;
        	color:White;
        	font-size:large;
        	border-left-style:none;
        	border-right-style:none;
        	border-top-style:none;
            margin-left: 0px;
        }
        
        .sty2
        {
        	background-color:Transparent;
        	background:rgba(0,0,0,.1);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
        	border-radius:80px;
            width: 100%; 
            height: 447px;
            color:blue;
        }
        .style11
        {
        	text-align:center;
            width: 152px;
        }
        .style12
        {
            text-align: center;
            width: 152px;
            height: 55px;
        }
        .style13
        {
        	font-size:x-large;
        	color:Red;
            height: 55px;
        }
        .style14
        {
            font-size: x-large;
            color: Red;
            height: 55px;
            width: 239px;
        }
        .style15
        {
            width: 239px;
        }
         .button1
        {
        	border-radius:20px; 
        	}
        .style16
        {
            text-align: center;
            width: 152px;
            height: 34px;
        }
        .style17
        {
            width: 239px;
            height: 34px;
        }
        .style18
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="sty2">
        <tr>
            <td class="style12">
                </td>
            <td class="style14">
                Add New Student</td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style16">
                Department:</td>
            <td class="style17">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="141px" 
                    DataSourceID="SqlDataSource1" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Year:</td>
            <td class="style15">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="137px" 
                    DataSourceID="SqlDataSource2" DataTextField="YEAR" DataValueField="YEAR">
                </asp:DropDownList>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                Roll No.:</td>
            <td class="style15">
                <asp:TextBox ID="TextBox1" runat="server" Width="143px" CssClass="textbox"></asp:TextBox>
            </td>
            <td align="center" rowspan="8">
                <asp:Image ID="Image3" runat="server" Width="105px" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [YEAR] FROM [year]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Student Name :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox2" runat="server" Width="142px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Email :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox3" runat="server" Width="142px" CssClass="textbox"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="!!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Contact No :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox4" runat="server" Width="143px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Address :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox5" runat="server" Width="142px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                State :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox6" runat="server" Width="143px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Pincode :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox7" runat="server" Width="143px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Username :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox8" runat="server" Width="143px" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Password :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox9" runat="server" Width="143px" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style15">
                <asp:Button ID="Button10" runat="server" Text="SUBMIT" BackColor="Blue" 
                    onclick="Button10_Click" Width="165px" CssClass="button1" Height="39px" 
                    Font-Size="15pt" ForeColor="White"
                     onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'"  />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Italic="True" ForeColor="#FF3300"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT [Department] FROM [dep]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

