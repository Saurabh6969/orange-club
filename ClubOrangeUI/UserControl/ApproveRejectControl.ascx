<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ApproveRejectControl.ascx.cs" Inherits="ApproveRejectControl" %>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" 
    DataSourceID="SqlDataSource1" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" 
    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" 
    BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
    Width="756px" ForeColor="Black" GridLines="None" EmptyDataText="No Records found" >
    <FooterStyle BackColor="Tan" />
    <Columns>
       
        <asp:BoundField DataField="memberId" HeaderText="Member ID" 
            InsertVisible="False" ReadOnly="True" SortExpression="memberId" 
            ApplyFormatInEditMode="True" />
        <asp:TemplateField HeaderText="Name" SortExpression="fName">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fName") %>'></asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("lName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fName") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="address" HeaderText="Address" 
            SortExpression="address" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" 
            ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" 
            ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="dob" HeaderText="Date Of Birth" 
            SortExpression="dob" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="doj" HeaderText="Date Of Joining" 
            SortExpression="doj" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="accountStatus" HeaderText="Account Status " 
            SortExpression="accountStatus" />
        <asp:BoundField DataField="statusRemark" HeaderText="Status Remark" 
            SortExpression="statusRemark" ApplyFormatInEditMode="True" />
        <asp:BoundField DataField="deptId" HeaderText="Dept Id" 
            SortExpression="deptId" ApplyFormatInEditMode="True" />
             <asp:CommandField ShowEditButton="True"/>
         <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="checkbox1" runat="server" />
                <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("memberId") %>' />
               
            </ItemTemplate>
         </asp:TemplateField>
    </Columns>
    <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" 
        BackColor="PaleGoldenrod" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
</asp:GridView>

 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:OrangeDbConnectionString2 %>" 
    DeleteCommand="DELETE FROM [tbl_member] WHERE [memberId] = @memberId" 
    InsertCommand="INSERT INTO [tbl_member] ([fName], [lName], [address], [email], [phone], [dob], [accountStatus], [statusRemark], [deptId], [doj]) VALUES (@fName, @lName, @address, @email, @phone, @dob, @accountStatus, @statusRemark, @deptId, @doj)" 
    SelectCommand="SELECT [memberId], [fName], [lName], [address], [email], [phone], [dob], [accountStatus], [statusRemark], [deptId], [doj] FROM [tbl_member] WHERE ([accountStatus] = @accountStatus) ORDER BY [doj]" 
    UpdateCommand="UPDATE [tbl_member] SET [fName] = @fName, [lName] = @lName, [address] = @address, [email] = @email, [phone] = @phone, [dob] = @dob, [accountStatus] = @accountStatus, [statusRemark] = @statusRemark, [deptId] = @deptId, [doj] = @doj WHERE [memberId] = @memberId">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="accountStatus" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="memberId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="fName" Type="String" />
            <asp:Parameter Name="lName" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="Int64" />
            <asp:Parameter Name="dob" Type="DateTime" />
            <asp:Parameter Name="accountStatus" Type="Int32" />
            <asp:Parameter Name="statusRemark" Type="String" />
            <asp:Parameter Name="deptId" Type="Int32" />
            <asp:Parameter Name="doj" Type="DateTime" />
            <asp:Parameter Name="memberId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="fName" Type="String" />
            <asp:Parameter Name="lName" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="Int64" />
            <asp:Parameter Name="dob" Type="DateTime" />
            <asp:Parameter Name="accountStatus" Type="Int32" />
            <asp:Parameter Name="statusRemark" Type="String" />
            <asp:Parameter Name="deptId" Type="Int32" />
            <asp:Parameter Name="doj" Type="DateTime" />
        </InsertParameters>
</asp:SqlDataSource>
<p>&nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Accept" 
        />
&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reject" />
</p>












