using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class adminmenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label1.Text = "Fields are Empty";
        }
        Session["id"] = TextBox1.Text;
        

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpan\Documents\studentst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlDataAdapter da = new SqlDataAdapter("select * from admin", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "admin");
        DataTable dtemp = ds.Tables[0];
        foreach (DataRow dr in dtemp.Rows)
        {
            if ((dr[0].ToString() == TextBox1.Text) && (dr[1].ToString() == TextBox2.Text))
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                Label1.Text = ("Invalid email or password");
            }

        }

        
    }
}

    

