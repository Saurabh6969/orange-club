<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="staff" MasterPageFile="~/ClubOrange.master" %>
<%@ Register src="UserControl/StaffHome.ascx" tagname="StaffHome" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="staffHome" runat="server">

    <uc1:StaffHome ID="StaffHome1" runat="server" />

</asp:Content>