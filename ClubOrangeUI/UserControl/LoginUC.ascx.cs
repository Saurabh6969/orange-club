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

public partial class LoginUC : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["loginstatus"] != null)
            {
                string status = Session["loginstatus"].ToString();
                if (status == "loggedIn")
                {
                    //LoginUC luc = new LoginUC();
                    //luc.Visible = false;
                    //userName.Visible = false;
                    this.Visible = false;
                }
                else
                {

                }
            }
        }
        catch (Exception ex)
        {
            throw ex; 
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    public string getUserName()
    {
        return userName.Text;
    }
    public string getPass()
    {
        return password.Text;
    }

}
