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


public partial class ViewBillingInfol : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //int memberId = Convert.ToInt32(Session["memberId"]);
        BillingInfo billingEntity = new BillingInfo();
        //billingEntity.MemberId = memberId;

        BillingInfoController billController = new BillingInfoController();
        billingEntity = billController.Billing(billingEntity.MemberId);

        BillId = billingEntity.BillId.ToString();
        //MemberId = billingEntity.MemberId;
        PaymentMode = billingEntity.PaymentMode;
        PaymentFor = billingEntity.PaymentFor;
        //PaymentDate = billingEntity.PaymentDate;
        Due = billingEntity.Due.ToString();
        AmountPaid = billingEntity.AmountPaid.ToString();
        //ChequeNo = billingEntity.ChequeNo;
        //BranchName = billingEntity.BranchName;
       // BankName = billingEntity.BankName;
        //CardNo = billingEntity.CardNo;
       // CardType = billingEntity.CardType;

    }
        public string BillId
        {
            get
            {
                return lblBillId.Text; 
            }
            set
            {
             lblBillId.Text = value;
            } 
        }

        public string PaymentFor
        {
            get
            {
                return lblBillFor.Text;
            }
            set
            {
                lblBillFor.Text = value;
            }
        }

        public string PaymentMode
        {
            get
            {
                return lblMode.Text;
            }
            set
            {
               lblMode.Text = value;
            }
        }

        public string AmountPaid
        {
            get
            {
                return lblAmtPaid.Text;
            }
            set
            {
             lblAmtPaid.Text = value;
            }
        }

        public string Due
        {
            get
            {
                return lblDue.Text;
            }
            set
            {
              lblDue.Text = value;
            }
        }

}
        

        


