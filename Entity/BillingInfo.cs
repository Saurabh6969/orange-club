using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class BillingInfo
    {
        public int BillId { get; set; }
        public int MemberId { get; set; }
        public string PaymentMode { get; set; }
        public string PaymentFor { get; set; }
        public DateTime PaymentDate { get; set; }
        public int Due { get; set; }
        public int AmountPaid { get; set; }
        public long ChequeNo { get; set; }
        public string BranchName { get; set; }
        public string BankName { get; set; }
        public long CardNo { get; set; }
        public int CvcNo { get; set; }
        public DateTime CardExpiryDate { get; set; }
        public string CardType { get; set; }
        public int Paymentstatus { get; set; }
        public string PaymentRemark { get; set; }
    }
}

