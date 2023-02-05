<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" MasterPageFile="~/ClubOrange.master" %>
<%@ Register src="UserControl/Logout.ascx" tagname="Logout" tagprefix="uc1" %>
<asp:Content ContentPlaceHolderID="mainContent" ID="about" runat="server">
<div>
<p><img src="images/aboutus.jpg" style="display:block;float:left;margin:5px 15px 5px 5px;padding:8px; border:1px solid #e9e9e9; background:#ffffff;"/>
    &nbsp; &nbsp; &nbsp; The club has a swimming pool of international size and standards, a fully 
    equipped health club with equipments from M/s. Precorr, USA, six acres of open 
    ground for promoting outdoor sports like cricket, lawn tennis etc. and has 
    facilities for indoor games like badminton, squash, billiards, snooker, table 
    tennis, chess, carroms etc. To soothe the taste buds of the members, the club 
    also has a delectable multi cuisine restaurant.
</p>
<p>
    &nbsp; &nbsp; &nbsp; Several talks have been organized for the benefit of its members including 
    talks on budget, cooperative sector problems, personality development etc. Over 
    these years the idea has been to promote a healthy mind and a sound body which 
    is referred to as &quot;Sharir Madhyam Khalu Dharma Sadhanam&quot;, which is the 
    inspiration for organizing the yoga classes at the club everyday in the morning 
    and is helping in improving the well being and overall development of the 
    participants. The increase in the number of members certainly testify that we 
    are benefited under the right guidance. For promoting spiritual well being of 
    the members, various social organizations have been conducting their programmes 
    in the club and the club has played host to various personalities from different 
    areas and walks of life and famous sport personalities as well. The club has 
    been promoting annual sports meet of various schools and colleges who have 
    organized their annual function also at the club premises. The facilities 
    created for Billiards, Snooker, Squash Lawn Tennis and Table Tennis has been 
    appreciated by the various players of international fame who have visited the 
    club.
</p>
<p>
<img src="images/rooms.jpg"style="display:block;float:left;margin:5px 15px 5px 5px;padding:8px; border:1px solid #e9e9e9; background:#ffffff;" />
    &nbsp; &nbsp; &nbsp; Club Orange has also facilitated air conditioned Guest Rooms, Banquet 
    halls for conference, Multi Cuisine Restaurant and Bar has added charm to the 
    crowning glory of the club. Proud to say that club Orange is the first Sports 
    Club in India to get ISO 9001: 2000 certification. All this would not have been 
    possible without the cooperation and support of the &quot;members&quot; of elected 
    committee members amongst have contributed their best to make it truly &quot;WORLD 
    CLASS&quot;. With the rapidly changing life style and globalization, club Orange has 
    tried and has been successful in providing facilities for promotion of sports 
    and health and is consistent with the international standards of any sports club 
    in India or abroad.
</p>
</div>
</asp:Content>

<asp:Content ID="logout" ContentPlaceHolderID="logout" runat="server" >
    <uc1:Logout ID="Logout1" runat="server" />
</asp:Content>