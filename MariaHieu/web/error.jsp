<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/all.css"/>
        <title>ERROR</title>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp" %>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <!-- ----- left ------- -->
                        <div class="left-side col-9">
                            <h3>Error !!! Please click <a href="HomeController">here</a> to go back home page.</h3>
                        </div>
                        <%@include file="sharing.jsp" %>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
