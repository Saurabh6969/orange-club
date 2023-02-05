<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Renew.ascx.cs" Inherits="UserControl_RenewalControl" %>
<asp:Label ID="Label1" runat="server" Text="MemberID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<p>
    <asp:Label ID="lblmembername" runat="server" Text="MemberName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblName" runat="server"></asp:Label>
</p>
<asp:Label ID="Label2" runat="server" Text="MemberShipType"></asp:Label>
&nbsp;
<asp:Label ID="lblType" runat="server"></asp:Label>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Date Of Joining"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lbldoj" runat="server"></asp:Label>
<br />
<br />
<asp:Label ID="Label4" runat="server" Text="Date Of Expiry"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lbldoe" runat="server"></asp:Label>
<br />
<br />
<br />
<asp:Button ID="btnRenewal" runat="server" Font-Bold="True" Font-Italic="True" 
    Font-Names="Times New Roman" Text="Renew" onclick="btnRenewal_Click" />
