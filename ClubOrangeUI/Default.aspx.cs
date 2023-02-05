using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            string role = Session["role"].ToString();
            if (role == "s")
            {
                Response.Redirect("Staff.aspx");
                // display the log out link here
            }
            else if(role=="m")
            {
                Response.Redirect("member.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
}
