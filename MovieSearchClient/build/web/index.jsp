<%-- 
    Document   : newjsp
    Created on : Aug 9, 2014, 2:43:45 PM
    Author     : xiaopangzi
--%>

<%@page import="net.sf.json.JSONObject"%>
<%@page import="client.MovieClient"%>
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
                    <form method="post" action="LocalServlet">
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
                        <h3>Movie List</h3>
                    </div>
                    
                    <div class="clear"> </div>
                </div>

                <div class="content-grids">
                    <div class="content-grid">
                        <!--<img src="./images/gridallbum1.png" title="The Shawshank Redemption" />-->
                        <img src="http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SX214_AL_.jpg" title="The Shawshank Redemption" />
                        <h3>The Shawshank Redemption</h3>
                        <a class="button" href="LocalServlet?search=The%20Shawshank%20Redemption">Introduction</a>
                    </div>
                    <div class="content-grid">
                        <!--<a href="local.html"><img src="./images/gridallbum2.png" title="The Godfather" /></a>-->
                        <img src="http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX214_AL_.jpg" title="The Godfather" />
                        <h3>The Godfather</h3>
                        <a class="button" href="LocalServlet?search=The%20Godfather">Introduction</a>
                    </div>
                    <div class="content-grid">
                        <img src="http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY317_CR0,0,214,317_AL_.jpg" title="The Dark Knight" />
                        <h3>The Dark Knight</h3>
                        <a class="button" href="LocalServlet?search=The%20Dark%20Knight">Introduction</a>
                    </div>
                    <div class="content-grid last-grid">
                        <img src="http://ia.media-imdb.com/images/M/MV5BMzMwMTM4MDU2N15BMl5BanBnXkFtZTgwMzQ0MjMxMDE@._V1_SX214_AL_.jpg" title="Schindler's List" />
                        <h3>Schindler's List</h3>
                        <a class="button" href="LocalServlet?search=Schindler's%20List">Introduction</a>
                    </div>
                    <div class="clear"> </div>
                </div>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    <div class="clear"> </div>
    <!--End-content-->
    <!--End-wrap-->
</body>
</html>

