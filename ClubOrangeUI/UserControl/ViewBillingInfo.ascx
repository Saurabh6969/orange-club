<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewBillingInfo.ascx.cs" Inherits="ViewBillingInfo" %>

<table>
    <tr>
        <td>From:<br />
            <asp:Calendar ID="date1" runat="server" Height="200px" Width="200px"></asp:Calendar>
        </td>
        <td>To:<br />
            <asp:Calendar ID="date2" runat="server" Height="200px" Width="200px"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnViewBill" runat="server" OnClick="btnViewBill_Click"
    Text="View Bills" />
        </td>
    </tr>
 
</table>
   <asp:GridView ID="GridView1" runat="server">
</asp:GridView>



<asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:OrangeDbConnectionString5 %>"
    DeleteCommand="DELETE FROM [tbl_billingInfo] WHERE [billId] = @billId"
    InsertCommand="INSERT INTO [tbl_billingInfo] ([memberId], [paymentMode], [paymentFor], [Date], [amountPaid], [due], [paymentRemark]) VALUES (@memberId, @paymentMode, @paymentFor, @Date, @amountPaid, @due, @paymentRemark)"
    SelectCommand="SELECT [billId], [memberId], [paymentMode], [paymentFor], [Date], [amountPaid], [due], [paymentRemark] FROM [tbl_billingInfo] WHERE (([memberId] = @memberId) AND ([Date] &lt;= @Date) AND ([Date] &gt;= @Date2)) ORDER BY [Date]"
    UpdateCommand="UPDATE [tbl_billingInfo] SET [memberId] = @memberId, [paymentMode] = @paymentMode, [paymentFor] = @paymentFor, [Date] = @Date, [amountPaid] = @amountPaid, [due] = @due, [paymentRemark] = @paymentRemark WHERE [billId] = @billId">
    <SelectParameters>
        <asp:SessionParameter Name="memberId" SessionField="memberId" Type="Int32" />
        <asp:FormParameter FormField="date1" Name="Date" Type="DateTime" />
        <asp:FormParameter FormField="date2" Name="Date2" Type="DateTime" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="billId" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="memberId" Type="Int32" />
        <asp:Parameter Name="paymentMode" Type="String" />
        <asp:Parameter Name="paymentFor" Type="String" />
        <asp:Parameter Name="Date" Type="DateTime" />
        <asp:Parameter Name="amountPaid" Type="Int32" />
        <asp:Parameter Name="due" Type="Int32" />
        <asp:Parameter Name="paymentRemark" Type="String" />
        <asp:Parameter Name="billId" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="memberId" Type="Int32" />
        <asp:Parameter Name="paymentMode" Type="String" />
        <asp:Parameter Name="paymentFor" Type="String" />
        <asp:Parameter Name="Date" Type="DateTime" />
        <asp:Parameter Name="amountPaid" Type="Int32" />
        <asp:Parameter Name="due" Type="Int32" />
        <asp:Parameter Name="paymentRemark" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
