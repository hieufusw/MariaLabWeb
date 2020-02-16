
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link type="text/css" rel="stylesheet" href="css/all.css">
        <link rel="stylesheet" href="css/home.css"/>
    </head>
    <body>
<!--        <div id="menu" data-page="Home"></div>-->
        <div class="container">
            <%@include file="header.jsp" %>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <!-- ----- left ------- -->
                        <div class="left-side col-9">
                            <div class="introduction">
                                <p class="intro-content">
                                    <img class="intro-image" src="${intro.photoPath}"/> 
                                    <a class="intro__link" href="DetailController?id=${intro.id}">${intro.title}</a></br>
                                    ${intro.content}
                                </p>
                            </div>
                            <div class="list-cake">
                                <c:forEach items="${listCake}" var="lc">
                                    <div class="cake col-5-5">
                                        <div class="cake__image">
                                            <img class="default-image" src="${lc.photoPath}">
                                        </div>
                                        <div class="cake__title text-medium">
                                            <a class="cake__title2" href="DetailController?id=${lc.id}">${lc.title}</a>
                                        </div>
                                        <p>${lc.content}</p>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="visit-cafe">
                                <p class="visit-cafe__heading text-medium">Visit my cafe</p>
                                <p class="visit-cafe__info">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                                <p class="visit-cafe__info">${info.address}</p>
                                <p class="visit-cafe__info">Phone: ${info.tel}</p>
                            </div>
                            <div class="cafe_sign">
                                <p>Kind regards</p>
                                <p class="style_name">Maria Bagnarelli</p>
                            </div>
                        </div>
                        <%@include file="sharing.jsp" %>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
<!--        <script src="js/menu.js"></script>-->
    </body>
</html>





