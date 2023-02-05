<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ThankYou" MasterPageFile="~/ClubOrange.master" %>
<%@ Register src="UserControl/ThankYou.ascx" tagname="ThankYou" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="thankyou" runat="server">
    
    <uc1:ThankYou ID="ThankYou1" runat="server" />
    
</asp:Content>