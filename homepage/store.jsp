<%-- 
    Document   : store
    Created on : Nov 6, 2025, 12:36:10 AM
    Author     : MinhPD
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb-tree">
                            <li><a href="<c:url value="/homepage"/>">Home</a></li>
                            <li class="active">Product</li>
                        </ul>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /BREADCRUMB -->

        <!-- SECTION -->
        <div class="section">

            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- ASIDE -->
                    <form id="store" class="store" method="get">
                        <div id="aside" class="col-md-3">
                            <!-- aside Widget -->

                            <!-- /aside Widget -->
                            <div class="aside">
                                <h3 class="aside-title">Brand</h3>
                                <div class="checkbox-filter">
                                    <c:forEach items="${requestScope.map}" var="factory">
                                        <c:set var="uniqueId" value="factory-${factory.key}" />

                                        <div class="input-checkbox">
                                            <input type="checkbox"
                                                   name="factory"
                                                   value="${factory.key}"
                                                   id="${uniqueId}"> <label for="${uniqueId}">
                                                <span></span>
                                                ${factory.key}
                                                <small>(${factory.value})</small>
                                            </label>
                                        </div>
                                    </c:forEach>
                                    <div class="input-checkbox">
                                        <input type="checkbox"
                                               name="factory"
                                               value=""
                                               id="All"> <label for="All">
                                            <span></span>
                                            All
                                            <small></small>
                                        </label>
                                    </div>
                                </div>

                                <!-- aside Widget -->
                                <div class="aside">
                                    <h3 class="aside-title">Price</h3>
                                    <div class="price-filter">
                                        <div id="price-slider"></div>
                                        <div class="input-number price-min">
                                            <input id="price-min" type="number" name="priceMin" value="${priceMin != null ? price : 1}">
                                            <span class="qty-up">+</span>
                                            <span class="qty-down">-</span>
                                        </div>
                                        <span>-</span>
                                        <div class="input-number price-max">
                                            <input id="price-max" type="number" name="priceMax" value="${priceMax != null ? price : 100000000}">
                                            <span class="qty-up">+</span>
                                            <span class="qty-down">-</span>
                                        </div>
                                    </div>
                                </div>

                            </div>                        

                            <!-- /aside Widget -->

                            <div class="store-filter clearfix">
                                <div class="store-sort">
                                    <label>
                                        Sort By:
                                        <select class="input-select" name="sortOption">
                                            <option value="" ${(sortOption == '' || sortOption == null) ? 'selected' : ''}>None</option>
                                            <option value="asc" ${sortOption == 'asc' ? 'selected' : ''}>Increasing price</option>
                                            <option value="desc" ${sortOption == 'desc' ? 'selected' : ''}>Decreasing price</option>   
                                        </select>
                                    </label>

                                </div>

                            </div>
                            <input type="submit" value="FILTER">

                        </div></form>
                    <!-- /ASIDE -->

                    <!-- STORE -->
                    <div id="store" class="col-md-9">
                        <!-- store top filter -->


                        <!-- /store top filter -->

                        <!-- store products -->
                        <div class="row">

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
                                        <form method="post" action="cart">
                                            <input type="hidden" name="quantity" value="1"> 
                                            <input type="hidden" name="productID" value="${product.getpID()}"> 
                                            <input type="hidden" name="returnUrl" value="<c:url value="/store"/>"> 
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn" ><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                            </div>
                                        </form>
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
                        <!-- /STORE -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /SECTION -->


            <!-- NEWSLETTER -->
            <div id="newsletter" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="newsletter">
                                <p>Sign Up for the <strong>NEWSLETTER</strong></p>
                                <form>
                                    <input class="input" type="email" placeholder="Enter Your Email">
                                    <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
                                </form>
                                <ul class="newsletter-follow">
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-pinterest"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /NEWSLETTER -->
            <jsp:include page="/client/layout/footer.jsp"/>
        </div>
    </div>
    <% 
            String message = (String) session.getAttribute("message");
            if (message != null) {
    %>
    <div id="alertMessage" class="alert alert-success text-center" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 9999; width: 50%;" role="alert">
        <%= message %>
    </div>
    <script>
        // Tự động ẩn thông báo sau 3 giây
        setTimeout(function () {
            document.getElementById("alertMessage").style.display = 'none';
        }, 3000);
    </script>
    <% 
        session.removeAttribute("message");  // Xóa message sau khi hiển thị
        } 
    %>
    <!-- jQuery Plugins -->
    <script src="<c:url value='/resource/client/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/resource/client/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resource/client/js/slick.min.js'/>"></script>
    <script src="<c:url value='/resource/client/js/nouislider.min.js'/>"></script>
    <script src="<c:url value='/resource/client/js/jquery.zoom.min.js'/>"></script>
    <script src="<c:url value='/resource/client/js/main.js'/>"></script>
</body>
</html>
