<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" MasterPageFile="~/ClubOrange.master" %>

<%@ Register src="UserControl/ContactUs.ascx" tagname="ContactUs" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="mainContent" runat="server" Id="contactForm" >
<div class="formWrapper">
    <div class="mail"><img src="images/contact.png" /></div><br />
    <div class="cForm">
        <uc1:ContactUs ID="ContactUs1" runat="server" />
    </div>
</div>

</asp:Content>