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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome   " + Session["id"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("attreportst.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("stpassword.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
        Session.RemoveAll();
    }
}
