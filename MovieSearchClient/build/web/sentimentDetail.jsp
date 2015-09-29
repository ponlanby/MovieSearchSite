<%-- 
    Document   : newjsp
    Created on : Aug 9, 2014, 2:43:45 PM
    Author     : xiaopangzi
--%>

<%@page import="java.util.List"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="sentiment.SentimentAnalysis"%>
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
    <script src="Chart.js"></script>
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
    <div style=' margin-left: 13%;margin-right: auto;'>
    <div id="canvas-holder">
			<canvas id="chart-area" width="300" height="300"/>
    </div>
        <div>
    <%
        String movieName = request.getParameter("search");
        String Mood = null;
        String Prob = null;
        SentimentAnalysis sentiment = new SentimentAnalysis();
        JSONObject jo = sentiment.getJSON(movieName);
        if (movieName == null)
            ;
        else
        {
            
            Mood = jo.getString("mood");
            Prob = jo.getString("prob");
        }
        StringBuilder buf = new StringBuilder();
        buf.append("<h1>The Sentiment Analysis Result is:</h1>");
        buf.append("Mood:" + Mood);
        buf.append("<br>Positive" + Prob);
        buf.append("<br>Negative" + (1-Double.parseDouble(Prob)));
        out.println(buf.toString());
    %>
    </div>
	<script>

		var pieData = [
				{
					value: <%= Double.parseDouble(Prob)%>,
					color:"#F7464A",
					highlight: "#FF5A5E",
					label: "<%=Mood%>"
				},
				{
					value: (1 - <%= Double.parseDouble(Prob)%>),
					color: "#46BFBD",
					highlight: "#5AD3D1",
					label: "<%= (Mood.equals("positive"))?"negative":"positive"%>"
				}
			];

			window.onload = function(){
				var ctx = document.getElementById("chart-area").getContext("2d");
				window.myPie = new Chart(ctx).Pie(pieData);
			};
	</script>
        </div>
</body>
</html>

