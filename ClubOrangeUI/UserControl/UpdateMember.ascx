<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UpdateMember.ascx.cs" Inherits="UserControl_UpdateMember" %>
   <div class="updateForm">
   <asp:Label ID="Label2" runat="server" Text="Update Details" 
            Font-Bold="True"></asp:Label>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="labelCSS" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFName" runat="server" CssClass="textCSS" Width="235px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtFName" ErrorMessage="Enter valid First name">*</asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="Label3" runat="server" CssClass="labelCSS" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLName" runat="server" CssClass="textCSS" Width="238px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtLName" ErrorMessage="Enter valid Last name">*</asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="Label4" runat="server" CssClass="labelCSS" Text="Address"></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server" CssClass="textCSS" 
            TextMode="MultiLine" Width="236px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtAddress" ErrorMessage="Enter address">*</asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="Label5" runat="server" CssClass="labelCSS" Text="E-mail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textCSS" Width="233px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtEmail" ErrorMessage="Enter valid Email-id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        <br /><br />

        <asp:Label ID="Label6" runat="server" CssClass="labelCSS" Text="Contact Number"></asp:Label>
        <asp:TextBox ID="txtPhone" runat="server" CssClass="textCSS" Width="235px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtPhone" ErrorMessage="Enter your Phone Number">*</asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="Label7" runat="server" CssClass="labelCSS" Text="Date Of Birth"></asp:Label>
        <asp:DropDownList ID="ddlstDay" runat="server" CssClass="textCSS">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="ddlstDay" ErrorMessage="Enter Birth Day">*</asp:RequiredFieldValidator>

        <asp:DropDownList ID="ddlstMonth" runat="server" CssClass="textCSS">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="Jan"></asp:ListItem>
            <asp:ListItem Value="Feb"></asp:ListItem>
            <asp:ListItem Value="Mar"></asp:ListItem>
            <asp:ListItem Value="Apr"></asp:ListItem>
            <asp:ListItem Value="May"></asp:ListItem>
            <asp:ListItem Value="Jun"></asp:ListItem>
            <asp:ListItem Value="Jul"></asp:ListItem>
            <asp:ListItem Value="Aug"></asp:ListItem>
            <asp:ListItem Value="Sept"></asp:ListItem>
            <asp:ListItem Value="Oct"></asp:ListItem>
            <asp:ListItem Value="Nov"></asp:ListItem>
            <asp:ListItem Value="Dec"></asp:ListItem>
        </asp:DropDownList>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="ddlstMonth" ErrorMessage="Enter Birth Month">*</asp:RequiredFieldValidator>
        <asp:DropDownList ID="ddlstYear" runat="server" CssClass="textCSS">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="ddlstYear" ErrorMessage="Enter Birth Year">*</asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="Label13" runat="server" CssClass="labelCSS" Text="Gender"></asp:Label>
        <asp:RadioButton ID="rdoMale" runat="server" GroupName="gender" Text="Male" 
            oncheckedchanged="rdoMale_CheckedChanged" />
        <asp:RadioButton ID="rdoFemale" runat="server" GroupName="gender" 
            Text="Female" />
        <br /><br />

        <asp:Label ID="Label8" runat="server" CssClass="labelCSS" Text="Marital Status"></asp:Label>
        <asp:RadioButton ID="rdoSingle" runat="server" CssClass="radioCSS" 
            Text="Single" GroupName="marriedStatus" />
        <asp:RadioButton ID="rdoMarried" runat="server" CssClass="radioCSS" 
            Text="Married" GroupName="marriedStatus" ValidationGroup="marriedStatus" />
        <br /><br />

        <asp:ImageButton ID="btnSave" runat="server" ImageUrl="~/images/icon/save.png" 
           onclick="btnSave_Click" />
        <asp:Image ID="Image1" runat="server" EnableViewState="False" 
           ImageUrl="~/images/icon/118.png" />
        <br />
    </div>