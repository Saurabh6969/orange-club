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
public partial class Member_registration : System.Web.UI.UserControl
{
    string dob;
    protected void Page_Load(object sender, EventArgs e)
    {

        for (int i = DateTime.Today.Year - 70; i <= DateTime.Today.Year; i++)
        {
            ddlstYear.Items.Add(i.ToString());
        }
        for (int i = 1; i <= 31; i++)
        {
            ddlstDay.Items.Add(i.ToString());
        }
        lblMembership.Enabled = false;
        Label14.Enabled = false;
        ddMemberType.Enabled = false;
        ddDepartment.Enabled = false;

    }




    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string dob = ddlstYear.SelectedValue.ToString() + "/" + (ddlstMonth.SelectedIndex + 1).ToString() + "/" + ddlstDay.SelectedValue.ToString();

        MemberController mController = new MemberController();
        LoginController lController = new LoginController();
        Member mEntity = new Member();
        Addon aEntity = new Addon();
        Entity.Login lEntity = new Entity.Login();

        mEntity.FirstName = txtFName.Text;
        mEntity.LastName = txtLName.Text;
        mEntity.Address = txtAddress.Text;
        mEntity.Email = txtEmail.Text;
        mEntity.Phone = long.Parse(txtPhone.Text);
        mEntity.DateOfBirth = DateTime.Parse(dob);
        mEntity.AccountStatus = 0;// Account on hold
        mEntity.DateOfJoining = DateTime.Now;

        if (ddMemberType.SelectedItem.Value == "t")
        {
            mEntity.DateOfExpiry = DateTime.Now.AddMonths(3);
        }
        else if (ddMemberType.SelectedItem.Value == "p")
        {
            mEntity.DateOfExpiry = DateTime.Now.AddYears(3);
        }
        else if (ddMemberType.SelectedItem.Value == "a")
        {
            mEntity.DateOfExpiry = DateTime.Now.AddYears(3);
        }


        mEntity.DeptId = ddDepartment.SelectedIndex + 1;
        mEntity.UserName = txtUsername.Text;
        mEntity.Password = txtPassword.Text;
        lEntity.SecurityQuestion = txtQuestion.Text;
        lEntity.SecurityAnswer = txtAnwser.Text;
        lEntity.Role = "m";
        mEntity.StatusRemark = "Membership under Consideration";

        if (rdoNope.Checked)
        {
            mEntity.SportsPerson = 0;
            dob = ddlstYear.SelectedValue.ToString() + "/" + (ddlstMonth.SelectedIndex + 1).ToString() + "/" + ddlstDay.SelectedValue.ToString();

        }
        else if (rdoNational.Checked)
        {
            mEntity.DateOfExpiry = DateTime.Now.AddYears(3);
            mEntity.SportsPerson = 1;
            mEntity.MemberType = 'p';
            lblrefId.Visible = false;
            txtRefId.Visible = false;
            dob = ddlstYear.SelectedValue.ToString() + "/" + (ddlstMonth.SelectedIndex + 1).ToString() + "/" + ddlstDay.SelectedValue.ToString();
        }
        else if (rdoInternational.Checked)

        {
            mEntity.DateOfExpiry = DateTime.Now.AddYears(3);
            mEntity.SportsPerson = 2;
            lblrefId.Visible = false;
            txtRefId.Visible = false;
            mEntity.MemberType = 'p';
            dob = ddlstYear.SelectedValue.ToString() + "/" + (ddlstMonth.SelectedIndex + 1).ToString() + "/" + ddlstDay.SelectedValue.ToString();
        }


        if (ddMemberType.SelectedIndex == 1)
        {
            mEntity.MemberType = 't';
        }
        else if (ddMemberType.SelectedIndex == 2)
        {
            mEntity.MemberType = 'a';
            aEntity.ReferenceId = Convert.ToInt32(txtRefId.Text);
        }



        if (rdoMarried.Checked == true)
        {
            mEntity.MaritialStatus = 'm';
        }
        else if (rdoSingle.Checked == true)
        {
            mEntity.MaritialStatus = 's';
        }

        if (rdoMale.Checked == true)
        {
            mEntity.Gender = 'm';
        }
        else if (rdoFemale.Checked == true)
        {
            mEntity.Gender = 'f';
        }

        mEntity.UserName = txtUsername.Text; ;
        aEntity.Relation = ddRelation.SelectedItem.Value;


        if (mController.insertMemberInfo(mEntity, lEntity, aEntity) == true)
        {

            Session.Add("paymentFor", "registration");
            Session.Add("amount", "");
            Response.Redirect("ThankYou.aspx");
        }
        else
        {
            Session.Add("error", "Unable to perform registration");
        }

    }

    protected void rdoNope_CheckedChanged(object sender, EventArgs e)
    {
        if (rdoNope.Checked == true)
        {
            lblMembership.Enabled = true;
            ddMemberType.Enabled = true;
            lblPermanent.Visible = false;
        }
    }

    protected void ddMemberType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddMemberType.SelectedItem.Value == "t")
        {
            Label14.Enabled = true;
            ddDepartment.Enabled = true;
            lblMembership.Enabled = true;
            ddMemberType.Enabled = true;
            lblrefId.Visible = false;
            txtRefId.Visible = false;
            lblrefId.Enabled = false;
            txtRefId.Enabled = false;
            lblRelation.Visible = false;
            ddRelation.Visible = false;


        }



        if (ddMemberType.SelectedItem.Value == "a")
        {
            lblrefId.Visible = true;
            txtRefId.Visible = true;
            lblrefId.Enabled = true;
            txtRefId.Enabled = true;
            lblMembership.Enabled = true;
            ddMemberType.Enabled = true;
        }
    }
    protected void rdoNational_CheckedChanged(object sender, EventArgs e)
    {
        Label14.Enabled = false;
        ddDepartment.Enabled = false;
        lblPermanent.Visible = true;
    }
    protected void rdoInternational_CheckedChanged(object sender, EventArgs e)
    {
        Label14.Enabled = false;
        ddDepartment.Enabled = false;
        lblPermanent.Visible = true;
    }
    protected void ddDepartment_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void rdoMale_CheckedChanged(object sender, EventArgs e)
    {

    }
}
