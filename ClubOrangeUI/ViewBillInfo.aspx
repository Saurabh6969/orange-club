<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewBillInfo.aspx.cs" Inherits="ViewBillInfo"  MasterPageFile="~/ClubOrange.master"%>



<%@ Register src="UserControl/ViewBillingInfo.ascx" tagname="ViewBillingInfo" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="billinginfo" runat="server">
        <uc1:ViewBillingInfo ID="ViewBillingInfo1" runat="server" />
</asp:Content>    

