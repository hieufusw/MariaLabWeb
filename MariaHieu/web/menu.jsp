
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/all.css"/>
        <link rel="stylesheet" href="css/menu.css"/>
        <title>Menu</title>
    </head>
    <body>
<!--        <div id="menu" data-page="Menu"></div>-->
        <div class="container">
            <%@include file="header.jsp" %>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <!-- ----- left ------- -->
                        <div class="left-side col-9">
                            <div class="list-heading text-large">About my Cakes</div>
                            <c:forEach var="i" items="${menus}">
                                <div class="list-cake">
                                    <div class="list-cake__heading text-medium">
                                        <span><a class="list-cake__link" href="DetailController?id=${i.getId()}">${i.getTitle()}</a></span>
                                    </div>
                                    <div class="list-cake__content">
                                        <p class="list-cake__description col-8">
                                            ${i.getContent()}
                                        </p>
                                        <div class="list-cake__image col-4">
                                            <img class="default-image" alt="cake" src="${i.getPhotoPath()}">
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="paging">
                                <c:forEach var="j" begin="1" step="1" end="${totalPage}">
                                    <c:if test="${page != j}">
                                        <a class="paging-background1" href="MenuController?page=${j}" >${j}</a> 
                                    </c:if>
                                    <c:if test="${page == j}">
                                        <a class="paging-background2">${j}</a>
                                    </c:if>
                                </c:forEach>
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
