using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OrangeExceptionSolution
{
    class MembershipException:Exception 
    {
        public string  Message 
        { get; set; }
    }
}
