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

public partial class staff : System.Web.UI.Page
{
    public string dep,name,a,b,c,d;
     SqlConnection con1 = new SqlConnection();
           
            SqlCommand cmd1 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        con1.ConnectionString=@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpan\Documents\studentst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
       
        con1.Open();
        cmd1.CommandText = "Select * from staff where USERNAME='"+Session["id"].ToString()+"'";
       
        cmd1.Connection = con1;
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            dep = rd["DEPARTMENT"].ToString();

            name = rd["NAME"].ToString();
            a = rd["EMAIL_ID"].ToString();
            b = rd["CONTACT_NO"].ToString();
            c = rd["ADDRESS"].ToString();
            d = rd["CITY"].ToString();

           

        }
       
        this.DataBind();
        rd.Close();
        
        Label4.Text = "";
        con1.Close();
    }
    
    protected void Button10_Click(object sender, EventArgs e)
    {
       
       

            String query = "Update staff set EMAIL_ID='" + TextBox1.Text + "',CONTACT_NO='" + TextBox2.Text + "',ADDRESS='" + TextBox3.Text + "',CITY='" + TextBox4.Text + "' where USERNAME='"+Session["id"].ToString()+"'";
            String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpan\Documents\studentst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con1 = new SqlConnection(mycon);
            con1.Open();
            SqlCommand cmd = new SqlCommand();
            cmd1.CommandText = query;
            cmd1.Connection = con1;
            cmd1.ExecuteNonQuery();
            Label4.Text = "Successfully Added";

           

        

    
    }
}
