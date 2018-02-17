<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Staffreport.aspx.cs" Inherits="Staffreportaspx" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .styl
        {
        	background:rgba(0,0,0,.1);
        	box-shadow:0 15px 25px rgba(0,0,0,.5);
        	border-radius:80px;
            width: 100%;
            height: 80%;
        }
        .style11
        {
        	color:Red;
        	text-align:center;
        	font-size:x-large;
            height: 63px;
        }
        .style12
        {
            height: 51px;
            color:Blue;
        }
         .btn
        {
        	border-radius:20px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="styl">
        <tr>
            <td class="style11" colspan="3">
                Staff Report</td>
        </tr>
        <tr>
            <td class="style12" align="center">
                Department :</td>
            <td class="style12">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Department" 
                    DataValueField="Department" Height="16px" Width="139px">
                </asp:DropDownList>
            </td>
            <td class="style12">
                <asp:Button ID="Button8" runat="server"  Text="Select" 
                    Width="92px"
                     onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    BackColor="Blue" CssClass="btn" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="828px" AllowPaging="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    style="margin-top: 4px" >
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="EMAIL_ID" HeaderText="EMAIL_ID" 
                            SortExpression="EMAIL_ID" />
                        <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" 
                            SortExpression="CONTACT_NO" />
                        <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                            SortExpression="ADDRESS" />
                        <asp:BoundField DataField="DEPARTMENT" HeaderText="DEPARTMENT" 
                            SortExpression="DEPARTMENT" />
                        <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" 
                            SortExpression="USERNAME" />
                        <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" 
                            SortExpression="PASSWORD" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    
                    SelectCommand="SELECT [NAME], [EMAIL_ID], [CONTACT_NO], [ADDRESS], [DEPARTMENT], [USERNAME], [PASSWORD] FROM [staff] WHERE ([DEPARTMENT] = @DEPARTMENT)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="DEPARTMENT" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT [Department] FROM [dep]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

