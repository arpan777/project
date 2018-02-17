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

public partial class passwordstaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        SqlConnection mycon = new SqlConnection( @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpan\Documents\studentst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        SqlDataAdapter sda = new SqlDataAdapter("Select PASSWORD from staff where PASSWORD='"+TextBox1.Text+"'AND USERNAME='"+Session["id"].ToString()+"'",mycon);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if(dt.Rows.Count.ToString()=="1")
        {

            mycon.Open();
            SqlCommand cmd=new SqlCommand("Update staff set PASSWORD='"+TextBox3.Text+"' where PASSWORD='"+TextBox1.Text+"'",mycon);
            cmd.ExecuteNonQuery();
           
            Label2.Text = "Password Successfully updated";
            mycon.Close();
        }
        else
        {
            Label2.Text="please check your Old password";
        }
    }
}
