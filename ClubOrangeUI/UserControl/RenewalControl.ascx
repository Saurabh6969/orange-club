<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RenewalControl.ascx.cs" Inherits="UserControl_RenewalControl" %>
<asp:Label ID="Label1" runat="server" Text="MemberID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<asp:Label ID="lblId" runat="server" Text="[lblId]"></asp:Label>
<p>
    <asp:Label ID="lblmembername" runat="server" Text="MemberName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblName" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblLastName" runat="server" Text="[lblLastName]"></asp:Label>
</p>
<asp:Label ID="Label4" runat="server" Text="Date Of Expiry"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lbldoe" runat="server"></asp:Label>
<br />
<br />
<asp:Label ID="Label5" runat="server" Text="Due"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lbldue" runat="server"></asp:Label>
<br />
<br />
<asp:Button ID="btnRenewal" runat="server" Font-Bold="True" Font-Italic="True" 
    Font-Names="Times New Roman" Text="Renew" onclick="btnRenewal_Click" />
<br />
<br />
<asp:Label ID="lblInfo" runat="server"></asp:Label>

