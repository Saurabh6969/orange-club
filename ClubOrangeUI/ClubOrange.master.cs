using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using OrangeController;

public partial class ClubOrange : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loginStatus"] != null)
        {
            if (Session["loginStatus"] == "loggedIn")
            {
                /*show the loginHolder out LinkButton*/
            }
            else
            {
                /*show the log */
            }
        }
        else
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LoginController lc = new LoginController();
        LoginUC luc= new LoginUC();
        Entity.Login r = lc.login(luc.getUserName(),luc.getPass());
        if (r.Role == "m")
        {
            Session.Add("loginstatus", "loggedIn");
            Session.Add("memberId",r.MemberId);
            Session.Add("userName", r.Username);
            Session.Add("role", r.Role);
            Response.Redirect("member.aspx");
        }
        else if (r.Role == "s")
        {
            Response.Redirect("staff.aspx");
        }
        else
        {
            Response.Redirect("default.aspx");
        }
    }
}
