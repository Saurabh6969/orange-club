﻿using System;
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

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loginstatus"] != null)
        {
            string status = Session["loginstatus"].ToString();
            if (status == "loggedIn")
            {
                //LoginUC luc = new LoginUC();
                //luc.Visible = false;
                //userName.Visible = false;
                
            }
            else
            {
                UserControl_Logout lo = new UserControl_Logout();
                lo.Visible = false;
            }
        }
        else
        {
            UserControl_Logout lo = new UserControl_Logout();
            lo.Visible = false;
        }
    }
}
