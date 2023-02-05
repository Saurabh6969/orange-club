<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApprovalOfMembership.aspx.cs" Inherits="ApprovalOfMembership" MasterPageFile="~/ClubOrange.master" %>

<%@ Register src="UserControl/ApproveRejectControl.ascx" tagname="ApproveRejectControl" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="mainContent" ID="editProfile"  runat="server">

    <uc1:ApproveRejectControl ID="ApproveRejectControl1" runat="server" />
</asp:Content>
