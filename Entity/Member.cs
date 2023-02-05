using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Member
    {
       

        public int MemberId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public long Phone { get; set; }
        public DateTime DateOfBirth { get; set; }
        public DateTime DateOfJoining { get; set; }
        public char MemberType { get; set; }
        public int AccountStatus { get; set; }
        public string StatusRemark { get; set; }
        public char MaritialStatus { get; set; }
        public int SportsPerson { get; set; }
        public int DeptId { get; set; }
        public string UserName { get; set; }
        public DateTime DateOfExpiry { get; set; }
        public char Gender { get; set; }
        public string Password { get; set; }
        public int ReferenceId { get; set; }
        public int Due { get; set; }
  

    }
}
