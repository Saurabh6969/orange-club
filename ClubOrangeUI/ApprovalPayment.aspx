<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApprovalPayment.aspx.cs" Inherits="ApprovalPayment"  MasterPageFile="~/ClubOrange.master"%>

<%@ Register src="UserControl/ApprocalPayment.ascx" tagname="ApprocalPayment" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="approvalPayment" runat="server">
       <uc1:ApprocalPayment ID="ApprocalPayment1" runat="server" />
</asp:Content>

