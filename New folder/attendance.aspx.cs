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

public partial class attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[2].FindControl("CheckBox1") as CheckBox);
            int rollno = Convert.ToInt32(row.Cells[0].Text);
            if (status.Checked)
            {
                String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpan\Documents\studentst.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
                String query = "Update student set PRESENT=PRESENT+1 where ROLL_NO=" + rollno;
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query; ;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label2.Text = "Attendance Has Been Saved Successfully";

            }
            else
            {
               // updaterow(rollno, PRESENT);

            }
            status.Checked = false;


        }
    }

   
    
}
