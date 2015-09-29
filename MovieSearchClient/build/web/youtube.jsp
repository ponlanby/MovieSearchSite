<%-- 
    Document   : newjsp
    Created on : Aug 9, 2014, 2:43:45 PM
    Author     : xiaopangzi
--%>

<%@page import="youtube.Youtube"%>
<%@page import="java.util.List"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<head>
    <title>Movie Search Engine</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css"  media="all" />
    <style>
            .titlec {
                font-size: small;
            }
            ul.videos li {
                float: left;
                width: 10em;
                margin-bottom: 1em;
            }
            ul.videos
            {
                margin-bottom: 1em;
                padding-left : 0em;
                margin-left: 0em;
                list-style: none;
            }
        </style>
        <script type="text/javascript" src="http://swfobject.googlecode.com/svn/trunk/swfobject/swfobject.js"></script>
        <script type="text/javascript">
            function loadVideo(playerUrl, autoplay) {
                swfobject.embedSWF(
                        playerUrl + '&rel=1&border=0&fs=1&autoplay=' +
                        (autoplay ? 1 : 0), 'player', '640', '480', '9.0.0', false,
                        false, {allowfullscreen: 'true'});
            }

            function showMyVideos2(data) {
                var feed = data.feed;
                var entries = feed.entry || [];
                var html = ['<ul class="videos">'];
                for (var i = 0; i < entries.length; i++) {
                    var entry = entries[i];
                    var title = entry.title.$t.substr(0, 20);
                    var thumbnailUrl = entries[i].media$group.media$thumbnail[0].url;
                    var playerUrl = entries[i].media$group.media$content[0].url;
                    html.push('<li onclick="loadVideo(\'', playerUrl, '\', true)">',
                            '<span class="titlec">', title, '...</span><br /><img src="',
                            thumbnailUrl, '" width="130" height="97"/>', '</span></li>');
                }
                html.push('</ul><br style="clear: left;"/>');
                document.getElementById('videos2').innerHTML = html.join('');
                if (entries.length > 0) {
                    loadVideo(entries[0].media$group.media$content[0].url, false);
                }
            }
        </script>
</head>
<body>
    <!--start-wrap-->
    <!--start-header-->
    <div class="header">
        <div class="wrap">
            <!--start-logo-->
            <div class="logo">
                <a href="index.jsp">Movie</a>
            </div>
            <!--End-logo-->
            <!--start-top-menu-search-->
            <div class="top-menu">
                <div class="top-nav">
                    <ul>
                        <li><a href="flickr.jsp">Flickr</a></li>
                        <li><a href="youtube.jsp">Youtube</a></li>
                        <li><a href="google.jsp">Google</a></li>
                        <li><a href="sentiment.jsp">Sentiment</a></li>
                    </ul>
                </div>
                <div class="search">
                    <form method="post" action="YoutubeServlet">
                        <input type="text" class="textbox" name="search">
                        <input type="submit" value=" " />            
                    </form>
                </div>
                <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
            <!--End-top-menu-search-->
        </div>
        <!--End-header-->
    </div>
    <div class="clear"> </div>
    <!--start-content-->
    <div class="main-content">
        <div class="wrap">

            <div class="right-content">
                <!--heading-->
                <div class="right-content-heading">
                    <div class="right-content-heading-left">
                        <h3>Youtube Videos</h3>
                    </div>

                    <div class="clear"> </div>
                </div>
            </div>
        </div>
        
        <div id="playerContainer" style=" margin-left: auto;margin-right: auto;height: 480px; ">
            <center>
            <object id="player"></object>
            </center>
        </div>
        <center>
        <div id="videos2" style=" margin-left: auto;margin-right: auto;"></div>
        </center>
        <%
            StringBuilder buf = new StringBuilder();
            Youtube youtube = new Youtube();
            buf.append("<script type='text/javascript'");
            buf.append("src='" + youtube.getURL("movie") + "'> </script>");
            out.println(buf.toString());
        %>
        
        <div class="clear"> </div>
        
    </div>
    <div class="clear"> </div>
    <!--End-content-->
    <!--End-wrap-->
</body>
</html>

