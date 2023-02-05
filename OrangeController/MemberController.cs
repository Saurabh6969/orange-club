using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using OrangeBL;
namespace OrangeController
{
    public class MemberController
    {
        public Member displayMemberInfo(int id)
        {
            Member me = new Member();
            me.MemberId = id;
            BL bl = new BL();
            return bl.getMemberInfo(me);
            
        }
        //public void updateMemberInfo(Member m)
        //{
        //    BL bl = new BL();
        //    bl.updateMemberInfo(m);
        //}

        public bool insertMemberInfo(Member m,Login l,Addon a)
        {
            LoginController lc = new LoginController();
            m.Password=lc.getHash(m.Password);
            BL bl = new BL();
            return bl.addMemberInfo(m, l,a);
            
        }

        public bool updateMemberInfo(Member m)
        {
            BL bl = new BL();
            return bl.updateMemberInfo(m);

        }


        /* functions for renewal */
        public Member renewal(Member me)
        {
            Member mem = new Member();
            mem.MemberId= me.MemberId;
            BL bl = new BL();
            return bl.renewMembership(mem);
        }


        /* added by shrutee 2011-9-26 for Upgradation */

        public int chkUpgradation(int mid)
        {
            Member mem = new Member();
            mem.MemberId = mid;
            BL blg = new BL();
            return blg.checkUpgrade(mem);



        }

        /* end of upgradation */
    }
}
