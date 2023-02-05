<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewMemberStats.ascx.cs" Inherits="UserControl_ViewMemberStats" %>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="memberId" 
    DataSourceID="memberInfoFromQuery">
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
        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="memberInfoFromQuery" runat="server" 
    ConnectionString="<%$ ConnectionStrings:OrangeDbConnectionString %>" 
    SelectCommand="SELECT [memberId], [fName], [lName], [phone], [email] FROM [tbl_member] WHERE ([memberType] = @memberType)">
    <SelectParameters>
        <asp:QueryStringParameter Name="memberType" QueryStringField="type" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
