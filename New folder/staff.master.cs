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
using System.Data.SqlClient;

public partial class staff : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String a;
        a = ConfigurationManager.ConnectionStrings["studentstConnectionString"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select IMAGE from staff where USERNAME='" + Session["id"].ToString() + "'",con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                byte[] imgdata=(byte[])rd["IMAGE"];
                String img = Convert.ToBase64String(imgdata, 0, imgdata.Length);
                Image2.ImageUrl = "data:image/jpg;base64," + img;

            }
        }
        Label1.Text = "Welcome   " + Session["id"].ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("addstudent.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentreport.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("attendance.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("attreport.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("advancedreport.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("passwordstaff.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("staff.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
        Session.RemoveAll();
    }
}
