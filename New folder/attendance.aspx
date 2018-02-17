<%@ Page Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="attendance" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .styleabc
        {
        	
        	background-color:Transparent;
        	background:rgba(0,0,0,0);
        	box-shadow:0 15px 25px rgba(0,0,0,.7);
        	width: 100%;
            height: 80%;
            border-radius:80px;
            color:Blue;
        }
        .style11
        {
        	
            width: 193px;
        }
        .style12
        {
            
            width: 193px;
            height: 64px;
        }
        .style13
        {
             color:Red;
             font-size:x-large;
            height: 64px;
        }
        .style14
        {
            height: 174px;
        }
        .btn
        {
        	border-radius:20px;
            margin-left: 0px;
        }
        .style15
        {
            width: 183px;
        }
        .style16
        {
           
            width: 193px;
            height: 31px;
        }
        .style17
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="styleabc">
        <tr>
            <td class="style12">
                </td>
            <td class="style13" colspan="3">
                Attendance</td>
        </tr>
        <tr>
            <td align="center" class="style11">
                Department :</td>
            <td colspan="3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="162px" 
                    DataSourceID="SqlDataSource2" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Year :</td>
            <td colspan="3" class="style17">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="162px" 
                    DataSourceID="SqlDataSource3" DataTextField="YEAR" DataValueField="YEAR">
                </asp:DropDownList>
                <asp:Button ID="Button11" runat="server" BackColor="Blue" ForeColor="White" 
                    Text="Select" Width="103px"
                    onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style11">
                &nbsp;</td>
            <td class="style15" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:studentstConnectionString %>" 
                    
                    SelectCommand="SELECT [ROLL_NO], [STUDENT_NAME] FROM [student] WHERE (([DEPARTMENT] = @DEPARTMENT) AND ([YEAR] = @YEAR))">
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
                    SelectCommand="SELECT DISTINCT [YEAR] FROM [year]">
                </asp:SqlDataSource>
            </td>
            <td class="style14" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                     AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="ROLL_NO" HeaderText="ROLL_NO" 
                            SortExpression="ROLL_NO" />
                        <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" 
                            SortExpression="STUDENT_NAME" />
                            <asp:TemplateField>
                            <ItemTemplate><asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate></asp:TemplateField>
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
            <td colspan="4" align="center">
                <asp:Button ID="Button10" runat="server" BackColor="Blue" ForeColor="White" 
                    Height="48px" Text="ADD ATTENDANCE" Width="174px"
                    onmouseover="this.style.backgroundColor='Yellow'"
                                    onmouseout="this.style.backgroundColor='Blue'" 
                    CssClass="btn" onclick="Button10_Click" />
            &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                &nbsp;</td>
            <td colspan="2" align="center">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

