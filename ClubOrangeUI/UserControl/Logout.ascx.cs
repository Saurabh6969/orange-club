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

public partial class UserControl_Logout : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["role"] != null) {
        //    if (char.Parse(Session["role"].ToString()) == 's')
        //    {
        //        linkHome.Text = "Member Home";
        //        linkHome.PostBackUrl="~/member.aspx";
        //    }
        //    else if (char.Parse(Session["role"].ToString()) == 'm')
        //    {
        //        linkHome.Text = "Staff Home";
        //        linkHome.PostBackUrl="~/staff.aspx";
        //    }
        //}
        try
        {
            if (Session["loginstatus"] != null)
            {
                string status = Session["loginstatus"].ToString();
                if (status == "loggedIn")
                {
                    this.Visible = true;
                }
                else
                {
                    this.Visible = false;
                }
            }
            else
            {
                this.Visible = false;
            }
        }
        catch ( Exception ex)
        {
           throw ex;
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["loginstatus"] != null)
        {
            Session["loginstatus"] = null;
            //Response.Redirect("Default.aspx");
            Session.Abandon();
            //Session.Add("loginstatus", "loggedOut");
            
            Response.Redirect("Default.aspx");
        }
    }
}
