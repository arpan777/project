using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("adddep.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("addyear.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("addstaff.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("staffreport.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentreportad.aspx");
    }
}
