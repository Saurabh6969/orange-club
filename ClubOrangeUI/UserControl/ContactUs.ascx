<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactUs.ascx.cs" Inherits="UserControl_ContactUs" %>
<asp:Label ID="lblName" runat="server" Text="Name" CssClass="contactlbl"></asp:Label>
<asp:TextBox ID="txtName" runat="server" CssClass="textCSS" Width="300px"></asp:TextBox><br /><br />
<asp:Label ID="lblEmail" runat="server" Text="E-mail" CssClass="contactlbl"></asp:Label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="textCSS" Width="300px"></asp:TextBox><br /><br />
<asp:Label ID="lblMessage" runat="server" Text="Message" CssClass="contactlbl"></asp:Label>
<asp:TextBox ID="txtMessage" runat="server" CssClass="textCSS" Height="77px" 
    TextMode="MultiLine" Width="300px"></asp:TextBox><br /><br />
<asp:Button ID="btnSend" runat="server" Text="Send" CssClass="contactbutton" 
    onclick="btnSend_Click" />
