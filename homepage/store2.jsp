<%-- 
    Document   : blank
    Created on : Nov 6, 2025, 12:38:02 AM
    Author     : MinhPD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Electro - HTML Ecommerce Template</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="<c:url value='/resource/client/css/bootstrap.min.css'/>"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="<c:url value='/resource/client/css/slick.css'/>"/>
        <link type="text/css" rel="stylesheet" href="<c:url value='/resource/client/css/slick-theme.css'/>"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="<c:url value='/resource/client/css/nouislider.min.css'/>"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="<c:url value='/resource/client/css/font-awesome.min.css'/>">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="<c:url value='/resource/client/css/style.css'/>"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

            <jsp:include page="/client/layout/header.jsp" />
            <jsp:include page="/client/layout/navigation.jsp"/>
            <div class="row">
                <div id="store" class="col-md-9">
                    <!-- product -->
                    <c:forEach var="product" items="${requestScope.products}">

                        <div class="col-md-4 col-xs-6">
                            <div class="product">
                                <div class="product-img">
                                    <img src="resource/client/img/products/${product.getImage()}" alt="">
                                    <div class="product-label">
                                        <c:if test="${product.getDiscount()!=0}">
                                            <span class="sale">-${product.getDiscount()}%</span>
                                        </c:if>

                                    </div>
                                </div>
                                <div class="product-body">

                                    <h3 class="product-name"><a href="product?id=${product.getpID()}">${product.getProductName()}</a></h3>
                                        <c:if test="${product.getDiscount()!=0}">
                                        <h4 class="product-price"><fmt:formatNumber value="${product.getPrice()*(100-product.getDiscount())/100}" type="number" pattern="#,###"/>đ
                                            <del class="product-old-price"><fmt:formatNumber value="${product.getPrice()}" type="number" pattern="#,###"/>đ</del></h4>
                                        </c:if>
                                        <c:if test="${product.getDiscount()==0}">
                                        <h4 class="product-price"><fmt:formatNumber value="${product.getPrice()}" type="number" pattern="#,###"/>đ</h4>
                                    </c:if>

                                    <div class="product-btns">
                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Add to wishlist</span></button>
                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Quick view</span></button>
                                    </div>
                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                </div>
                            </div>
                        </div>

                    </c:forEach>


                    <!-- store bottom filter -->

                    <div class="store-filter clearfix">

                        <ul class="store-pagination">
                            <c:forEach begin="1" end="${totalPages}" var="i">
                                <li  ${currentPage == i ? 'active' : ''}">
                                    <a  href="?page=${i}
                                        ${not empty keySearch ? '&keySearch=' : ''}${keySearch}
                                        ${not empty factory ? '&factory=' : ''}${factory}
                                        ${not empty priceMax ? '&priceMax=' : ''}${priceMax}
                                        ${not empty priceMin ? '&priceMin=' : ''}${priceMin}
                                        ${not empty sortOption ? '&sortOption=' : ''}${sortOption}">
                                        ${i}
                                    </a>
                                </li>
                            </c:forEach>                                          
                        </ul>

                    </div>
                    <!-- /store bottom filter -->
                </div>
            </div>
            <jsp:include page="/client/layout/footer.jsp" />

            <!-- jQuery Plugins -->
            <script src="<c:url value='/resource/client/js/jquery.min.js'/>"></script>
            <script src="<c:url value='/resource/client/js/bootstrap.min.js'/>"></script>
            <script src="<c:url value='/resource/client/js/slick.min.js'/>"></script>
            <script src="<c:url value='/resource/client/js/nouislider.min.js'/>"></script>
            <script src="<c:url value='/resource/client/js/jquery.zoom.min.js'/>"></script>
            <script src="<c:url value='/resource/client/js/main.js'/>"></script>

    </body>
</html>

