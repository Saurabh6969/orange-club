<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginUC.ascx.cs" Inherits="LoginUC" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        //OrangeController.LoginController lc = new OrangeController.LoginController();
        //LoginUC uc = new LoginUC();
        //Entity.Login r = lc.login(uc.getUserName(), uc.getPass());
        //if (r.Role == "member")
        //{
        //    Response.Redirect("member.aspx");
        //}
        //else
        //{
        //    Response.Redirect("staff.aspx");
        //}
        
        
        OrangeController.LoginController lc = new OrangeController.LoginController();
        Entity.Login r = lc.login(userName.Text, password.Text);
        if (r.Role == "m")
        {
            Session.Add("loginstatus", "loggedIn");
            Session.Add("memberId", r.MemberId);
            Session.Add("username", r.Username);
            Session.Add("role", r.Role);
            Response.Redirect("member.aspx");
        }
        else if (r.Role == "s")
        {
            Session.Add("loginstatus", "loggedIn");
            Session.Add("memberId", r.MemberId);
            Session.Add("username", r.Username);
            Session.Add("role", r.Role);
            Response.Redirect("staff.aspx");
        }
        else if (r.Role == null)
        {
            if (Session["loginAttempt"] == null)
            {
                Session.Add("loginAttempt", 0);
                Session["loginAttempt"] = Convert.ToInt32(Session["loginAttempt"]) + 1;
            }
            else
            {
                Session["loginAttempt"] = Convert.ToInt32(Session["loginAttempt"]) + 1;
                if (Convert.ToInt32(Session["loginAttempt"]) == 3)
                {
                    //Response.Write("Account Locked");
                    OrangeController.LoginController lockAcnt = new OrangeController.LoginController();
                    lockAcnt.lockAccount(userName.Text);
                    lblNotification.Text = "Account Locked !";
                    // Call the query function here for changing the account status
                }
            }
        }
        else
        {
            Response.Redirect("default.aspx");
        }
    }
</script>
<div class="loginHead" id="loginBox"><img src="images/loginHead.png"</div>
<div id="loginForm">
            <div class="lf">
                <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="User Name"></asp:Label>
                <asp:TextBox ID="userName" runat="server" CssClass="textCSS" Height="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqUVal" runat="server" 
                    ControlToValidate="userName" ErrorMessage="User Name is required" 
                    ValidationGroup="loginVal">*</asp:RequiredFieldValidator>
                <br /><br />
                <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="Password"></asp:Label>
                &nbsp;
                <asp:TextBox ID="password" runat="server" CssClass="textCSS" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqPVal" runat="server" 
                    ControlToValidate="password" ErrorMessage="Password is required" 
                    ValidationGroup="loginVal">*</asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnLog" 
                    onclick="Button1_Click" />
                <br />
                <asp:Label ID="lblNotification" runat="server" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:ValidationSummary ID="valLogSum" runat="server" CssClass="loginErrorSummary" 
                    Height="18px" Width="157px" ValidationGroup="loginVal" />
            </div>
        </div>

