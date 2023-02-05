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
using OrangeController;
using OrangeBL;
using OrangeDAL;

public partial class UserControl_Upgradation : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["memberId"] != null)
        {
            MemberController mc = new MemberController();
            Member member = mc.displayMemberInfo(Convert.ToInt32(Session["memberId"].ToString()));
            lblExpiry.Text = member.DateOfExpiry.ToShortDateString().ToString();
            switch (member.MemberType)
            {
                case 'p':
                    lblMemType.Text = "Permanent";
                    break;
                case 't':
                    lblMemType.Text = "Temporary";
                    break;
                case 'a':
                    lblMemType.Text = "AddOn";
                    break;
            }


        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void btnUpgrade_Click(object sender, EventArgs e)
    {
        DAL dl = new DAL();
        if (Session["memberId"] != null)
        {
            Member m = new Member();
            if (Session["memberId"] != null)
            {
                MemberController mc = new MemberController();

                int val = mc.chkUpgradation(Convert.ToInt32(Session["memberId"].ToString()));
                //int val = mc.chkUpgradation(38);

                Session.Add("paymentFor", "upgradation");
                switch (val)
                {
                    case 1:
                        lblDisplayMess.Text = "You are already a permanent member. You cannot upgrade";
                        break;
                    case 2:
                        m.MemberId = Convert.ToInt32(Session["memberId"].ToString());
                        int Amt = dl.calculateAmt(m);
                        Session.Add("amount",Amt);
                        Response.Redirect("MakePayment.aspx");
                        break;
                    case 3:
                        lblDisplayMess.Text = "You have not completed 3 months of membership and hence cannot upgrade";
                        break;
                    case 4:
                        m.MemberId = Convert.ToInt32(Session["memberId"].ToString());
                        Amt = dl.calculateAmt(m);
                        Session.Add("amount", Amt);
                        Response.Redirect("MakePayment.aspx");
                        break;
                    case 5:
                        lblDisplayMess.Text = "Your referenced permanent member has not comleted 1 year of membership and hence you cannot upgrade";
                        break;
                }


            }

        }



    }
}
