using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OrangeBL;
using OrangeDAL;
using Entity;


namespace OrangeBL
{
    public class BL
    {
        public Login validate(Login e)
        {
            DAL dao = new DAL();
            
            Entity.Login login;
            try
            {
                
                login= dao.getLoginInfo(e);
                
               
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                dao.closeConnection();
            }
            return login;
        }

        public void lockAccount(Login e)
        {
            try
            {
                DAL dao = new DAL();
                dao.lockAccount(e);
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

        public Member getMemberInfo(Member m)
        {
            Member me= new Member();
            me.MemberId = m.MemberId;
            DAL dao = new DAL();
            return dao.fetchMemberInfo(me); ;
        }


        public bool addMemberInfo(Member m,Login l,Addon a)
        {
            bool flag = true;
            try
            {
                DAL doa = new DAL();
                if (m.MemberType == 'a')
                {
                    doa.addMemberInfo(m, l);
                    Member tempId = doa.fetchMemberUsinguserName(m);
                    a.MemberId = tempId.MemberId;
                    doa.addAddonInfo(a);
                }
                else
                {
                    doa.addMemberInfo(m, l);
                }
                
            }
            catch (Exception ex)
            {
                flag = false;
                throw ex;
            }
            return flag;
        }

        public bool updateMemberInfo(Member m)
        {
            bool flag = true;
            try
            {
                DAL doa = new DAL();
                doa.updateMemberInfo(m);
            }
            catch (Exception ex)
            {
                flag = false;
                throw ex;
            }
            return flag;
        }

        //========== Shrutee & Hiral || Billing Info || 24/09/2011 ||=================

        public BillingInfo getBillingInfo(BillingInfo bi)
        {
            DAL dao = new DAL();

            BillingInfo billing;
            try
            {

                billing = dao.getBillingInfo(bi);

                
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                dao.closeConnection();
            }
            return billing;

        }

        //end of billing info

        //================== Hiral Renewal===============
        public Member renewMembership(Member me)
        {
            DAL dl = new DAL();
            Member mem;
            try
            {
                mem= dl.renewMembership(me);
            }

            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                dl.closeConnection();
            }
            return mem;
        }

    // end of renewal

        public List<Member> fetchNewMemberInfo()
        {
            List<Member> ml = new List<Member>();
            DAL dao = new DAL();
            ml = dao.fetchNewMemberInfo();
            return ml;

        }

        //==============Shrutee - Upgradation==============


        public int checkUpgrade(Member me)
        {
            DAL dao = new DAL();
            Member membr;
            TimeSpan period;
            int days;
            int flag = 0;

            try
            {
                membr = dao.getDateDetails(me);

                if (membr.MemberType == 'p')
                    flag = 1;

                else if (membr.MemberType == 't')
                {
                    period = membr.DateOfExpiry.Subtract(membr.DateOfJoining);
                    days = period.Days;
                    if (days >= 90)
                        flag = 2;
                    else
                        flag = 3;
                }

                else if (membr.MemberType == 'a')
                {
                    period = DateTime.Now.Subtract(me.DateOfJoining);
                    days = period.Days;
                    if (days >= 365)
                        flag = 4;
                    else
                        flag = 5;
                }
            }

            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                dao.closeConnection();
            }

            return flag;

        }
        /* end of Upgradation */


        public int insertReservation(Reservation r)
        {
            int reserveId = 0;
            bool flag = true;
            try
            {
                DAL doa = new DAL();
                reserveId = doa.insertReservation(r);
            }
            catch (Exception ex)
            {
                flag = false;
                throw ex;
            }
            return reserveId;
        }
        //public Reservation GetReserveDetails(Reservation res)
        //{


        //    DAL dao = new DAL();
        //    Reservation reserve;
        //    try
        //    {

        //        reserve = dao.GetReservationInfo(res);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        dao.closeConnection();
        //    }
        //    return reserve;


        //}

    }
}
