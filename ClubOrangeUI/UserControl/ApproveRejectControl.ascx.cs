using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections.Generic;
using Entity;
using OrangeController;
using System.Xml.Linq;
using System.Text;
using OrangeDAL;

public partial class ApproveRejectControl : System.Web.UI.UserControl
{
    DAL dal = new DAL();
    //SqlDataAdapter d=new SqlDataAdapter(
    SqlCommandBuilder cm = new SqlCommandBuilder();
    StringBuilder strSql = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(GridView1.Rows.Count==0)
        {
            Button1.Visible= false;
            Button2.Visible= false;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Member m=new Member();
        
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            GridViewRow row = GridView1.Rows[i];
            bool isChecked = ((CheckBox)(row.FindControl("checkbox1"))).Checked;
            if (isChecked)
            {
                    string strID = GridView1.Rows[i].Cells[0].Text;
                    m.MemberId = Convert.ToInt32(strID);
                    dal.Approve(m);
            }
        }
        m.Due = dal.getRegistrationAmount(m);
        Response.Redirect("ApprovalOfMembership.aspx");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Member m = new Member();

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            GridViewRow row = GridView1.Rows[i];
            bool isChecked = ((CheckBox)(row.FindControl("checkbox1"))).Checked;
            if (isChecked)
            {
                string strID = GridView1.Rows[i].Cells[0].Text;
                m.MemberId = Convert.ToInt32(strID);
                dal.Reject(m);
            }
        }
        Response.Redirect("ApprovalOfMembership.aspx");
       
    }
}
