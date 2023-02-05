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
using OrangeDAL;

public partial class UserControl_Reservation : System.Web.UI.UserControl
{
    DAL dl = new DAL();
    Reservation res = new Reservation();



    protected void Page_Load(object sender, EventArgs e)
    {

        MemberController mc = new MemberController();
        if (Session["memberId"] != null)
        {
            Member me = mc.displayMemberInfo(Convert.ToInt32(Session["memberId"]));
            Name = me.FirstName + " " + me.LastName;
        }
    }

    public string Name
    {
        get { return lblName.Text; }
        set { lblName.Text = value; }
    }
    protected void btnReserve_Click(object sender, EventArgs e)
    {
        DateTime reserveDate = new DateTime(DateTime.Now.Year,
            Convert.ToInt32(ddlMonth.SelectedValue), Convert.ToInt32(ddlDay.SelectedValue));  //DateTime.Parse(Request.Form[ReserveDate.UniqueID]);

        DAL dl = new DAL();
        if (Session["memberId"] != null)
        {
            Member m = new Member();
            if (Session["memberId"] != null)
            {
                Reservation r = new Reservation();
                r.MemberID = Convert.ToInt32(Session["memberId"].ToString());
                r.ReserveDate = reserveDate;
                r.FacilityName = ddlFaciList.SelectedValue;
                r.ReservationSlot = ddlStime.SelectedValue + ddlEtime.SelectedValue;
                r.Status = "Pending";


                BL bl = new BL();
                int id = Convert.ToInt16(bl.insertReservation(r));
                Session.Add("reservationId", id);
                Session.Add("amount", "500");
                Session.Add("paymentFor", "Reservation");
                Session.Add("memberId", Session["memberId"].ToString());
                Session.Add("reserveId", Session["memberId"].ToString());

                Response.Redirect("MakePayment.aspx");
            }
        }


    }

}

