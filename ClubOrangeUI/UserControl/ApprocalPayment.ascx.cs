using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Entity;
using OrangeDAL;

public partial class UserControl_ApprocalPayment : System.Web.UI.UserControl
{
    DAL dal = new DAL();
    BillingInfo bl = new BillingInfo();
    protected void Page_Load(object sender, EventArgs e)
    {

        if(GridView1.Rows.Count==0)
        {
            btnAccept.Visible = false;

            btnReject.Visible = false;
        }

    }
    protected void btnAccept_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            GridViewRow row = GridView1.Rows[i];
            bool isChecked = ((CheckBox)(row.FindControl("checkbox1"))).Checked;
            if (isChecked)
            {
                string billID = GridView1.Rows[i].Cells[0].Text;
                bl.BillId = Convert.ToInt32(billID);
                dal.ApprovePayment(bl);
            }

        }
        Response.Redirect("ApprovalPayment.aspx");
        
    }
    protected void btnReject_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            GridViewRow row = GridView1.Rows[i];
            bool isChecked = ((CheckBox)(row.FindControl("checkbox1"))).Checked;
            if (isChecked)
            {
                string billID = GridView1.Rows[i].Cells[0].Text;
                bl.BillId = Convert.ToInt32(billID);
                dal.RejectPayment(bl);
            }
        }
        Response.Redirect("ApprovalPayment.aspx");
    }
}
