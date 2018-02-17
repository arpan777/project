using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
           AttDT = AttAdapter.Selecr_Allready_Saved(GridView1.Rows[0].Cells[0].Text, Calendar1.SelectedDate.Date.GetDateTimeFormats()[8].ToString());

        if (AttDT.Rows.Count == 1)
        {
            lblatt.Text = "Attendance Alredy Saved";
        }
        else
        {

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string rollno = GridView1.Rows[i].Cells[0].Text;
                string name = GridView1.Rows[i].Cells[1].Text;
                DropDownList drpattt = GridView1.Rows[i].Cells[2].FindControl("drpatt") as DropDownList;

                AttAdapter.Insert(rollno, name, Calendar1.SelectedDate.Date.GetDateTimeFormats()[8].ToString(), drpattt.SelectedItem.Text, Session["uname"].ToString());

            }
            MultiView1.ActiveViewIndex = -1;
            drpdiv.SelectedIndex = 0;
            lblatt.Text = "Attendance Saved";
        }
    }
}
    
