using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Entity;
using System.Collections;

namespace OrangeDAL
{
    public class DAL
    {
        private SqlConnection _conn;
        private SqlCommand _cmd;
        private SqlDataReader _reader;
        private string _conString;

        public void getConnection()
        {
            try
            {
                _conString = ConfigurationManager.AppSettings["sqlConString"];
                _conn = new SqlConnection(_conString);
                _conn.Open();
            }
            catch (SqlException sqlex)
            {
                throw sqlex;
            }
        }

        public void closeConnection()
        {
            try
            {
                _conn.Close();
            }
            catch (SqlException sqlex)
            {
                throw sqlex;
            }
        }

        public Entity.Login getLoginInfo(Login le)
        {
            try
            {
                getConnection();
                string selectLogin = ConfigurationManager.AppSettings["selectLogin"];
                _cmd = new SqlCommand(selectLogin, _conn);
                _cmd.Parameters.AddWithValue("@user", le.Username);
                _cmd.Parameters.AddWithValue("@pass", le.Password);

                _reader = _cmd.ExecuteReader();
                Entity.Login e = new Entity.Login();
                if (_reader.Read())
                {
                    e.Username = _reader.GetString(0);
                    e.Role = Convert.ToString(_reader.GetString(2));
                    e.MemberId = Convert.ToInt32(_reader.GetInt32(3));
                    e.isLoggedIn = true;
                }
                else
                {
                    e.Username = null;
                    e.Password = null;
                    e.Role = null;
                }
                return e;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void lockAccount(Login l)
        {
            try
            {
                getConnection();
                string lockAccount = ConfigurationManager.AppSettings["lockAccount"];
                _cmd = new SqlCommand(lockAccount, _conn);
                _cmd.Parameters.AddWithValue("@user", l.Username);
                _cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        /* functions for the membership*/
        public Member fetchMemberUsinguserName(Member m)
        {
            Member me = new Member();
            try
            {
                //MemberInfoFromUsername
                getConnection();
                string selectLogin = ConfigurationManager.AppSettings["MemberInfoFromUsername"];
                _cmd = new SqlCommand(selectLogin, _conn);
                _cmd.Parameters.AddWithValue("@username", m.UserName);
                me.MemberId = Convert.ToInt32(_cmd.ExecuteScalar());
                //if (_reader.Read())
                //{
                //    me.MemberId=_reader.GetInt32(0);
                //}
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return me;
        }

        public Member fetchMemberInfo(Member m)
        {
            try
            {
                Member me = new Member();
                getConnection();
                string selectLogin = ConfigurationManager.AppSettings["selectMemberInfo"];
                _cmd = new SqlCommand(selectLogin, _conn);
                _cmd.Parameters.AddWithValue("@memberId", m.MemberId);
                _reader = _cmd.ExecuteReader();

                if (_reader.Read())
                {
                    me.FirstName = _reader.GetString(1);
                    me.LastName = _reader.GetString(2);
                    me.Address = _reader.GetString(3);
                    me.Email = _reader.GetString(4);
                    me.Phone = _reader.GetInt64(5);
                    me.DateOfBirth = _reader.GetDateTime(6);
                    me.DateOfJoining = _reader.GetDateTime(7);
                    me.MemberType = char.Parse(_reader.GetString(8));
                    me.AccountStatus = _reader.GetInt32(9);
                    me.StatusRemark = _reader.GetString(10);
                    me.MaritialStatus = char.Parse(_reader.GetString(11));
                    me.SportsPerson = _reader.GetInt32(12);
                    me.DeptId = _reader.GetInt32(13);
                    me.UserName = _reader.GetString(14);
                    me.DateOfExpiry = _reader.GetDateTime(15);
                    me.Gender = char.Parse(_reader.GetString(16));
                    me.Due = _reader.GetInt32(17);
                    me.MemberId = _reader.GetInt32(18);
                }
                else
                {
                    me = null;
                }
                return me;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void addMemberInfo(Member m, Login l)
        {
            try
            {
                getConnection();
                string insertMember = ConfigurationManager.AppSettings["insertMember"];
                //_cmd = new SqlCommand(selectLogin, _conn);
                _cmd = new SqlCommand();
                _cmd.CommandType = CommandType.StoredProcedure;
                _cmd.Connection = _conn;
                _cmd.CommandText = insertMember;
                _cmd.Parameters.AddWithValue("@fName", m.FirstName);
                _cmd.Parameters.AddWithValue("@lName", m.LastName);
                _cmd.Parameters.AddWithValue("@gender", m.Gender);
                _cmd.Parameters.AddWithValue("@address", m.Address);
                _cmd.Parameters.AddWithValue("@email", m.Email);
                _cmd.Parameters.AddWithValue("@phone", m.Phone);
                _cmd.Parameters.AddWithValue("@dob", m.DateOfBirth);
                _cmd.Parameters.AddWithValue("@doj", m.DateOfJoining);
                _cmd.Parameters.AddWithValue("@type", m.MemberType);
                _cmd.Parameters.AddWithValue("@accountStatus", m.AccountStatus);
                _cmd.Parameters.AddWithValue("@statusRemark", m.StatusRemark);
                _cmd.Parameters.AddWithValue("@maritalStatus", Char.Parse(m.MaritialStatus.ToString()));
                _cmd.Parameters.AddWithValue("@sportsPerson", m.SportsPerson);
                _cmd.Parameters.AddWithValue("@deptId", m.DeptId);
                _cmd.Parameters.AddWithValue("@username", m.UserName);
                _cmd.Parameters.AddWithValue("@password", m.Password);
                _cmd.Parameters.AddWithValue("@dateOfExpiry", m.DateOfExpiry);
                _cmd.Parameters.AddWithValue("@securityQuestion", l.SecurityQuestion);
                _cmd.Parameters.AddWithValue("@securityAnswer", l.SecurityAnswer);

                _cmd.ExecuteNonQuery();
            }
            catch (SqlException sexc)
            {
                throw sexc;
            }
            finally
            {
                closeConnection();
            }
        }

        public void addAddonInfo(Addon m)
        {
            try
            {
                getConnection();
                string addonMember = ConfigurationManager.AppSettings["addAddOn"];
                //_cmd = new SqlCommand(selectLogin, _conn);
                _cmd = new SqlCommand(addonMember, _conn);
                _cmd.Parameters.AddWithValue("@memberId", m.MemberId);
                _cmd.Parameters.AddWithValue("@referenceId", m.ReferenceId);
                _cmd.Parameters.AddWithValue("@relation", m.Relation);
                _cmd.ExecuteNonQuery();
            }
            catch (SqlException sexc)
            {
                throw sexc;
            }
            finally
            {
                closeConnection();
            }
        }

        public void updateMemberInfo(Member m)
        {
            try
            {
                getConnection();
                string updateMember = ConfigurationManager.AppSettings["updateMember"];
                //_cmd = new SqlCommand(selectLogin, _conn);
                _cmd = new SqlCommand();
                _cmd.CommandType = CommandType.StoredProcedure;
                _cmd.Connection = _conn;
                _cmd.CommandText = updateMember;
                _cmd.Parameters.AddWithValue("@memId", m.MemberId);
                _cmd.Parameters.AddWithValue("@fName", m.FirstName);
                _cmd.Parameters.AddWithValue("@lName", m.LastName);
                _cmd.Parameters.AddWithValue("@gender", m.Gender);
                _cmd.Parameters.AddWithValue("@address", m.Address);
                _cmd.Parameters.AddWithValue("@email", m.Email);
                _cmd.Parameters.AddWithValue("@phone", m.Phone);
                _cmd.Parameters.AddWithValue("@dob", m.DateOfBirth);
                _cmd.Parameters.AddWithValue("@maritalStatus", Char.Parse(m.MaritialStatus.ToString()));
                _cmd.ExecuteNonQuery();
            }
            catch (SqlException sexc)
            {
                throw sexc;
            }
            finally
            {
                closeConnection();
            }
        }


        /* 24-9-2011 Staff Approval for membership */
        public List<Member> fetchNewMemberInfo()
        {
            List<Member> memberList = new List<Member>();
            try
            {

                getConnection();
                string newMembers = ConfigurationManager.AppSettings["selectNewMember"];
                _cmd = new SqlCommand(newMembers, _conn);

                _reader = _cmd.ExecuteReader();
                while (_reader.Read())
                {
                    Member me = new Member();
                    me.MemberId = _reader.GetInt32(0);
                    me.FirstName = _reader.GetString(1);
                    me.LastName = _reader.GetString(2);
                    me.Address = _reader.GetString(3);
                    me.Email = _reader.GetString(4);
                    me.Phone = _reader.GetInt64(5);
                    me.DateOfBirth = _reader.GetDateTime(6);
                    me.DateOfJoining = _reader.GetDateTime(7);
                    me.MemberType = char.Parse(_reader.GetString(8));
                    me.AccountStatus = _reader.GetInt32(9);
                    me.StatusRemark = _reader.GetString(10);
                    me.MaritialStatus = char.Parse(_reader.GetString(11));
                    me.SportsPerson = _reader.GetInt32(12);
                    me.DeptId = _reader.GetInt32(13);
                    me.UserName = _reader.GetString(14);
                    me.DateOfExpiry = _reader.GetDateTime(15);
                    me.Gender = char.Parse(_reader.GetString(16));
                    memberList.Add(me);

                }

            }
            catch (Exception e)
            {

            }
            return memberList;
        }


        /* 24-9-2011 Staff Approval for membership */



        //========== Shrutee & Hiral || Billing Info || 24/09/2011 ||=================


        public Entity.BillingInfo getBillingInfo(BillingInfo bi)
        {
            try
            {
                getConnection();
                string selectBillInfo = ConfigurationManager.AppSettings["selectBillInfo"];
                _cmd = new SqlCommand(selectBillInfo, _conn);
                //_cmd.Parameters.AddWithValue("@billId", bi.BillId);
                //_cmd.Parameters.AddWithValue("@memberId", bi.MemberId);
                //_cmd.Parameters.AddWithValue("@paymentMode", bi.PaymentMode);
                //_cmd.Parameters.AddWithValue("@paymentFor", bi.PaymentFor);
                //_cmd.Parameters.AddWithValue("@paymentDate", bi.PaymentDate);
                //_cmd.Parameters.AddWithValue("@due", bi.Due);
                //_cmd.Parameters.AddWithValue("@amtPaid", bi.AmountPaid);
                //_cmd.Parameters.AddWithValue("@chequeNo", bi.ChequeNo);
                //_cmd.Parameters.AddWithValue("@branchName", bi.BranchName);
                //_cmd.Parameters.AddWithValue("@bankName", bi.BankName);
                //_cmd.Parameters.AddWithValue("@cardNo", bi.CardNo);
                //_cmd.Parameters.AddWithValue("@cardType", bi.CardType);

                _reader = _cmd.ExecuteReader();
                Entity.BillingInfo b = new Entity.BillingInfo();
                if (_reader.Read())
                {
                    b.BillId = _reader.GetInt32(0);
                    b.MemberId = _reader.GetInt32(1);
                    b.PaymentMode = _reader.GetString(2);
                    b.PaymentFor = _reader.GetString(3);
                    b.PaymentDate = _reader.GetDateTime(4);
                    b.Due = _reader.GetInt32(5);
                    b.AmountPaid = _reader.GetInt32(6);
                    b.ChequeNo = _reader.GetInt64(7);
                    b.BranchName = _reader.GetString(8);
                    b.BankName = _reader.GetString(9);
                    b.CardNo = _reader.GetInt64(10);
                    b.CardType = _reader.GetString(11);

                }

                return b;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                closeConnection();
            }

        }
        /* end of billing info*/


        /*================Hiral Renewal=========================*/
        public Member renewMembership(Member me)
        {
            try
            {
                getConnection();
                string Renewalmembership = ConfigurationManager.AppSettings["Renewalmembership"];
                _cmd = new SqlCommand(Renewalmembership, _conn);
                _cmd.Parameters.AddWithValue("@memberId", me.MemberId);

                Member mem = new Member();

                _reader = _cmd.ExecuteReader();
                if (_reader.Read())
                {
                    mem.MemberId = _reader.GetInt32(0);
                    mem.FirstName = _reader.GetString(1);
                    mem.DateOfJoining = _reader.GetDateTime(2);
                    //_reader.GetValue(9);
                    mem.MemberType = Convert.ToChar(_reader.GetValue(3));
                    mem.DateOfExpiry = _reader.GetDateTime(4);

                }
                return mem;

            }

            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {

                closeConnection();
            }

        }

        /** meenaxi 24-09-2011 ** approval of membership meenaxi*/
        public void Approve(Member me)
        {
            try
            {
                getConnection();
                string updateStatus = ConfigurationManager.AppSettings["acceptMember"];
                _cmd = new SqlCommand(updateStatus, _conn);
                _cmd.Parameters.AddWithValue("@m", me.MemberId);
                _cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {

            }
            finally
            {
                closeConnection();
            }
        }
        public void Reject(Member me)
        {
            try
            {
                getConnection();
                string updateStatus = ConfigurationManager.AppSettings["rejectMember"];
                _cmd = new SqlCommand(updateStatus, _conn);
                _cmd.Parameters.AddWithValue("@m", me.MemberId);
                _cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {

            }
            finally
            {
                closeConnection();
            }
        }

        public int getRegistrationAmount(Member m)
        {
            getConnection();
            int amount = 0;
            if (m.MemberType == 'p')
            {
                string perMemFee = ConfigurationManager.AppSettings["permanentRegistrationFee"];
                _cmd = new SqlCommand(perMemFee, _conn);
                amount = Convert.ToInt32(_cmd.ExecuteScalar());

            }
            else if (m.MemberType == 't')
            {
                string tempMemFee = ConfigurationManager.AppSettings["temporaryRegistrationFee"];
                _cmd = new SqlCommand(tempMemFee, _conn);
                amount = Convert.ToInt32(_cmd.ExecuteScalar());
            }
            else if (m.MemberType == 'a')
            {
                string addonMemFee = ConfigurationManager.AppSettings["addonRegistrationFee"];
                _cmd = new SqlCommand(addonMemFee, _conn);
                amount = Convert.ToInt32(_cmd.ExecuteScalar());
            }
            return amount;

        }
        /** meenaxi 24-09-2011 ** approval of membership meenaxi*/
        /* added by shrutee 2010-9-26 Updradation*/
        public Entity.BillingInfo getBillStatus(BillingInfo bi)
        {
            try
            {
                getConnection();
                string selectBStatus = ConfigurationManager.AppSettings["selectBillStatus"];
                _cmd = new SqlCommand(selectBStatus, _conn);
                _cmd.Parameters.AddWithValue("@memberId", bi.MemberId);
                _reader = _cmd.ExecuteReader();
                Entity.BillingInfo bill = new Entity.BillingInfo();
                if (_reader.Read())
                {
                    bill.Due = _reader.GetInt32(0);
                }

                return bill;
            }

            catch (SqlException se)
            {
                throw se;
            }
            finally
            {
                closeConnection();
            }
        }

        public Entity.Member getDateDetails(Member m)
        {
            try
            {
                getConnection();
                string selectDDetails = ConfigurationManager.AppSettings["selectDates"];
                _cmd = new SqlCommand(selectDDetails, _conn);
                _cmd.Parameters.AddWithValue("@memberId", m.MemberId);
                _reader = _cmd.ExecuteReader();
                Entity.Member mem = new Entity.Member();
                if (_reader.Read())
                {
                    mem.DateOfJoining = _reader.GetDateTime(0);
                    mem.DateOfExpiry = _reader.GetDateTime(1);
                    mem.MemberType = Convert.ToChar(_reader.GetString(2));

                }

                return mem;
            }

            catch (SqlException sqe)
            {
                throw sqe;
            }
            finally
            {
                closeConnection();
            }
        }

        public Entity.Member getRef(Member m)
        {
            try
            {
                getConnection();
                string selectReference = ConfigurationManager.AppSettings["selectRef"];
                _cmd = new SqlCommand(selectReference, _conn);
                _cmd.Parameters.AddWithValue("@memberId", m.MemberId);
                _reader = _cmd.ExecuteReader();
                Entity.Member memb = new Entity.Member();
                if (_reader.Read())
                {
                    memb.DateOfJoining = _reader.GetDateTime(0);
                    memb.MemberId = _reader.GetInt32(1);
                }

                return memb;
            }

            catch (SqlException sqex)
            {
                throw sqex;
            }
            finally
            {
                closeConnection();
            }
        }


        public int calculateAmt(Member me)
        {
            try
            {
                getConnection();

                string getAmt = ConfigurationManager.AppSettings["selectUpgradFee"];
                _cmd = new SqlCommand(getAmt, _conn);
                int amt = Convert.ToInt32(_cmd.ExecuteScalar());

                if (me.MemberType == 'a')
                {
                    amt = (amt * 75) / 100;

                }
                me.Due = amt;

                return amt;
            }

            catch (SqlException se)
            {
                throw se;
            }

            finally
            {
                closeConnection();
            }
        }


        /* end of upgradation */

        /*make payment */

        /*Hiral Meenaxi Renewal*/
        public List<BillingInfo> ViewBillInfo(DateTime d1, DateTime d2, int mId)
        {
            List<BillingInfo> listBillInfo = new List<BillingInfo>();

            try
            {
                getConnection();
                string viewBill = ConfigurationManager.AppSettings["viewBill"];
                _cmd = new SqlCommand(viewBill, _conn);
                _cmd.Parameters.AddWithValue("@memberId", mId);
                _cmd.Parameters.AddWithValue("@Date1", d1 );
                _cmd.Parameters.AddWithValue("@Date2", d2);
                _reader = _cmd.ExecuteReader();
                if (_reader.Read())
                {
                    BillingInfo bi = new BillingInfo();
                    bi.BillId = _reader.GetInt32(0);
                    bi.MemberId = _reader.GetInt32(1);
                    bi.PaymentMode = _reader.GetString(2);
                    bi.PaymentFor = _reader.GetString(3);
                    bi.PaymentDate = _reader.GetDateTime(4);
                    bi.AmountPaid = _reader.GetInt32(5);
                    //bi.Due = _reader.GetInt32(6);
                    bi.PaymentRemark = _reader.GetString(6);
                    listBillInfo.Add(bi);
                }

                return listBillInfo;

            }
            catch (Exception ex)
            {
                throw ex;
            }



            finally
            {
                closeConnection();
            }

        }

        /*27-9-2011 Meenaxi Make Payment*/
        public void InsertBillCash(int id, char paymentMode, string paymentFor, DateTime date, int amountPaid, int paymentStatus, string paymentRemark)
        {
            getConnection();
            _cmd = new SqlCommand("set ansi_warnings off INSERT INTO tbl_billingInfo(memberId,paymentMode,paymentFor,Date,amountPaid,paymentStatus,paymentRemark) values(@id,@paymentMode,@paymentFor,@date,@amountPaid,@paymentStatus,@paymentRemark)", _conn);
            _cmd.Parameters.AddWithValue("@id", id);
            _cmd.Parameters.AddWithValue("@paymentMode", paymentMode);
            _cmd.Parameters.AddWithValue("@paymentFor", paymentFor);
            _cmd.Parameters.AddWithValue("@date", date);
            _cmd.Parameters.AddWithValue("@amountPaid", amountPaid);
            _cmd.Parameters.AddWithValue("@paymentStatus", paymentStatus);
            _cmd.Parameters.AddWithValue("@paymentRemark", paymentRemark);
            _cmd.ExecuteNonQuery();
            closeConnection();

        }

        public void Updatedue(int id, int amountPaid)
        {
            getConnection();
            _cmd = new SqlCommand("set ansi_warnings off select due from tbl_member where memberId=@id", _conn);
            _cmd.Parameters.AddWithValue("@id", id);
            int due = Convert.ToInt32(_cmd.ExecuteScalar());
            due = due - amountPaid;
            _cmd = new SqlCommand("set ansi_warnings off update tbl_member set due=@due where memberId=@id", _conn);
            _cmd.Parameters.AddWithValue("@due", due);
            _cmd.Parameters.AddWithValue("@id", id);
            _cmd.ExecuteNonQuery();
            closeConnection();

        }

        public void InsertBillCheque(int id, char paymentMode, string paymentFor, DateTime date, int amountPaid, long chequeNo, string bankName, string branchName, int paymentStatus, string paymentRemark)
        {
            getConnection();
            _cmd = new SqlCommand("set ansi_warnings off INSERT INTO tbl_billingInfo(memberId,paymentMode,paymentFor,Date,amountPaid,chequeNo,branchName,bankName,paymentStatus,paymentRemark) values(@id,@paymentMode,@paymentFor,@date,@amountPaid,@chequeNo,@branchName,@bankName,@paymentStatus,@paymentRemark)", _conn);
            _cmd.Parameters.AddWithValue("@id", id);
            _cmd.Parameters.AddWithValue("@paymentMode", paymentMode);
            _cmd.Parameters.AddWithValue("@paymentFor", paymentFor);
            _cmd.Parameters.AddWithValue("@date", date);
            _cmd.Parameters.AddWithValue("@amountPaid", amountPaid);
            _cmd.Parameters.AddWithValue("@chequeNo", chequeNo);
            _cmd.Parameters.AddWithValue("@branchName", branchName);
            _cmd.Parameters.AddWithValue("@bankName", bankName);
            _cmd.Parameters.AddWithValue("@paymentStatus", paymentStatus);
            _cmd.Parameters.AddWithValue("@paymentRemark", paymentRemark);
            _cmd.ExecuteNonQuery();
            closeConnection();

        }
        public void InsertBillCard(int id, char paymentMode, string paymentFor, DateTime date, int amountPaid, long cardNo, int ccvno, string cardType, int paymentStatus, string paymentRemark)
        {
            getConnection();
            _cmd = new SqlCommand("set ansi_warnings off INSERT INTO tbl_billingInfo(memberId,paymentMode,paymentFor,Date,amountPaid,cardNo,cvcNo,cardType,paymentStatus,paymentRemark) values(@id,@paymentMode,@paymentFor,@date,@amountPaid,@cardNo,@ccvno,@cardType,@paymentStatus,@paymentRemark)", _conn);
            _cmd.Parameters.AddWithValue("@id", id);
            _cmd.Parameters.AddWithValue("@paymentMode", paymentMode);
            _cmd.Parameters.AddWithValue("@paymentFor", paymentFor);
            _cmd.Parameters.AddWithValue("@date", date);
            _cmd.Parameters.AddWithValue("@amountPaid", amountPaid);
            _cmd.Parameters.AddWithValue("@cardNo", cardNo);
            _cmd.Parameters.AddWithValue("@ccvno", ccvno);
            _cmd.Parameters.AddWithValue("@cardType", cardType);
            _cmd.Parameters.AddWithValue("@paymentStatus", paymentStatus);
            _cmd.Parameters.AddWithValue("@paymentRemark", paymentRemark);
            _cmd.ExecuteNonQuery();
            closeConnection();
        }
        /*27-9-2011 Meenaxi Make Payment*/


        /*Approve/Reject Payment Meenaxi 28/9/2011*/
        public void ApprovePayment(BillingInfo b)
        {
            getConnection();
            _cmd = new SqlCommand("update tbl_billingInfo set paymentStatus=1 where billId=@billid", _conn);
            _cmd.Parameters.AddWithValue("@billid", b.BillId);
            _cmd.ExecuteNonQuery();
            closeConnection();
        }
        public void RejectPayment(BillingInfo b)
        {
            getConnection();
            _cmd = new SqlCommand("update tbl_billingInfo set paymentStatus=2 where billId=@billid", _conn);
            _cmd.Parameters.AddWithValue("@billid", b.BillId);
            _cmd.ExecuteNonQuery();
            closeConnection();
        }
        /*Approve/Reject Payment Meenaxi 28/9/2011*/

        public int getAllMemberCount()
        {
            int i = 0;
            try
            {
                getConnection();
                string totalMember = ConfigurationManager.AppSettings["totalMember"];
                _cmd = new SqlCommand(totalMember, _conn);
                i = Convert.ToInt32(_cmd.ExecuteScalar());

            }

            catch (SqlException se)
            {
                throw se;
            }
            finally
            {
                closeConnection();
            }
            return i;
        }

        public int getAllMemberCount(char type, int statusCode)
        {
            int i = 0;
            try
            {
                getConnection();
                string selectedMember = ConfigurationManager.AppSettings["selectedMember"];
                _cmd = new SqlCommand(selectedMember, _conn);
                _cmd.Parameters.AddWithValue("@status", statusCode);
                _cmd.Parameters.AddWithValue("@memberType", type);
                i = Convert.ToInt32(_cmd.ExecuteScalar());
            }

            catch (SqlException se)
            {
                throw se;
            }
            finally
            {
                closeConnection();
            }
            return i;
        }

        public int getRevenueFor(char type)
        {
            int i = 0;
            try
            {
                getConnection();
                string getRevenue = ConfigurationManager.AppSettings["getRevenue"];
                _cmd = new SqlCommand(getRevenue, _conn);
                _cmd.Parameters.AddWithValue("@memberType", type);

                var amount = _cmd.ExecuteScalar();

                if (amount.GetType().Name.ToLower() != "dbnull")
                    i = Convert.ToInt32(amount);
            }

            catch (SqlException se)
            {
                throw se;
            }
            finally
            {
                closeConnection();
            }
            return i;
        }

        public int getDuePaymentMemberCount()
        {
            int i = 0;
            try
            {
                getConnection();
                string countDefaulter = ConfigurationManager.AppSettings["countDefaulter"];
                _cmd = new SqlCommand(countDefaulter, _conn);
                i = Convert.ToInt32(_cmd.ExecuteScalar());
            }

            catch (SqlException se)
            {
                throw se;
            }
            finally
            {
                closeConnection();
            }
            return i;
        }



        public int insertReservation(Reservation r)
        {
            int newId = 0;
            try
            {
                getConnection();
                string insertReservation = "insertReservation";//ConfigurationManager.AppSettings["insertReservation"];
                _cmd = new SqlCommand(insertReservation, _conn);
                _cmd.CommandType = CommandType.StoredProcedure;
                _cmd.Parameters.AddWithValue("@memberId", r.MemberID);
                _cmd.Parameters.AddWithValue("@reservationDate", r.ReserveDate);
                _cmd.Parameters.AddWithValue("@facilty", r.FacilityName);
                _cmd.Parameters.AddWithValue("@reservationSlot", r.ReservationSlot);
                _cmd.Parameters.AddWithValue("@status", r.Status);

                var id = _cmd.ExecuteScalar();

                if (id.GetType().Name.ToLower() != "dbnull")
                    newId = Convert.ToInt32(id);
            }
            catch (SqlException sexc)
            {
                throw sexc;
            }
            finally
            {
                closeConnection();
            }
            return newId;
        }


        //public Entity.Reservation GetReservationInfo(Entity.Reservation re)
        //{
        //    try
        //    {
        //        getConnection();
        //        string selectReservationDetails = ConfigurationManager.AppSettings["selectReservationDetails"];
        //        _cmd = new SqlCommand(selectReservationDetails, _conn);

        //        _reader = _cmd.ExecuteReader();
        //        Entity.Reservation reserve = new Entity.Reservation();

        //        if (_reader.Read())
        //        {
        //            //reserve.ReservationId = _reader.GetInt32(0);
        //            //reserve.ReserveDate = _reader.GetDateTime(1);
        //            reserve.FacilityName = _reader.GetString(0);
        //            reserve.StartTime = _reader.GetInt32(1);
        //            reserve.EndTime = _reader.GetInt32(2);
        //            reserve.ReserveDate = _reader.GetDateTime(3);
        //        }

        //        return reserve;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }


        //}
    }
}
