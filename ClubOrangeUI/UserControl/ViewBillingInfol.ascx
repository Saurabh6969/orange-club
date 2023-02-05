<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewBillingInfol.ascx.cs" Inherits="ViewBillingInfol" %>
    <form id="form1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="billingLbl" Font-Bold="True" 
            Text="Bill ID:"></asp:Label>
        <asp:Label ID="lblBillId" runat="server" CssClass="lblDataCSS"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" CssClass="billingLbl" Font-Bold="True" 
            Text="Payment For:"></asp:Label>
        <asp:Label ID="lblBillFor" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Payment Mode:"></asp:Label>
        <asp:Label ID="lblMode" runat="server" CssClass="lblDataCSS"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" CssClass="labelCSS" Font-Bold="True" 
            Text="Payment Mode Details:"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" CssClass="labelCSS" Font-Bold="True" 
            Text="Amount Paid:"></asp:Label>
        <asp:Label ID="lblAmtPaid" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" CssClass="labelCSS" Font-Bold="True" 
            Text="Due:"></asp:Label>
        <asp:Label ID="lblDue" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
