<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="ViewProfile" MasterPageFile="~/ClubOrange.master" %>
<%@ Register src="UserControl/MemberProfile.ascx" tagname="MemberProfile" tagprefix="uc1" %>
<%@ Register src="UserControl/Logout.ascx" tagname="Logout" tagprefix="uc2" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="myProfile" runat="server" >

    <uc1:MemberProfile ID="MemberProfile1" runat="server" />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="logout" runat="server" >

    <uc2:Logout ID="Logout1" runat="server" />

</asp:Content>
