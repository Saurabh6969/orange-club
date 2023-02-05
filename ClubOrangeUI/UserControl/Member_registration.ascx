<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Member_registration.ascx.cs" Inherits="Member_registration" %>
<style type="text/css">
    .textCSS {
        margin-left: 0px;
        margin-bottom: 0px;
    }
</style>
<div>

    <div style="display: block; float: left; margin-top: -20px; margin-right: 20px;">
        <img src="images/icon/copy_paste.png" alt="Apply for Membership" style="float: left" />
        <h2 style="display: block; float: left; padding: 1rem;">Apply for Membership
        </h2>
    </div>
    <br />
    <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="labelCSS" Text="First Name"></asp:Label>
    <asp:TextBox ID="txtFName" runat="server" CssClass="textCSS" Width="235px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="txtFName" ErrorMessage="Enter valid First name">*</asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
        ErrorMessage="Please input alphabetic character only"
        ValidationExpression="^[a-zA-Z](.{1,25})$" ControlToValidate="txtFName"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="labelCSS" Text="Last Name"></asp:Label>
    <asp:TextBox ID="txtLName" runat="server" CssClass="textCSS" Width="238px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ControlToValidate="txtLName" ErrorMessage="Enter valid Last name">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="labelCSS" Text="Address"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" CssClass="textCSS"
        TextMode="MultiLine" Width="236px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
        ControlToValidate="txtAddress" ErrorMessage="Enter address">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" CssClass="labelCSS" Text="E-mail"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="textCSS" Width="233px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ControlToValidate="txtEmail" ErrorMessage="Enter valid Email-id"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" CssClass="labelCSS" Text="Contact Number"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" CssClass="textCSS" Width="235px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
        ControlToValidate="txtPhone" ErrorMessage="Enter your Phone Number">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
        runat="server" ErrorMessage="Please input 10 digit number"
        ValidationExpression="^[0-9](.{9,9})$" ControlToValidate="txtPhone"></asp:RegularExpressionValidator>

    <br />
    <br />
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
    <br />
    <br />
    <asp:Label ID="Label13" runat="server" CssClass="labelCSS" Text="Gender"></asp:Label>
    <asp:RadioButton ID="rdoMale" runat="server" GroupName="gender" Text="Male"
        OnCheckedChanged="rdoMale_CheckedChanged" />
    <asp:RadioButton ID="rdoFemale" runat="server" GroupName="gender"
        Text="Female" />
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" CssClass="labelCSS" Text="Marital Status"></asp:Label>
    <asp:RadioButton ID="rdoSingle" runat="server" CssClass="radioCSS"
        Text="Single" GroupName="marriedStatus" />
    <asp:RadioButton ID="rdoMarried" runat="server" CssClass="radioCSS"
        Text="Married" GroupName="marriedStatus" ValidationGroup="marriedStatus" />

    <br />
    <br />
    <asp:Label ID="Label15" runat="server" CssClass="labelCSS"
        Text="Security Question :"></asp:Label>

    <asp:TextBox ID="txtQuestion" runat="server" Width="225px" CssClass="textCSS"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label16" runat="server" CssClass="labelCSS"
        Text="Answer :"></asp:Label>
    <asp:TextBox ID="txtAnwser" runat="server" Width="225px" CssClass="textCSS"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label17" runat="server" CssClass="labelCSS"
        Text="Are you a Sports person ?"></asp:Label>
    <asp:RadioButton ID="rdoNational" runat="server" Text="National"
        AutoPostBack="True" GroupName="sports"
        OnCheckedChanged="rdoNational_CheckedChanged" />
    &nbsp; 
        <asp:RadioButton ID="rdoInternational" runat="server" GroupName="sports"
            Text="International" AutoPostBack="True"
            OnCheckedChanged="rdoInternational_CheckedChanged" />&nbsp; 
        <asp:RadioButton ID="rdoNope" runat="server" AutoPostBack="True"
            GroupName="sports" OnCheckedChanged="rdoNope_CheckedChanged" Text="No" />
    <br />
    <br />
    <asp:Label ID="lblPermanent" runat="server"
        Text="You will be registered as Permanent Member" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblMembership" runat="server" CssClass="labelCSS"
        Text="Membership Type :"></asp:Label>
    &nbsp;<asp:DropDownList ID="ddMemberType" runat="server" AutoPostBack="True"
        OnSelectedIndexChanged="ddMemberType_SelectedIndexChanged"
        CssClass="textCSS">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem Value="t">Temporary</asp:ListItem>
        <asp:ListItem Value="a">AddOn</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label14" runat="server" CssClass="labelCSS"
        Text="Choose A Department"></asp:Label>
    <asp:DropDownList ID="ddDepartment" runat="server"
        OnSelectedIndexChanged="ddDepartment_SelectedIndexChanged"
        CssClass="textCSS">
        <asp:ListItem Value="1">Indoor</asp:ListItem>
        <asp:ListItem Value="2">OutDoor</asp:ListItem>
        <asp:ListItem Value="3">Liesure</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    &nbsp;<asp:Label ID="lblrefId" runat="server" CssClass="labelCSS" Text="Reference-Id"
        Visible="False"></asp:Label>

    <asp:TextBox ID="txtRefId" runat="server" CssClass="textCSS" Visible="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblRelation" runat="server" Text="Relation" CssClass="labelCSS"></asp:Label>
    <asp:DropDownList ID="ddRelation" runat="server" CssClass="textCSS">
        <asp:ListItem Value="Spouse"></asp:ListItem>
        <asp:ListItem Value="Child"></asp:ListItem>
    </asp:DropDownList>

    <br />
    <br />
    <asp:Label ID="Label10" runat="server" CssClass="labelCSS" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server" CssClass="textCSS" Width="229px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
        ControlToValidate="txtUsername" ErrorMessage="Desired Username">*</asp:RequiredFieldValidator>
    <br />
    <div id="status" style="display: block; float: left; clear: left;"></div>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" CssClass="labelCSS" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="textCSS"
        TextMode="Password" Width="227px"></asp:TextBox>
    &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
        ControlToValidate="txtPassword" ErrorMessage="Enter Password">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Display="Dynamic"
        ErrorMessage="Password must contain one of @#$%^&*/." ControlToValidate="txtPassword" ValidationExpression=".*[@#$%^&*/].*"></asp:RegularExpressionValidator>
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" Display="Dynamic"
        ErrorMessage="Password must be 4-12 nonblank characters." ValidationExpression="[^\s]{4,12}" ControlToValidate="txtPassword"></asp:RegularExpressionValidator>

    <br />
    <br />
    <asp:Label ID="Label12" runat="server" CssClass="labelCSS"
        Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="textCSS"
        TextMode="Password" Width="227px"></asp:TextBox>

    <asp:CompareValidator ID="CompareValidator1" runat="server"
        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass"
        ErrorMessage="Password Do not match">*</asp:CompareValidator>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" CssClass="btnCSS" Text="Submit"
        OnClick="btnSubmit_Click" />
    <asp:Button ID="btnCancel" runat="server" CssClass="btnCSS" Text="Cancel" />
    <br />
    <br />
    <br />

</div>

