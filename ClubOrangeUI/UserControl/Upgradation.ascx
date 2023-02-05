<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Upgradation.ascx.cs" Inherits="UserControl_Upgradation" %>
<asp:Image ID="Image1" runat="server" ImageUrl="~/images/icon/promotion.png" /> 
<asp:Label ID="Label3" runat="server" 
    Text="Upgrade YourMembership, Become a permanent Member" Font-Bold="True"></asp:Label><br /><br />
<asp:Label ID="Label1" runat="server" CssClass="labelCSS" 
    Text="Membership Expiry Date :"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:Label ID="lblExpiry" runat="server" CssClass="labelCSS"></asp:Label>
<br />
<asp:Label ID="Label2" runat="server" Text="Membership type :"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="lblMemType" runat="server" CssClass="labelCSS"></asp:Label>
&nbsp;
&nbsp;
<br />
<br />
    <asp:Button ID="btnUpgrade" runat="server" CssClass="btnLog" Text="Upgrade" 
        onclick="btnUpgrade_Click" />
<p>
    <asp:Label ID="lblDisplayMess" runat="server" CssClass="labelCSS"></asp:Label>
</p>
<p style="margin-left: 120px">
    &nbsp;</p>

