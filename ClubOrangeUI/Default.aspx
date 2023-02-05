<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/ClubOrange.master" %>
<%@ Register src="~/UserControl/LoginUC.ascx" tagname="LoginUC" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server" >
    <div id="content">
        <div id="maincontent">
            <div class="articleWrapperFooter">
                <div class="articleWrapperHeader">
                <div class="welcome"><img src="images/welcome.png" /></div>
                <img src="images/orange.png" class="leftalign" />
                <p><span><img src="images/spacer.png" class="tab" /></span>Experience the finest sports complex in the world. We are committed to providing 
                    you with unprecedented services and amenities to help you achieve all of your 
                    health and fitness goals. We feature innovative mind body programs, cutting edge 
                    facilities and a award winning infrastructure to inspire you, and surpass your 
                    expectation.</p>
                    </div>
            </div>
        
            <div class="testimonialWrapper">
                <div class="testimonialHead"><img src="images/testimonial_head.png" /></div>
                <div class="testimonial">
                    <p>I need to fill this stuff with some dummy text.. mustfill it down till the box ... </p><span>--charan</span>
                    <span  class="auth"><img src="images/charan.png" /></span>
                </div>
                <div class="testimonial" style="float:right;">
                    <p>I need to fill this stuff with some dummy text.. mustfill it down till the box ... </p><span>--aniket</span>
                    <span class="auth"><img src="images/aniket.png" /></span>
                </div>
                <div class="moreLink"><a href="Testimonials.aspx">Check out a few more happy members >></a></div>
            </div>
            
            
            <div class="socialMedia">
                <div class="socialHeader"><img src="images/icon/youtubuPicasa.png" /></div>
                <div class="youtube">
                    <iframe class="videoYoutube" src="https://www.youtube.com/embed/6qyCeOzQNhQ" frameborder="0" allowfullscreen></iframe>
                </div>
                
              <%--  <div class="picasa">
                    <embed type="application/x-shockwave-flash" src="https://picasaweb.google.com/s/c/bin/slideshow.swf" width="400" height="267" flashvars="host=picasaweb.google.com&hl=en_US&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2Fcharanraj1191g%2Falbumid%2F5656272201018623985%3Fkind%3Dphoto%26alt%3Drss" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
                </div>--%>
            </div>
            
            <div class="happymembers">
                <div class="shareHead"><img src="images/happyMemHead.png" /></div>
                <div class="mem">
                    <img src="images/happyMem.png" width=350px height=330px />
                </div>
            </div>
            
            
            <div class="share">
                <div class="shareHead"><img src="images/share.png" /></div>
                <div class="facebook">
                    <a href="http://www.faebook.com/"><img src="images/icon/facebook.png" /></a>
                </div>
                <div class="twitter">
                    <a href="http://www.twitter.com/"><img src="images/icon/twitter.png" /></a>
                </div>
                <div class="myspace">
                    <a href="http://www.myspace.com/"><img src="images/icon/myspace.png" /></a>
                </div>
            </div>
            
            
        </div>
        <div class="clear"></div>
    </div>
</asp:Content>

<%--<asp:Content ContentPlaceHolderID="loginHolder" runat="server">
    
    <uc1:LoginUC ID="LoginUC1" runat="server" />
    
</asp:Content>--%>