<%@ Page Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="attreport.aspx.cs" Inherits="attreport" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style123
        {
        	background-color:Transparent;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
            width: 100%;
            height: 282px;
            border-radius:80px;
            color:Blue;
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
            width: 216px;
        }
        .style13
        {
            width: 216px;
        }
        .style14
        {
            width: 216px;
            height: 33px;
        }
        .style15
        {
            height: 33px;
        }
        .style17
        {
            height: 36px;
        }
        .style18
        {
            height: 36px;
            width: 216px;
        }
        .style19
        {
            height: 36px;
            width: 198px;
        }
        .btn
        {
        	border-radius:20px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style123">
        <tr>
            <td class="style12">
            </td>
            <td class="style11" colspan="2">
                Attendance Report</td>
        </tr>
        <tr>
            <td align="center" class="style14">
                Department :</td>
            <td class="style15" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="180px" 
                    DataSourceID="SqlDataSource2" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style18">
                Year :</td>
            <td class="style19">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="180px" 
                    DataSourceID="SqlDataSource3" DataTextField="YEAR" DataValueField="YEAR">
                </asp:DropDownList>
            </td>
            <td class="style17">
                <asp:Button ID="Button10" runat="server" BackColor="Blue" ForeColor="White" 
                    style="margin-left: 0px" Text="Select" Width="107px" 
                    onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [YEAR] FROM [year]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT [Department] FROM [dep]"></asp:SqlDataSource>
            </td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="ROLL_NO" HeaderText="ROLL_NO" 
                            SortExpression="ROLL_NO" />
                        <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" 
                            SortExpression="STUDENT_NAME" />
                        <asp:BoundField DataField="PRESENT" HeaderText="ATTENDANCE" 
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
                    SelectCommand="SELECT [ROLL_NO], [STUDENT_NAME], [PRESENT] FROM [student] WHERE (([DEPARTMENT] = @DEPARTMENT) AND ([YEAR] = @YEAR))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="DEPARTMENT" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="YEAR" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

