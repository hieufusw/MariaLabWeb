
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/all.css"/>
        <link rel="stylesheet" href="css/findus.css"/>
        <title>Find Us</title>
    </head>
    <body>
<!--        <div id="menu" data-page="Info"></div>-->
        <div class="container">
            <%@include file="header.jsp" %>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <!-- ----- left ------- -->
                        <div class="left-side col-9">
                            <div class="find-us-heading">
                                <div class="text-large2">Find Maria's Cafe</div>
                            </div>
                            <div class="find-us-content">
                                <div class="content-container">
                                    <div class="address-and-contact col-6">
                                        <div class="title-heading">
                                            <div class="address-title text-medium">Address and contact:</div>
                                        </div>
                                        <div class="address-container">
                                            <div class="address__details">
                                                <p>${shopInf.address}</p>
                                            </div>
                                            <div class="tel-email">
                                                <div class="tel-email__heading col-4">
                                                    <a>
                                                        Tel:
                                                    </a>
                                                </div>
                                                <div class="tel-email__data col-8">
                                                    <a>
                                                        ${shopInf.tel}
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="tel-email">
                                                <div class="tel-email__heading col-4">
                                                    <p>
                                                        Email:
                                                    </p>
                                                </div>

                                                <div class="tel-email__data col-8">
                                                    <p>
                                                        ${shopInf.email}
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="opening-hours col-6">
                                        <div class="title-heading">
                                            <div class="opening-hours-title text-medium">Opening hours:</div>
                                        </div>
                                        <div class="opening-hours-content">
                                            <p>Monday: ${shopInf.dayClose}</p>
                                            <p>Tuesday-Friday: ${shopInf.weekDays}</p>
                                            <p>Saturday and Sunday: ${shopInf.holiday}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="google-maps">
                                    <img class="default-image" alt="maps" src="${shopInf.photoPath}">
                                </div>
                            </div>
                        </div>
                        <%@include file="sharing.jsp" %>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
        <script src="js/menu.js"></script>
    </body>
</html>
