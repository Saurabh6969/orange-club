<%@ Page Language="C#" AutoEventWireup="true" CodeFile="member.aspx.cs" Inherits="member" MasterPageFile="~/ClubOrange.master" EnableEventValidation="true" %>
<%@ Register src="UserControl/LoginUC.ascx" tagname="LoginUC" tagprefix="uc1" %>
<%@ Register src="UserControl/Logout.ascx" tagname="Logout" tagprefix="uc2" %>
<%@ Register src="UserControl/MemberProfile.ascx" tagname="MemberProfile" tagprefix="uc3" %>
<%@ Register src="UserControl/MemberHome.ascx" tagname="MemberHome" tagprefix="uc4" %>
<asp:Content ContentPlaceHolderID="mainContent" runat="server">
    
    <uc4:MemberHome ID="MemberHome1" runat="server" />
    
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="logout" runat="server" >

    <uc2:Logout ID="Logout1" runat="server" />

</asp:Content>

