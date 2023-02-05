<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewMemberStats.aspx.cs" Inherits="ViewMemberStats" MasterPageFile="~/ClubOrange.master" %>
<%@ Register src="UserControl/ViewMemberStats.ascx" tagname="ViewMemberStats" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="userInfo" runat="server">
    
    <uc1:ViewMemberStats ID="ViewMemberStats1" runat="server" />
    
</asp:Content>