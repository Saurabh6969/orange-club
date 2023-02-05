<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewDefaulterStat.ascx.cs" Inherits="UserControl_ViewDefaulterStat" %>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="memberId" 
    DataSourceID="DefaulterDS">
    <Columns>
        <asp:BoundField DataField="memberId" HeaderText="Member Id" 
            InsertVisible="False" ReadOnly="True" SortExpression="memberId" />
        <asp:TemplateField HeaderText="Name" SortExpression="fName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fName") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fName") %>'></asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("lName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
        <asp:BoundField DataField="due" HeaderText="Due Payable" SortExpression="due" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="DefaulterDS" runat="server" 
    ConnectionString="<%$ ConnectionStrings:OrangeDbConnectionString %>" 
    SelectCommand="SELECT [memberId], [fName], [lName], [email], [phone], [due] FROM [tbl_member] WHERE ([due] &lt;&gt; @due)">
    <SelectParameters>
        <asp:Parameter DefaultValue="0" Name="due" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
