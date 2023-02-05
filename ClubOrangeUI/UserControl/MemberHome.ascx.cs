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
using OrangeController;
using Entity;

public partial class UserControl_MemberHome : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MemberController mc = new MemberController();
        if (Session["memberId"] != null)
        {
            Member me= mc.displayMemberInfo(Convert.ToInt32(Session["memberId"]));
            Name = me.FirstName + " " + me.LastName;
            if (me.Gender == 'm')
            {
                proImg.ImageUrl = "~/images/icon/male_user.png";
            }
            else
            {
                proImg.ImageUrl = "~/images/icon/female_user.png";
            }
        }
        
    }

    public string Name { 
        get { return lblName.Text;} 
        set { lblName.Text=value;}
    }
}
