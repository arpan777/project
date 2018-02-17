<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="studentreportad.aspx.cs" Inherits="studentreportad" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .styl
        {
        	background-color:Transparent;
        	background:rgba(0,0,0,.1);
        	box-shadow:0 15px 25px rgba(0,0,0,.5);
        	border-radius:80px;
            width: 100%;
            height: 80%;
        }
        .style6
        {
        	color:Red;
        	font-size:x-large;
        	}
        .style11
        {
            color: Red;
            font-size: x-large;
            height: 57px;
        }
        .style12
        {
            color: Blue;
            font-size: x-large;
            height: 50px;
        }
        .style13
        {
            color: blue;
            font-size: x-large;
            height: 49px;
        }
        .style14
        {
            color: Red;
            font-size: x-large;
            height: 49px;
            width: 82px;
        }
        .btn{border-radius:20px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="styl">
        <tr>
            <td align="center" class="style11" colspan="4">
                Student Report</td>
        </tr>
        <tr>
            <td align="center" class="style12">
                Department :</td>
            <td align="left" class="style12">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Department" 
                    DataValueField="Department" Height="16px" Width="125px">
                </asp:DropDownList>
            </td>
            <td align="left" class="style12" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style13">
                Year :</td>
            <td align="left" class="style13">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="YEAR" DataValueField="YEAR" 
                    Height="16px" Width="113px">
                </asp:DropDownList>
            </td>
            <td align="left" class="style14">
                <asp:Button ID="Button8" runat="server" BackColor="Blue" ForeColor="White" 
                    Text="Select" Width="104px"  onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    CssClass="btn" />
            </td>
            <td align="center" class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" >
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" >
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="DEPARTMENT" HeaderText="DEPARTMENT" 
                            SortExpression="DEPARTMENT" />
                        <asp:BoundField DataField="YEAR" HeaderText="YEAR" SortExpression="YEAR" />
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
                    
                    SelectCommand="SELECT [DEPARTMENT], [YEAR], [ROLL_NO], [STUDENT_NAME], [EMAIL_ID], [CONTACT_NO], [ADDRESS], [USER_NAME], [PASSWORD] FROM [student] WHERE (([DEPARTMENT] = @DEPARTMENT) AND ([YEAR] = @YEAR))">
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

