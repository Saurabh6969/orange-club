<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upgradation.aspx.cs" Inherits="Upgradation" MasterPageFile="~/ClubOrange.master" %>

<%@ Register src="UserControl/Upgradation.ascx" tagname="Upgradation" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="upgrade" runat="server">
    <div>
        <uc1:Upgradation ID="Upgradation1" runat="server" />
    </div>
</asp:Content>


