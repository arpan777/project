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

public partial class student : System.Web.UI.Page
{
     public string dep,name,year,a,b,c,d;
     SqlConnection con1 = new SqlConnection();
           
            SqlCommand cmd1 = new SqlCommand();
  
      
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
            con1.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpan\Documents\studentst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";

            con1.Open();
            cmd1.CommandText = "Select * from student where USER_NAME='" + Session["id"].ToString() + "'";

            cmd1.Connection = con1;
            SqlDataReader rd = cmd1.ExecuteReader();
            while (rd.Read())
            {
                dep = rd["DEPARTMENT"].ToString();
                year = rd["YEAR"].ToString();
                name = rd["STUDENT_NAME"].ToString();
                a = rd["EMAIL_ID"].ToString();
                b = rd["CONTACT_NO"].ToString();
                c = rd["ADDRESS"].ToString();
                d = rd["STATE"].ToString();

            }
            this.DataBind();
        
       
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
        {
            Label5.Text = ("fields are empty");
        }
        else
        {

            String query = "Update student set EMAIL_ID='" + TextBox1.Text + "',CONTACT_NO='" + TextBox2.Text + "',ADDRESS='" + TextBox3.Text + "',STATE='" + TextBox4.Text + "' where USER_NAME='" + Session["id"].ToString() + "'";
            String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpan\Documents\studentst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label5.Text = "Successfully Added";
           
        }  
    }
}
