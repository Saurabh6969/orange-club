<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" MasterPageFile="~/ClubOrange.master"%>
<%@ Register src="UserControl/UpdateMember.ascx" tagname="UpdateMember" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="editProfile"  runat="server">

    <uc1:UpdateMember ID="UpdateMember1" runat="server" />

</asp:Content>