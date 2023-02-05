<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RenewMembership.aspx.cs" Inherits="Renewal" MasterPageFile="~/ClubOrange.master"%>
<%@ Register src="UserControl/Renew.ascx" tagname="Renew" tagprefix="uc1" %>
<%@ Register src="UserControl/RenewalControl.ascx" tagname="RenewalControl" tagprefix="uc2" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="renewal"  runat="server">
 
    <uc2:RenewalControl ID="RenewalControl1" runat="server" />
 
</asp:Content>

