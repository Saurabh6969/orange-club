using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OrangeBL;
using Entity;

namespace OrangeController
{
    public class StaffController
    {
        public List<Member> fetchNewMemberInfo()
        {
            List<Member> ml = new List<Member>();
            BL blc = new BL();
            ml=blc.fetchNewMemberInfo();
            return ml;
        }

    }
}
