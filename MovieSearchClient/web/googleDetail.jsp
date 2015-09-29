<%-- 
    Document   : newjsp
    Created on : Aug 9, 2014, 2:43:45 PM
    Author     : xiaopangzi
--%>

<%@page import="net.sf.json.JSONArray"%>
<%@page import="google.GoogleCSE"%>
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
                    <form method="post" action="GoogleServlet">
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
                        <h3>Google Result</h3>
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


                <%
                    String movieName = request.getParameter("search");
                    //String movieName=request.getAttribute("name").toString();
                    if (movieName == null) ; 
                    else {
                        //get information from google
                        StringBuilder buf = new StringBuilder();
                        GoogleCSE googleCSE = new GoogleCSE();
                        JSONObject jsObj = new JSONObject(googleCSE.getSearchInfo(movieName));
                        JSONArray jsArr = new JSONArray(googleCSE.getItems(movieName).toString());
                        buf = new StringBuilder();
                        buf.append("<div style=' margin-left: 13%;margin-right: auto;'>");
                        buf.append("<br><h3>Search Time:" + jsObj.getString("searchTime") + "&#9;Total Results:" + jsObj.getString("formattedTotalResults") + "</h3>");
                        buf.append("<br>");
                        buf.append("<br><h3>1:</h3>");
                        buf.append("<br><a href='" + jsArr.getJSONObject(0).getString("link") + "'>" + jsArr.getJSONObject(0).getString("title") + "</a>");
                        buf.append("<br>" + jsArr.getJSONObject(0).getString("link"));
                        buf.append("<br>" + jsArr.getJSONObject(0).getString("snippet"));
                        buf.append("<br>");
                        buf.append("<br><h3>2:</h3>");
                        buf.append("<br><a href='" + jsArr.getJSONObject(1).getString("link") + "'>" + jsArr.getJSONObject(1).getString("title") + "</a>");
                        buf.append("<br>" + jsArr.getJSONObject(1).getString("link"));
                        buf.append("<br>" + jsArr.getJSONObject(1).getString("snippet"));
                        buf.append("<br>");
                        buf.append("<br><h3>3:</h3>");
                        buf.append("<br><a href='" + jsArr.getJSONObject(2).getString("link") + "'>" + jsArr.getJSONObject(2).getString("title") + "</a>");
                        buf.append("<br>" + jsArr.getJSONObject(2).getString("link"));
                        buf.append("<br>" + jsArr.getJSONObject(2).getString("snippet"));
                        buf.append("<br>");
                        buf.append("<br><h3>4:</h3>");
                        buf.append("<br><a href='" + jsArr.getJSONObject(3).getString("link") + "'>" + jsArr.getJSONObject(3).getString("title") + "</a>");
                        buf.append("<br>" + jsArr.getJSONObject(3).getString("link"));
                        buf.append("<br>" + jsArr.getJSONObject(3).getString("snippet"));
                        buf.append("<br>");
                        buf.append("<br><h3>5:</h3>");
                        buf.append("<br><a href='" + jsArr.getJSONObject(4).getString("link") + "'>" + jsArr.getJSONObject(4).getString("title") + "</a>");
                        buf.append("<br>" + jsArr.getJSONObject(4).getString("link"));
                        buf.append("<br>" + jsArr.getJSONObject(4).getString("snippet"));
                        buf.append("</div>");
                        out.println(buf.toString());
                    }
                %>
</body>
</html>

