<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" MasterPageFile="~/ClubOrange.master" %>

<asp:Content ContentPlaceHolderID="mainContent" runat="server" ID="gallery">
    <script type="text/javascript" src="js/jquery.galleriffic.js"></script>
    <script type="text/javascript" src="js/jquery.history.js"></script>
    <script type="text/javascript" src="js/jquery.opacityrollover.js"></script>

    <style type="text/css">
        ul.thumb {
            float: left;
            list-style: none;
            margin: 0;
            padding: 10px;
            width: 600px;
        }

            ul.thumb li {
                margin: 0;
                padding: 5px;
                float: left;
                position: relative; /* Set the absolute positioning base coordinate */
                width: 110px;
                height: 110px;
            }

                ul.thumb li img {
                    width: 100px;
                    height: 100px; /* Set the small thumbnail size */
                    -ms-interpolation-mode: bicubic; /* IE Fix for Bicubic Scaling */
                    border: 1px solid #ddd;
                    padding: 5px;
                    background: #f0f0f0;
                    position: absolute;
                    left: 0;
                    top: 0;
                }

                    ul.thumb li img.hover {
                        background: url(thumb_bg.png) no-repeat center center; /* Image used as background on hover effect
	        border: none; /* Get rid of border on hover */
                    }

        #ulVideos {
            display: flex;
            flex-wrap: wrap;
            width: 100%;
        }

            #ulVideos li {
                margin: 1rem;
                width: 288px;
                height: 176px;
            }

        #tabs {
            display: flex;
        }

            #tabs li {
                margin: 1rem;
                cursor: pointer;
            }

                #tabs li:hover {
                    color: orange;
                }

        .underline {
            text-decoration: underline;
        }
    </style>

    <ul id="tabs">
        <li class="images underline" data-target="ulImages">Images</li>
        <li class="videos" data-target="ulVideos">Videos</li>
    </ul>

    <ul class="thumb" id="ulImages">
        <li><a href="#">
            <img src="images/galleryImg/i1.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i2.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i3.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i4.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i5.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i6.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i7.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i8.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i9.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i10.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i11.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i12.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i13.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i14.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i15.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i1.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i9.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i10.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i6.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i8.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i5.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i7.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i14.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i4.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i1.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i11.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i10.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i12.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i5.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i12.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i6.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i8.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i10.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i2.png" alt="" /></a></li>
        <li><a href="#">
            <img src="images/galleryImg/i13.png" alt="" /></a></li>
    </ul>

    <ul id="ulVideos" class="thumb">
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video1.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video2.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video1.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video2.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video1.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video2.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video1.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
        <li>
            <video width="320" height="240" controls>
                <source src="videos/video2.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </li>
    </ul>

    <script type="text/javascript">
        $("ul.thumb li").hover(function () {
            $(this).css({ 'z-index': '10' }); /*Add a higher z-index value so this image stays on top*/
            $(this).find('img').addClass("hover").stop() /* Add class of "hover", then stop animation queue buildup*/
                .animate({
                    marginTop: '-110px', /* The next 4 lines will vertically align this image */
                    marginLeft: '-110px',
                    top: '50%',
                    left: '50%',
                    width: '174px', /* Set new width */
                    height: '174px', /* Set new height */
                    padding: '20px'
                }, 200); /* this value of "200" is the speed of how fast/slow this hover animates */

        }, function () {
            $(this).css({ 'z-index': '0' }); /* Set z-index back to 0 */
            $(this).find('img').removeClass("hover").stop()  /* Remove the "hover" class , then stop animation queue buildup*/
                .animate({
                    marginTop: '0', /* Set alignment back to default */
                    marginLeft: '0',
                    top: '0',
                    left: '0',
                    width: '100px', /* Set width back to default */
                    height: '100px', /* Set height back to default */
                    padding: '5px'
                }, 400);
        });


        $("#tabs li").live("click", function () {

            $(".thumb").hide();
            $(".thumb").removeClass("underline");


            var target = $(this).attr("data-target");
            $("#" + target).show();
            $("#ulImages" + target).addClass("underline");



        });


    </script>
</asp:Content>
