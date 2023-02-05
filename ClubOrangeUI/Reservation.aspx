<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Reservation.aspx.cs" Inherits="_Default" MasterPageFile="~/ClubOrange.master"%>

<%@ Register src="UserControl/Reservation.ascx" tagname="Reservation" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" runat="server" ID="reservation">
    <uc1:Reservation ID="Reservation1" runat="server" />
</asp:Content>

