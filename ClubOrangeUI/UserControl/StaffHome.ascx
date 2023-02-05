<%@ Control Language="C#" AutoEventWireup="true" CodeFile="StaffHome.ascx.cs" Inherits="UserControl_StaffHome" %>

<style>
    .tbllabel {
        color: orange;
        font-weight: bold;
    }
    .headers{
        display:flex;
        align-items:center;
    }

</style>

<div class="dashBoard">

    <table>
        <tr>
            <td>
              <div class="headers">
                  <asp:Image ID="Image1" runat="server" ImageUrl="~/images/icon/id_card.png" />
               <strong> InfoPedia </strong>
              </div>
                
            </td>
            <td colspan="2">
                <a href="EditProfile.aspx" class="headers">
                    <img src="images/icon/edit_profile.png" alt="Edit Profile" />Edit Profile</a>
            </td>
        </tr>
        <tr>
            <td class="tbllabel">Total Registered Members:
            </td>
            <td>  <asp:Label ID="lblTotalMember" runat="server" CssClass="labelCSS"></asp:Label></td>
            <td>
              
            </td>
        </tr>
        <tr>
            <td class="tbllabel">Total Permanent Members:
            </td>
            <td>    <asp:Label ID="lblPer" runat="server" CssClass="labelCSS" Text=""> </asp:Label></td>
            <td>
                <a href="ViewMemberStats.aspx?type=p">View</a>
            </td>
        </tr>
        <tr>
            <td class="tbllabel">Total Temporary Members:
            </td>
            <td>   <asp:Label ID="lblTemp" runat="server" CssClass="labelCSS"></asp:Label></td>
            <td>
                <a href="ViewMemberStats.aspx?type=t">View</a>
            </td>
        </tr>
        <tr>
            <td class="tbllabel">Total AddOn Members:
            </td>
            <td>   <asp:Label ID="lblAddon" runat="server" CssClass="labelCSS"></asp:Label></td>
            <td>
                <a href="ViewMemberStats.aspx?type=a">View</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="ApprovalOfMembership.aspx">
                    <div class="dItem">
                        <img src="images/icon/tools.png" />
                        <span>Respond to Requests</span>
                    </div>
                </a>
            </td>
            <td colspan="2">
                <a href="ApprovalPayment.aspx">
                    <div class="dItem">
                        <img src="images/icon/80.png" />
                        <span>Approve Payment</span>
                    </div>
                </a>
            </td>
        </tr>
    </table>

    <div style="display:none">
        InfoPedia :
        <br />
        <asp:Label ID="Label1" runat="server" Text="Total Registered members  (Approved and On hold):"
            CssClass="labelCSS"></asp:Label>
      
        <br />
        <ul>
            <li>Total Count of&nbsp; </li>
            <li>Permanent 
            
                &nbsp;&nbsp;
                <a href="ViewMemberStats.aspx?type=p">View</a>
                &nbsp;&nbsp;&nbsp; 
                <asp:Label ID="lblRevPer" runat="server" Text="Total Revenue earned:"></asp:Label></li>
            <li>Temperory
<%--                <asp:Label ID="lblTemp" runat="server" Text=""></asp:Label>--%>
                &nbsp;
            <a href="ViewMemberStats.aspx?type=t">View</a>
                &nbsp;
                <asp:Label ID="lblRevTemp" runat="server" Text="Total Revenue earned:"></asp:Label></li>
            <li>Add On
<%--                <asp:Label ID="lblAddon" runat="server" Text=""></asp:Label>--%>
                &nbsp;&nbsp;
                <a href="ViewMemberStats.aspx?type=a">View</a>
                &nbsp;&nbsp;
                <asp:Label ID="lblRevAddon" runat="server" Text="Total Revenue earned:"></asp:Label></li>
            </li>
        </ul>

        <ul>
            <li>Defaulter Count
                <asp:Label ID="lblDefaulterCount" runat="server"></asp:Label>
                &nbsp;  <a href="ViewDefaulterStat.aspx">View</a>
                <asp:Label ID="lblLoss" runat="server" Text="Label"></asp:Label>
            </li>
        </ul>

    </div>
    <ul>
        <li class="dashBoardItem"></li>

    </ul>
</div>
