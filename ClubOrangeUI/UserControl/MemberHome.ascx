<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberHome.ascx.cs" Inherits="UserControl_MemberHome" %>
<div class="dashBoard">
    <div class="userInfo">
        <div class="user"><asp:Image ID="proImg" runat="server" 
                ImageUrl="" /><%--<img src="images/icon/11082011996.jpg" />--%></div>
        <div class="userData"><h1>
            <asp:Label ID="lblName" runat="server"></asp:Label>
            </h1></div>
        <div class="edit">
            <a href="EditProfile.aspx">
                <img src="images/icon/edit_profile.png" alt="Edit Profile" title="Edit Profile" /></a>
        </div>
    </div>
    <ul>
        <li class="dashBoardItem">
            <a href="ViewProfile.aspx"><div class="dItem">
                <img src="images/icon/image.png" /> 
                <span>View Profile</span>
            </div></a>
         

            <a href="ViewBillInfo.aspx"><div class="dItem">
                <img src="images/icon/80.png" /> 
                <span>Billing information</span>
            </div></a>
            <a href="Reservation.aspx"><div class="dItem">
                <img src="images/icon/76.png" /> 
                <span>Reserve Facilities</span>
            </div></a>
            <a href="RenewMembership.aspx"><div class="dItem">
                <img src="images/icon/refresh.png" /> 
                <span>Renew Membership</span>
            </div></a>
            <a href="Upgradation.aspx"><div class="dItem">
                <img src="images/icon/promotion.png" /> 
                <span>Upgrade to Permanent</span>
            </div></a>
            <a href="MakePayment.aspx"><div class="dItem">
                <img src="images/icon/15.png" /> 
                <span>Make Payment</span>
            </div></a>
        </li>
       
    </ul>
</div>