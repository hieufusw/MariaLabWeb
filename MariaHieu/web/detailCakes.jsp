<%-- 
    Document   : detailCakes
    Created on : May 3, 2019, 2:23:00 AM
    Author     : q
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/all.css"/>
        <link rel="stylesheet" href="css/detail.css"/>
        <title>DETAIL CAKES</title>
    </head>
    <!--    <body onload="setBold()">-->
    <body>
        <div id="menu" data-page="Home"></div>
        <div class="container">
            <%@include file="header.jsp" %>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <!-- ----- left ------- -->
                        <div class="left-side col-9">
                            <div class="page-title text-large">
                                <span><a>${menu.getTitle()}</a></span>
                            </div>
                            <div class="page-content">
                                <p>
                                    <img class="page-content__image" src="${menu.getPhotoPath()}">
                                    ${menu.getContent()}
                                <p class="setBold">€${menu.getPrice()}0</p>
                            </div>
                        </div>
                        <%@include file="sharing.jsp" %>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
