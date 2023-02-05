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


public partial class UserControl_RenewalControl : System.Web.UI.UserControl
{
    Member mem = new Member();
    MemberController mController = new MemberController();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["memberId"] != null)
        {
            mem.MemberId=Convert.ToInt32(Session["memberId"].ToString());
        }
        Member m = mController.renewal(mem);

        MemberId = m.MemberId;
        MemberName = m.FirstName + " " + m.LastName;
        MemberType = m.MemberType;

        if (m.MemberType == 'p')
        {
            m.DateOfExpiry = m.DateOfExpiry.AddYears(1);
        }
        else if (m.MemberType == 't')
        {
            m.DateOfExpiry = m.DateOfExpiry.AddMonths(3);
        }
        DateOfJoining = m.DateOfJoining;
        DateOfExpiry = m.DateOfExpiry;
        /*r = renewControl.renewal(r.memberid);
        mController.renewal(mem);


        memberid = r.memberid;
        membername = r.membername;
        type = r.membertype;
         * /


        //if (type == 'p')
        //{
        //    r.dateofexpiry = r.dateofexpiry.AddYears(1);
        //}
        //else if (type == 't')
        //{
        //    r.dateofexpiry = r.dateofexpiry.AddMonths(3);
        //}

        /*
        dateofjoining = r.dateofjoining;
        dateofexpiry = r.dateofexpiry;
        **/
    }

    public int MemberId
    {
        get
        {
            return Convert.ToInt32( TextBox1.Text) ;
        }
        set
        {
          TextBox1.Text =  value.ToString();
        }
    }


    public string MemberName
    {
        get
        {
            return lblName.Text;
        }
        set
        {
            lblName.Text = value;
        }
    }

    public DateTime DateOfJoining
    {
        get
        {
            return DateTime.Parse( lbldoj.Text);
        }
        set
        {
        lbldoj.Text = value.ToString();
        }
    }

    public DateTime DateOfExpiry
    {
        get
        {
            return DateTime.Parse(lbldoe.Text);
        }
        set
        {
         lbldoe.Text =value.ToString();
        }
    }

    public char MemberType
    {
        get
        {
            return char.Parse(lblType.Text);
        }
        set
        {
            lblType.Text = value.ToString();
        }
    }

    protected void btnRenewal_Click(object sender, EventArgs e)
    {

        DateTime d = DateOfExpiry;
        DateTime newexp = new DateTime();
        if (MemberType == 'p')
        {
            newexp = d.AddYears(1);
        }
        else if (MemberType == 't')
        {
            newexp = d.AddMonths(3);
        }
        lbldoe.Text = newexp.ToString();


        /*if ('p' == type)
        {
            r.dateofexpiry = r.dateofexpiry.AddYears(1);
        }
        else if (type == 't')
        {
            r.dateofexpiry = r.dateofexpiry.AddMonths(3);
        }
        dateofexpiry = r.dateofexpiry.ToString();
        */
    }
}
