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
                        <h3>Introduction</h3>
                    </div>

                    <div class="clear"> </div>
                </div>
                    <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    <div class="clear"> </div>
                    <%
                        MovieClient movieClient = new MovieClient();
                        String movieName=request.getAttribute("name").toString();
                        if(movieName == null)
                            ;
                        else{
                            JSONObject jo = new JSONObject(movieClient.find_JSON(String.class, movieName));
                            String mname = jo.getString("name");
                            String mdirector = jo.getString("director");
                            String mwriters = jo.getString("writers");
                            String mstars = jo.getString("stars");
                            String mtype = jo.getString("type");
                            String mlanguage = jo.getString("language");
                            String mreleaseDate = jo.getString("releaseDate");
                            String mrunningTime = jo.getString("runningTime");
                            String mdescription = jo.getString("description");
                            movieClient.close();
                            
                            StringBuilder buf = new StringBuilder();
                            buf.append("<div style=' margin-left: 13%;margin-right: auto;'>");
                            buf.append("<br>Name:&#9;"+mname+"<br><br>");
                            buf.append("Director:&#9;"+mdirector+"<br><br>");
                            buf.append("Writters:&#9;"+mwriters+"<br><br>");
                            buf.append("Stars:&#9;"+mstars+"<br><br>");
                            buf.append("Type:&#9;"+mtype+"<br><br>");
                            buf.append("Language:&#9;"+mlanguage+"<br><br>");
                            buf.append("ReleaseDate:&#9;"+mreleaseDate+"<br><br>");
                            buf.append("RunningTime:&#9;"+mrunningTime+"<br><br>");
                            buf.append("Description:&#9;"+mdescription+"<br><br></div>");
                            out.print(buf.toString());
                        }
                        %>
    <!--End-content-->
    <!--End-wrap-->
</body>
</html>

