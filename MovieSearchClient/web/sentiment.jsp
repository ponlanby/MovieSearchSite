<%-- 
    Document   : newjsp
    Created on : Aug 9, 2014, 2:43:45 PM
    Author     : xiaopangzi
--%>

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
                    <form method="post" action="SentimentServlet">
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
                        <h3>Sentiment Analysis Result</h3>
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

