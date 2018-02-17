<%@ Page Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="advancedreport.aspx.cs" Inherits="advancedreport" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .styl123
        {
        	background-color:Transparent;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
        	border-radius:80px;
            width: 100%;
            height: 374px;
            color:Blue;
        }
        .style11
        {
        	color:Red;
        	font-size:x-large;
            height: 61px;
        }
        .style12
        {
            height: 61px;
            width: 210px;
        }
        .style13
        {
        	
        	font-size:larger;
            }
        .style14
        {
            width: 194px;
            height: 32px;
        }
        .btn{border-radius:20px}
        .style15
        {
            
            font-size: larger;
            width: 210px;
            height: 31px;
        }
        .style16
        {
            height: 31px;
        }
        .style17
        {
           
            font-size: larger;
            width: 210px;
            height: 32px;
        }
        .style18
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="styl123">
        <tr>
            <td class="style12">
            </td>
            <td class="style11" colspan="2">
                Advanced Report</td>
        </tr>
        <tr>
            <td align="center" class="style15">
                Department :</td>
            <td colspan="2" class="style16">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="179px" 
                    DataSourceID="SqlDataSource2" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style17">
                Year :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="31px" Width="179px" 
                    DataSourceID="SqlDataSource3" DataTextField="YEAR" DataValueField="YEAR">
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:Button ID="Button10" runat="server" BackColor="Blue" ForeColor="White" 
                    Text="Select" Width="118px"
                    onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="ROLL_NO" HeaderText="ROLL_NO" 
                            SortExpression="ROLL_NO" />
                        <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" 
                            SortExpression="STUDENT_NAME" />
                        <asp:BoundField DataField="EMAIL_ID" HeaderText="EMAIL_ID" 
                            SortExpression="EMAIL_ID" />
                        <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" 
                            SortExpression="CONTACT_NO" />
                        <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                            SortExpression="ADDRESS" />
                        <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" 
                            SortExpression="USER_NAME" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    SelectCommand="SELECT [ROLL_NO], [STUDENT_NAME], [EMAIL_ID], [CONTACT_NO], [ADDRESS], [USER_NAME] FROM [student] WHERE (([DEPARTMENT] = @DEPARTMENT) AND ([YEAR] = @YEAR))">
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

