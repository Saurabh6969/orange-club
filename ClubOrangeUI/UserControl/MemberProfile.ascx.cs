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
using OrangeBL;
using OrangeController;

public partial class MemberProfile : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MemberController mc = new MemberController();
        if (Session["memberId"] != null)
        {
            Member me = mc.displayMemberInfo(Convert.ToInt32(Session["memberId"]));
            Firstname = me.FirstName + " " + me.LastName;
            if (me.Gender == 'm')
            {
                profileImage.ImageUrl = "~/images/icon/male_user.png";
            }
            else
            {
                profileImage.ImageUrl = "~/images/icon/female_user.png";
            }
        }


        int memberId = Convert.ToInt32(Session["memberId"]);
        Member memEntity = new Member();
        memEntity.MemberId = memberId;

        MemberController memController = new MemberController();
        memEntity =memController.displayMemberInfo(memEntity.MemberId);

        Firstname = memEntity.FirstName;
        Lastname = memEntity.LastName;
        Dob = memEntity.DateOfBirth.ToShortDateString().ToString();
        Doj = memEntity.DateOfJoining.ToShortDateString().ToString();
        Address = memEntity.Address;
        PhoneNo = memEntity.Phone.ToString();
        Email = memEntity.Email;
        //Gender = memEntity.Gender.ToString();
        
        switch (memEntity.MemberType)
        {
            case 'p':
                MemberType = "Permanent member";
                break;
            case 't':
                MemberType = "Temporary member";
                break;
            case 'a':
                MemberType = "AddOn Member";
                break;
        }

        switch (memEntity.Gender)
        {
            case 'm':
                Gender = "Male";
                profileImage.ImageUrl = "~/images/icon/male_user.png";
                break;
            case 'f':
                Gender = "Female";
                profileImage.ImageUrl = "~/images/icon/female_user.png";
                break;
        }
       

        //StatusRemark = memEntity.StatusRemark;
       switch (memEntity.MaritialStatus)
        {
           case 'm':
            MaritalStatus = "Married";
            break;
           case 's':
            MaritalStatus = "Single";
            break;
        }
        
        MembershipExpiresOn = memEntity.DateOfExpiry.ToShortDateString().ToString();
        
        switch(memEntity.DeptId){
            case 1:
                SubscribedToDept = "Indoor Sports department";
                break;
            case 2:
                SubscribedToDept = "Outdoor Sports Department";
                break;
            case 3:
                SubscribedToDept="Liesure Center";
                break;
            case 5:
                SubscribedToDept="Subscribed to all Departments";
                break;
        }

        switch (memEntity.SportsPerson)
        {
            case 0:
                lblPlayer.Visible = false;
                break;
            case 1:
                SportsPerson = "Is a National player";
                break;
            case 2:
                SportsPerson = "Is a International Player";
                break;
        }
        
    }
    
    public string Firstname
    {
        get
        { return lblFirstName.Text; }
        set
        {
            lblFirstName.Text = value;
        } 
    }
    public string Lastname
    {
        get
        {
            return lblLastName.Text;
        }
        set
        {
            lblLastName.Text = value;
        }
    }
    public string Dob
    {
        get 
        {
            return lblDateOfBirth.Text;
        }
        set
        {
            lblDateOfBirth.Text = value;
        }
    }
    public string Address
    {
        get 
        {
            return lblAddress.Text;
        }
        set 
        {
            lblAddress.Text = value;
        }
    }
    public string PhoneNo
    {
        get 
        {
            return lbPhoneNo.Text;
        }
        set 
        {
            lbPhoneNo.Text=value;
        }
    }
    public string Doj
    {
        get
        {
            return lblDateOfJoining.Text;
        }
        set
        {
            lblDateOfJoining.Text = value;
        }
    }

    public string Email
    {
        get
        {
            return lblEmail.Text;
        }
        set
        {
            lblEmail.Text = value;
        }
    }

    public string MemberType
    {
        get
        {
            return lblMemType.Text;
        }
        set
        {
            lblMemType.Text = value;
        }
    }

    public string MaritalStatus
    {
        get
        {
            return lblMarStatus.Text;
        }
        set
        {
            lblMarStatus.Text = value;
        }
    }
    public string SportsPerson
    {
        get
        {
            return lblPlayer.Text;
        }
        set
        {
            lblPlayer.Text = value;
        }
    }

    public string SubscribedToDept
    {
        get
        {
            return lblSubscribedToDept.Text;
        }
        set
        {
            lblSubscribedToDept.Text = value;
        }
    }
    public string MembershipExpiresOn
    {
        get
        {
            return lblAccountExpiry.Text;
        }
        set
        {
            lblAccountExpiry.Text = value;
        }
    }

    public string Gender
    {
        get
        {
            return lblGender.Text;
        }
        set
        {
            lblGender.Text = value;
        }
    }
}
