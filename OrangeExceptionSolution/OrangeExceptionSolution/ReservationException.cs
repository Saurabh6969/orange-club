using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OrangeExceptionSolution
{
    class ReservationException:Exception 
    {
        public string  Message { get; set; }
    }
}
