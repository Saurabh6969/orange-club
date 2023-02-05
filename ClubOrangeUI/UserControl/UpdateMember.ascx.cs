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


public partial class UserControl_UpdateMember : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = DateTime.Today.Year - 70; i <= DateTime.Today.Year; i++)
            {
                ddlstYear.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 31; i++)
            {
                ddlstDay.Items.Add(i.ToString());
            }

            /* populate the fields */
            int memberId = Convert.ToInt32(Session["memberId"]);
            Member memEntity = new Member();
            memEntity.MemberId = memberId;

            MemberController memController = new MemberController();
            memEntity = memController.displayMemberInfo(memberId);

            FName = memEntity.FirstName;
            LName = memEntity.LastName;

            DateTime dob = DateTime.Parse(memEntity.DateOfBirth.ToString());
            ddlstDay.SelectedItem.Value = Convert.ToString(dob.Day);

            ddlstMonth.SelectedIndex = dob.Month;

            ddlstYear.SelectedItem.Value = dob.Year.ToString();


            Address = memEntity.Address;
            Phone = long.Parse(memEntity.Phone.ToString());
            Email = memEntity.Email;


            switch (memEntity.Gender)
            {
                case 'm':
                    rdoMale.Checked = true;
                    break;
                case 'f':
                    rdoFemale.Checked = true;
                    break;
            }


            //StatusRemark = memEntity.StatusRemark;
            switch (memEntity.MaritialStatus)
            {
                case 'm':
                    rdoMarried.Checked = true;
                    break;
                case 's':
                    rdoSingle.Checked = true;
                    break;
            }
        }
        


    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        
    }

    #region Properties
    /* properties*/
    public string FName
    {
        get
        {
            return txtFName.Text;
        }
        set
        {
            txtFName.Text = value;
        }
    }

    public string LName
    {
        get
        {
            return txtLName.Text;
        }
        set
        {
            txtLName.Text = value;
        }
    }

    public string Address
    {
        get
        {
            return txtAddress.Text;
        }
        set
        {
            txtAddress.Text = value;
        }
    }

    public string Email
    {
        get
        {
            return txtEmail.Text;
        }
        set
        {
            txtEmail.Text = value;
        }
    }

    public long Phone
    {
        get
        {
            return long.Parse(txtPhone.Text);
        }
        set
        {
            txtPhone.Text = value.ToString();
        }
    }
    public int BirthDay
    {
        get
        {
            return ddlstDay.SelectedIndex;
        }
        set
        {
            txtLName.Text = value.ToString();
        }
    }



    public int BirthMonth
    {
        get
        {
            return ddlstMonth.SelectedIndex;
        }
        set
        {
            ddlstMonth.SelectedIndex = value;
        }
    }

    public int BirthYear
    {
        get
        {
            return ddlstYear.SelectedIndex;
        }
        set
        {
            ddlstYear.SelectedIndex = value;
        }
    }

    #endregion 
    protected void rdoMale_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, ImageClickEventArgs e)
    {
        /* The Function */
        Member mEntity = new Member();
        if (Session["memberId"] != null)
        {
            mEntity.MemberId = Convert.ToInt32(Session["memberId"]);
            mEntity.FirstName = FName;
            mEntity.LastName = LName;
            mEntity.Address = Address;
            mEntity.Email = Email;
            mEntity.Phone = Phone;
            string dob = ddlstYear.SelectedValue.ToString() + "/" + (ddlstMonth.SelectedIndex + 1).ToString() + "/" + ddlstDay.SelectedValue.ToString();
            mEntity.DateOfBirth = DateTime.Parse(dob);


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

            MemberController mc = new MemberController();
            mc.updateMemberInfo(mEntity);
            Response.Redirect("ViewProfile.aspx");
        }
    }
}
