using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OrangeExceptionSolution
{
    public class LoginException:Exception 
    {
        public String Message 
        { get; set; }
    }
}
