<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" MasterPageFile="~/ClubOrange.master" %>
<%@ Register src="UserControl/Member_registration.ascx" tagname="Member_registration" tagprefix="uc1" %>


<%@ Register src="UserControl/Logout.ascx" tagname="Logout" tagprefix="uc2" %>


<asp:Content ID="logout" ContentPlaceHolderID="logout" runat="server" >
    <uc2:Logout ID="Logout1" runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderID="mainContent" runat="server" >
    <uc1:Member_registration ID="Member_registration1" runat="server" />
</asp:Content>