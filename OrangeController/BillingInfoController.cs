using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using OrangeBL;

namespace OrangeController
{
    public class BillingInfoController
    {
       public BillingInfo Billing(int memberId)
        {
            BillingInfo bi = new BillingInfo();
            bi.MemberId=memberId;
            BL bl = new BL();
            return bl.getBillingInfo(bi);

          
        }


        
    }
    
}
