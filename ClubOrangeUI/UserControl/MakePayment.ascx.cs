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
using OrangeDAL;
public partial class MakePaymentControl : System.Web.UI.UserControl
{
    int amountPaid;
    int id, ccvno;
    DateTime date;
    DAL dl = new DAL();
    char paymentMode;
    long cardNo, chequeNo;
    string paymentFor, paymentRemark, bankName, branchName, cardType;
    int amountToBePaid, paymentStatus;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Session["memberId"].ToString());
        if (Session["paymentFor"] == null)
        {
            paymentFor = "Pending Dues";
            lblPayFor.Text = "Pending Dues";
        }
        else
        {
            paymentFor = Session["paymentFor"].ToString();
            lblPaymentFor.Text = Session["paymentFor"].ToString();
        }
        if (!string.IsNullOrEmpty(Convert.ToString(Session["amount"])))
        {
            amountToBePaid = Convert.ToInt32(Session["amount"].ToString());
            lblAmountFor.Text = Session["amount"].ToString();
        }
    }

    protected void dropdwMode_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {

            if (dropdwMode.SelectedIndex == 1)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            if (dropdwMode.SelectedIndex == 2)
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
            if (dropdwMode.SelectedIndex == 0)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;

            }

        }

    }
    protected void btnMakePay_Click(object sender, EventArgs e)
    {

    }
    protected void btnmkpay_Click1(object sender, EventArgs e)
    {
        if (dropdwMode.SelectedIndex == 0)
        {

            paymentMode = 'c';
            amountPaid = Convert.ToInt32(txtAmount.Text);
            date = DateTime.Now;
            paymentStatus = 0;
            paymentRemark = "pending";
            dl.InsertBillCash(id, paymentMode, paymentFor, date, amountPaid, paymentStatus, paymentRemark);
            dl.Updatedue(id, amountPaid);
            Response.Redirect("PaymentThankYou.aspx");


        }
        else if (dropdwMode.SelectedIndex == 1)
        {

            paymentMode = 'q';
            amountPaid = Convert.ToInt32(txtAmount.Text);
            date = DateTime.Now;
            paymentStatus = 0;
            paymentRemark = "pending";
            chequeNo = long.Parse(txtCheqNo.Text);
            bankName = txtBankName.Text;
            branchName = txtBranchName.Text;
            dl.InsertBillCheque(id, paymentMode, paymentFor, date, amountPaid, chequeNo, bankName, branchName, paymentStatus, paymentRemark);
            dl.Updatedue(id, amountPaid);

        }
        else
        {

            paymentMode = 'd';
            amountPaid = Convert.ToInt32(txtAmount.Text);
            date = DateTime.Now;
            paymentStatus = 0;
            paymentRemark = "pending";
            cardNo = Convert.ToInt64(txtCardNo.Text);
            ccvno = Convert.ToInt32(txtCcvNo.Text);
            if (dropdwnCard.SelectedIndex == 0)
                cardType = "Visa Card";
            else
                cardType = "Master Card";
            dl.InsertBillCard(id, paymentMode, paymentFor, date, amountPaid, cardNo, ccvno, cardType, paymentStatus, paymentRemark);
            dl.Updatedue(id, amountPaid);
            Response.Redirect("PaymentThankYou.aspx");

        }
    }
}



