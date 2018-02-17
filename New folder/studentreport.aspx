<%@ Page Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="studentreport.aspx.cs" Inherits="studentst" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style101
        {
        	background-color:Transparent;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
        	border-radius:80px;
        	color:blue;
            width: 100%;
            height: 80%;
        }
        .style11
        {
        	color:Red;
        	font-size:x-large;
            height: 64px;
        }
        .style12
        {
            height: 64px;
            width: 124px;
        }
        .style13
        {
         text-align:center;
        	}
        
       
        .style14
        {
        	text-align:center;
            width: 124px;
            height: 19px;
        }
        .style15
        {
            height: 19px;
        }
        .style16
        {
            height: 19px;
            width: 127px;
        }
          .button1
        {
        	border-radius:20px; 
        	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style101">
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11" colspan="2">
                Student Report</td>
        </tr>
        <tr>
            <td class="style13">
                Department :</td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="141px" 
                    DataSourceID="SqlDataSource2" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Year :</td>
            <td class="style16">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="141px" 
                    DataSourceID="SqlDataSource3" DataTextField="YEAR" DataValueField="YEAR">
                </asp:DropDownList>
            </td>
            <td class="style15">
                <asp:Button ID="Button10" runat="server" BackColor="Blue" ForeColor="White" 
                    style="margin-left: 0px" Text="SELECT" Width="93px" CssClass="button1"
                    onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" />
            </td>
        </tr>
        <tr align="left">
            <td class="style13" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style13" colspan="2" align="left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="389px" AllowPaging="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="YEAR" HeaderText="YEAR" 
                            SortExpression="YEAR" />
                        <asp:BoundField DataField="ROLL_NO" HeaderText="ROLL_NO" 
                            SortExpression="ROLL_NO" />
                        <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" 
                            SortExpression="STUDENT_NAME" />
                        <asp:BoundField DataField="EMAIL_ID" HeaderText="EMAIL_ID" 
                            SortExpression="EMAIL_ID" />
                        <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" 
                            SortExpression="CONTACT_NO" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    
                    SelectCommand="SELECT [YEAR], [ROLL_NO], [STUDENT_NAME], [EMAIL_ID], [CONTACT_NO] FROM [student] WHERE (([DEPARTMENT] = @DEPARTMENT) AND ([YEAR] = @YEAR))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="DEPARTMENT" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="YEAR" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT [Department] FROM [dep]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [YEAR] FROM [year]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

