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
using OrangeDAL;
using Entity;

public partial class UserControl_StaffHome : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DAL d = new DAL();
        TotalMember= d.getAllMemberCount();
        TotalPermaMember = d.getAllMemberCount('p', 1);
        TotalTempMember = d.getAllMemberCount('t', 1);
        TotalAddonMember = d.getAllMemberCount('a', 1);

        TotalRevPerma = d.getRevenueFor('p');
        TotalRevTemp = d.getRevenueFor('t');
        TotalRevAddon=d.getRevenueFor('a');

        DefaulterCount= d.getDuePaymentMemberCount();


        //MemberController mc = new MemberController();

        if (Session["memberId"] != null)
        {
            //Member me = mc.displayMemberInfo(Convert.ToInt32(Session["memberId"]));
           // Name = me.FirstName + " " + me.LastName;
            //if (me.Gender == 'm')
            //{
            //    proImg.ImageUrl = "~/images/icon/male_user.png";
            //}
            //else
            //{
            //    proImg.ImageUrl = "~/images/icon/female_user.png";
            //}
        }
    }

    public int TotalMember { get { return Convert.ToInt32(lblTotalMember.Text); } set { lblTotalMember.Text=value.ToString();} }
    public int TotalPermaMember { get { return Convert.ToInt32(lblPer.Text); } set { lblPer.Text = value.ToString(); } }
    public int TotalTempMember { get { return Convert.ToInt32(lblTemp.Text); } set { lblTemp.Text = value.ToString(); } }
    public int TotalAddonMember { get { return Convert.ToInt32(lblAddon.Text); } set { lblAddon.Text = value.ToString(); } }

    public int TotalRevPerma { get { return Convert.ToInt32(lblRevPer.Text); } set { lblRevPer.Text = value.ToString(); } }
    public int TotalRevAddon { get { return Convert.ToInt32(lblRevAddon.Text); } set { lblRevAddon.Text = value.ToString(); } }
    public int TotalRevTemp { get { return Convert.ToInt32(lblRevTemp.Text); } set { lblRevTemp.Text = value.ToString(); } }

    public int TotalLoss { get { return Convert.ToInt32(lblLoss.Text); } set { lblLoss.Text = value.ToString(); } }
    public int DefaulterCount { get { return Convert.ToInt32(lblDefaulterCount.Text); } set { lblDefaulterCount.Text = value.ToString(); } }

}
