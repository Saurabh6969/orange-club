<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ApprocalPayment.ascx.cs" Inherits="UserControl_ApprocalPayment" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
    CellPadding="2" DataKeyNames="billId" DataSourceID="SqlDataSource1" 
    ForeColor="Black" GridLines="None" AllowPaging="True" PageSize="2" EmptyDataText="No Records found" >
    <FooterStyle BackColor="Tan" />
    <Columns>
        <asp:BoundField DataField="billId" HeaderText="Bill No" InsertVisible="False" 
            ReadOnly="True" SortExpression="billId" ApplyFormatInEditMode="True"/>
        <asp:BoundField DataField="memberId" HeaderText="Member Id" 
            SortExpression="memberId" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="paymentMode" HeaderText="Payment Mode" 
            SortExpression="paymentMode" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="paymentFor" HeaderText="Payment For" 
            SortExpression="paymentFor" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" 
            ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="amountPaid" HeaderText="Amount Paid" 
            SortExpression="amountPaid" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="paymentRemark" HeaderText="Remark" 
            SortExpression="paymentRemark" />
            <asp:TemplateField>
            <ItemTemplate>
            <asp:CheckBox ID="checkbox1" runat="server" />
            </ItemTemplate>
            </asp:TemplateField>
           
    </Columns>
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
        HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:OrangeDbConnectionString3 %>" 
    SelectCommand="SELECT [billId], [memberId], [paymentMode], [paymentFor], [Date], [amountPaid], [paymentRemark] FROM [tbl_billingInfo] WHERE ([paymentStatus] = @paymentStatus)">
    <SelectParameters>
        <asp:Parameter DefaultValue="0" Name="paymentStatus" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<p>
    <asp:Button ID="btnAccept" runat="server" onclick="btnAccept_Click" 
        Text="Accept" />
&nbsp;&nbsp;
    <asp:Button ID="btnReject" runat="server" Text="Reject"
        onclick="btnReject_Click" />
</p>

