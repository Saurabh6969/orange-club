using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Reservation
    {
        public int ReservationId { get; set; }
        public DateTime ReserveDate { get; set; }
        public int StartTime { get; set; }
        public int EndTime { get; set; }
        public string FacilityName { get; set; }
        public int ReservedFaciId { get; set; }
        public string ReservationSlot { get; set; }
        public int MemberID { get; set; }

        public string Status { get; set; }

        



    }
}
