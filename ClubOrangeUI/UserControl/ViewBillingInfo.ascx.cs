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
using System.Collections.Generic;
using OrangeDAL;

public partial class ViewBillingInfo : System.Web.UI.UserControl
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnViewBill_Click(object sender, EventArgs e)
    {
        List<BillingInfo> lb = new List<BillingInfo>();
        DateTime d1, d2;
        d1 = date1.SelectedDate;
        d2 = date2.SelectedDate;
        int mId = Convert.ToInt32( Session["memberId"].ToString());
        lb=dl.ViewBillInfo(d1, d2, mId);
        GridView1.DataSource = lb;
        GridView1.DataBind();
    }
}
