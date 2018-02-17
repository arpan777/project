<%@ Page Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="attreportst.aspx.cs" Inherits="attreportst" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
               
        .btn
        {
        	border-radius:20px;}
    .st12
    {
    	background-color:Transparent;
    	background:rgba(0,0,0,0);
    	box-shadow:0 15px 25px rgba(0,0,0,.7);
    	border-radius:80px;
        width: 60%;
        height: 198px;
    }
    .style12
    {
    	color:Red;
    	font-size:x-large;
        height: 50px;
    }
    .style13
    {
        color: Red;
        font-size: x-large;
        height: 50px;
        width: 105px;
    }
    .style14
    {
        width: 105px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="st12">
        <tr>
            <td class="style13">
            </td>
            <td class="style12">
                Attendance Report</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="159px" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="PRESENT" HeaderText="ATTENDANCED" 
                            SortExpression="PRESENT" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    
                    SelectCommand="SELECT [PRESENT] FROM [student] WHERE ([USER_NAME] = @USER_NAME)">
                    <SelectParameters>
                        <asp:SessionParameter Name="USER_NAME" SessionField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

