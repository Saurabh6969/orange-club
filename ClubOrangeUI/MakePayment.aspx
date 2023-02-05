<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MakePayment.aspx.cs" Inherits="_Default" MasterPageFile="~/ClubOrange.master"%>

<%@ Register src="UserControl/MakePayment.ascx" tagname="MakePayment" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="mainContent" runat="server" ID="makePayment" >


    <uc1:MakePayment ID="MakePayment1" runat="server" />
    
    
</asp:Content>