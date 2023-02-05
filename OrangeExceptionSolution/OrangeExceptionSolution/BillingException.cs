using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OrangeExceptionSolution
{
    class BillingException:Exception 
    {
        public string  Message 
        { get; set; }
    }
}
