<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MakePayment.ascx.cs" Inherits="MakePaymentControl" %>
    <script type="text/javascript">
  function validateLengthCard(oSrc, args){
   args.IsValid = (((args.Value.length) <= 16) && ((args.Value.length) >= 16));
}
  function validateLengthCCV(oSrc, args){
   args.IsValid = (((args.Value.length) <= 4) && ((args.Value.length) >= 4));
}
  function validateLengthCheque(oSrc, args){
   args.IsValid = (((args.Value.length) <= 6) &&  ((args.Value.length) >= 6));
}
</script>

   <div>


        <asp:Label ID="lblPayFor" runat="server" Text="Payment For:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPaymentFor" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lblAmtPaid" runat="server" Text="Amount to be Paid:"></asp:Label>
&nbsp;
        <asp:Label ID="lblAmountFor" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lblPayMode" runat="server" Text="Payment Mode:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="dropdwMode" runat="server" 
            onselectedindexchanged="dropdwMode_SelectedIndexChanged" 
            AutoPostBack="True">
            <asp:ListItem Selected="True">Cash</asp:ListItem>
            <asp:ListItem>Cheque</asp:ListItem>
            <asp:ListItem>Credit/Debit Card</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        &nbsp;<br />
        <br />
<asp:Panel 
            ID="Panel2" runat="server" Width="482px" Visible="False">
            <asp:Label ID="lblCredit" runat="server" Text="Credit/Debit Card"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblCardNo" runat="server" Text="Card No:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCardNo" runat="server" MaxLength = 16 
                CausesValidation="True"></asp:TextBox>
                <asp:CustomValidator id="CustomValidator1" runat="server" 
  ControlToValidate = "txtCardNo"
  ErrorMessage = "You must enter Exact 16 characters!"
  ClientValidationFunction="validateLengthCard" Display="Dynamic" SetFocusOnError="True"></asp:CustomValidator>
            <br />
            <asp:Label ID="lblCcvNo" runat="server" Text="CCV No:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCcvNo" 
                runat="server" MaxLength="4" style="margin-left: 30px" Width="127px"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ClientValidationFunction="validateLengthCCV" ControlToValidate="txtCcvNo" 
                ErrorMessage="You must enter Exact 4 characters!" SetFocusOnError="True"></asp:CustomValidator>
            <br />
            <asp:Label ID="lblCardDate" runat="server" Text="Card Expiry Date:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtCardDate" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCardType" runat="server" Text="Card type:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropdwnCard" runat="server">
                <asp:ListItem>Visa Card</asp:ListItem>
                <asp:ListItem>Master Card</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        <asp:Panel ID="Panel1" 
            runat="server" Height="133px" Width="479px" Visible="False">
                &nbsp;<asp:Label ID="lblCheq" runat="server" Text="Cheque"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblCheqNo" runat="server" Text="Cheque No:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtCheqNo" runat="server" MaxLength="6"></asp:TextBox><asp:CustomValidator id="CustomValidator3" runat="server" 
  ControlToValidate = "txtCheqNo"
  ErrorMessage = "You must enter Exact 6 characters!"
  ClientValidationFunction="validateLengthCheque" >
</asp:CustomValidator>
                <br />
                <asp:Label ID="lblBranchName" runat="server" Text="Branch Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtBranchName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblBankName" runat="server" Text="Bank Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox>
            </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAmount" runat="server" Height="25px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="btnMakePay" runat="server" Text="Make Payment" onclick="btnmkpay_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    </div>