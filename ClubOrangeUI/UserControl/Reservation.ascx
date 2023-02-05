<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reservation.ascx.cs" Inherits="UserControl_Reservation" %>
<div>

    <asp:Label ID="lblName" runat="server"></asp:Label>

    <asp:Label ID="Label1" runat="server" Text="Select  Facility to be Reserved :"
        CssClass="labelCSS"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="59px"
            Style="margin-left: 0px; margin-top: 6px" Width="286px">
            <br />
            <asp:Label ID="Label6" runat="server" CssClass="labelCSS" Text="Facility"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            
            <asp:DropDownList ID="ddlFaciList" runat="server" CssClass="ddlstCSS">
                <asp:ListItem>Table Tennis</asp:ListItem>
                <asp:ListItem>Badminton</asp:ListItem>
                <asp:ListItem>Billiards</asp:ListItem>
                <asp:ListItem>Health Club</asp:ListItem>
                <asp:ListItem>Squash</asp:ListItem>
                <asp:ListItem>Lawn Tennis</asp:ListItem>
                <asp:ListItem>Swimming</asp:ListItem>
                <asp:ListItem>Cricket</asp:ListItem>
                <asp:ListItem>Playground</asp:ListItem>
                <asp:ListItem>Card Room</asp:ListItem>
                <asp:ListItem>Banquet Hall</asp:ListItem>
                <asp:ListItem>Conference Hall</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    &nbsp;<asp:Panel ID="Panel2" runat="server" Height="117px" Style="margin-top: 0px"
        Width="467px" CssClass="labelCSS">
        <br />
        <asp:Label ID="Label5" runat="server" CssClass="labelCSS" Text="Date"></asp:Label>
        &nbsp;:<br />
        &nbsp;&nbsp; &nbsp;<asp:Label ID="Label8" runat="server" Text="Day"></asp:Label>
        &nbsp;
            <asp:DropDownList ID="ddlDay" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Month"></asp:Label>
        &nbsp; :&nbsp;
            <asp:DropDownList ID="ddlMonth" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        <asp:Label ID="Label4" runat="server" CssClass="labelCSS" Font-Bold="True"
            Text="Timing"></asp:Label>
        &nbsp;:<br />
        <br />
        <asp:Label ID="Label2" runat="server" CssClass="labelCSS" Text="Start time"></asp:Label>
        &nbsp;&nbsp;
            <asp:DropDownList ID="ddlStime" runat="server" CssClass="ddlstCSS">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="9 am"></asp:ListItem>
                <asp:ListItem Value="10 am"></asp:ListItem>
                <asp:ListItem Value="11 am"></asp:ListItem>
                <asp:ListItem Value="12 pm">12:00 PM</asp:ListItem>
                <asp:ListItem Value="1 pm"></asp:ListItem>
                <asp:ListItem Value="2 pm"></asp:ListItem>
                <asp:ListItem Value="3 pm"></asp:ListItem>
                <asp:ListItem Value="4 pm"></asp:ListItem>
                <asp:ListItem Value="5 pm"></asp:ListItem>
                <asp:ListItem Value="6 pm"></asp:ListItem>
                <asp:ListItem Value="7 pm"></asp:ListItem>
                <asp:ListItem Value="8 pm"></asp:ListItem>
                <asp:ListItem Value="9 pm"></asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="ddlStime" ErrorMessage="Enter valid start time">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="End time"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlEtime" runat="server" CssClass="ddlstCSS">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="10 am"></asp:ListItem>
            <asp:ListItem Value="11 am"></asp:ListItem>
            <asp:ListItem Value="12 "></asp:ListItem>
            <asp:ListItem Value="1 pm"></asp:ListItem>
            <asp:ListItem Value="2 pm"> </asp:ListItem>
            <asp:ListItem Value="3 pm"></asp:ListItem>
            <asp:ListItem Value="4 pm"></asp:ListItem>
            <asp:ListItem Value="5 pm"></asp:ListItem>
            <asp:ListItem Value="6 pm"></asp:ListItem>
            <asp:ListItem Value="7 pm"></asp:ListItem>
            <asp:ListItem Value="8 pm"></asp:ListItem>
            <asp:ListItem Value="9 pm"></asp:ListItem>
            <asp:ListItem Value="10 pm"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="ddlEtime" ErrorMessage="Enter Valid End Time">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        &nbsp;
            <br />
    </asp:Panel>
    &nbsp;&nbsp;
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnReserve" runat="server" Text="Reserve" CssClass="btnCSS"
            OnClick="btnReserve_Click" />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblErrorMess" runat="server" CssClass="labelCSS"></asp:Label>


</div>

