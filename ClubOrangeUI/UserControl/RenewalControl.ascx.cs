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
using OrangeBL;
using OrangeController;
using OrangeDAL;

public partial class UserControl_RenewalControl : System.Web.UI.UserControl
{
    DAL dal = new DAL();
    Member m=new Member();
    
    protected void Page_Load(object sender, EventArgs e)
    {   
        int id = Convert.ToInt32(Session["memberId"].ToString());
        m.MemberId=id;
        m = dal.fetchMemberInfo(m);
        lblId.Text = m.MemberId.ToString();
        lblName.Text = m.FirstName;
        lblLastName.Text = m.LastName;
        lbldoe.Text = m.DateOfExpiry.ToString();
        lbldue.Text = m.Due.ToString();
    }
    
    protected void btnRenewal_Click(object sender, EventArgs e)
    {

        DateTime d = m.DateOfExpiry;
        DateTime newexp = new DateTime();
        if (m.Due > 0)
        {
            lblInfo.Text = "Kindly pay your previous due for renewal";
        }
        else
        {
            if (m.MemberType == 'p')
            {
                newexp = d.AddYears(1);
                Session.Add("amount", 30000);
                lblInfo.Text = "Renewal Fee For 1yr :30000 Rs";
            }
            else if (m.MemberType == 't')
            {
                newexp = d.AddMonths(3);
                Session.Add("amount", 5000);
                lblInfo.Text = "Renewal Fee for 3month: 5000 Rs";
            }
            else if (m.MemberType == 'a')
            {
                newexp = d.AddYears(1);
                Session.Add("amount", 30000);
                lblInfo.Text = "Renewal Fee For 1 Yr:30000";

            }
            Session.Add("paymentFor", "renewal");
            Response.Redirect("makePayment.aspx");
        }
        lbldoe.Text = newexp.ToString();

       
    }
}
