<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberProfile.ascx.cs" Inherits="MemberProfile" %>

<div style="display:block;float:left">
    <div id="memberImg">
        <asp:Image ID="profileImage" runat="server" CssClass="profileImg" 
            ImageUrl="~/images/icon/male_user.png" />
    </div>
<form id="form1">
<br /> <br /> <br />
    <asp:Panel ID="PersonalDetail" runat="server" Height="266px" Width="550px">
    &nbsp;<h1>
            <asp:Label ID="lblFirstName" runat="server" Font-Size="Larger" Text="FirstName"></asp:Label>
            &nbsp;<asp:Label ID="lblLastName" runat="server" Font-Size="Larger" Text="LastName"></asp:Label>
        </h1>
         <div class="edit">
            <a href="EditProfile.aspx">
                <img src="images/icon/edit_profile.png" alt="Edit Profile" title="Edit Profile" /></a>
        </div>
        <p style="margin-left: 40px">
            <asp:Label ID="Label7" runat="server" CssClass="labelCSS" 
                Text="Membership Type :"></asp:Label>
            <asp:Label ID="lblMemType" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Panel ID="panelPersonal" runat="server" Height="62px" Font-Bold="False" 
            Font-Underline="False">
            <asp:Label ID="Label8" runat="server" Text="Personal Info:" CssClass="labelCSS" 
                Font-Bold="True" Font-Underline="True"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" CssClass="labelCSS" Text="Date Of Birth:"></asp:Label>
            <asp:Label ID="lblDateOfBirth" runat="server" Text="display"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="labelCSS" Text="Address"></asp:Label>
            <asp:Label ID="lblAddress" runat="server" Text="displayAddress"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="labelCSS" Text="Marital Status"></asp:Label>
            <asp:Label ID="lblMarStatus" runat="server" Text="Marital Status"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="labelCSS" Text="Gender"></asp:Label>
            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            <br />
            <asp:Label ID="lblPlayer" runat="server" CssClass="labelCSS" 
                Text="SportsPerson"></asp:Label>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="panelContact" runat="server">
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Contact Details:" 
                CssClass="labelCSS" Font-Bold="True" Font-Underline="True"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Email ID: " CssClass="labelCSS"></asp:Label>
            <asp:Label ID="lblEmail" runat="server" Text="displayEmailId"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Phone No: " CssClass="labelCSS"></asp:Label>
            <asp:Label ID="lbPhoneNo" runat="server" Text="dispPhoneNo"></asp:Label>
        </asp:Panel>
        <br />
        <asp:Panel ID="panelMembershipDetail" runat="server">
            <br />
            <asp:Label ID="Label10" runat="server" Text="Membership Details" 
                CssClass="labelCSS" Font-Bold="True" Font-Underline="True"></asp:Label>
            <br />
            <asp:Label ID="lblSubscribedToDept" runat="server" Text="Subscribed to dept"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Member Since" CssClass="labelCSS"></asp:Label>
            <asp:Label ID="lblDateOfJoining" runat="server" Text="displayDate"></asp:Label>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Membership Expires on :" 
                CssClass="labelCSS"></asp:Label>
            <asp:Label ID="lblAccountExpiry" runat="server" Text="AccountExpires"></asp:Label>
        </asp:Panel>
    </asp:Panel>
    </form>
</div>