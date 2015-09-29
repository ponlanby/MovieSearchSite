<%-- 
    Document   : newjsp
    Created on : Aug 9, 2014, 2:43:45 PM
    Author     : xiaopangzi
--%>

<%@page import="flickr.Flickr"%>
<%@page import="java.util.List"%>
<%@page import="flickr.FlickrItem"%>
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
                    <form method="post" action="FlickrServlet">
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
                        <h3>Flickr Images</h3>
                    </div>


                </div>
                <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    <div class="clear"> </div>


    <%
        String movieName = request.getParameter("search");
        if (movieName == null) ; else {
            //get image from flickr
            List<FlickrItem> result = Flickr.getInstance().search(movieName, null);
            int ResultSize = result.size();
            String[] ResultURL = new String[ResultSize];
            for (int i = 0; i < ResultSize; i++) {
                ResultURL[i] = result.get(i).getURL();
            }
            StringBuilder bufImage = new StringBuilder();
            for (int i = 0; i < ResultURL.length; i++) {
            bufImage.append("<div style=' margin-left: 35%;margin-right: auto;'>");
            bufImage.append("<img src='" + ResultURL[i] + "'>");
            bufImage.append("</div><br>");
            }
            out.println(bufImage);
        }
    %>
    <!--End-content-->
    <!--End-wrap-->
</body>
</html>

