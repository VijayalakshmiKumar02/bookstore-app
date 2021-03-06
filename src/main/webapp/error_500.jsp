<%-- 
    Document   : error_404
    Created on : 10 Dec, 2012, 2:34:20 AM
    Author     : chirag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saikiran BookStores 404</title>        
        <!-- Default Stylesheets -->
        <link rel="shortcut icon" href="images/logo/ico.ico"/>

        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/styles.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <script type="text/javascript" src="js/jquery.js"></script>

        <script type="text/javascript" src="js/myScript.js"></script>

    </head>
    <body>
        
        <%
            if (session.getAttribute("src/main/java/user") == null) {// THen new user, show join now
%>
        <jsp:include page="includesPage/_joinNow.jsp"></jsp:include>
        <%        } else {
        %>
        <jsp:include page="includesPage/_logout.jsp"></jsp:include>
        <%            }
        %>
        
        <%@include file="includesPage/_search_navigationbar.jsp" %>

        <%@include file="includesPage/_facebookJoin.jsp" %>

        <div class="container_16">
            <div class="grid_14 push_1" id="whiteBox" style="padding: 10px;">
                <br/><h1 style="padding: 10px;">Error Status <span class="blue">500</span> - Internal Server Error!!
                </h1><hr/><br/>
                <p  class="grid_4" style="text-align: right; font-size: 72px;">500</p>
                <p class="grid_7">
                It seems that the page you've requested has been undergone through several errors 
                We request you to inform this to our administrator if you wish to like by contacting us
                please check the requested web page again or try again Later!! 
                <br/> We are extremely sorry about the inconvenience for not finding the requested webpage, Please Do co-operate!! We wish you best
                </p>
            </div>
        </div>
    </body>
</html>
