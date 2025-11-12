<%-- 
    Document   : product
    Created on : Nov 6, 2025, 12:35:27 AM
    Author     : MinhPD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb-tree">
                            <li><a href="<c:url value="homepage"/>">Home</a></li>
                            <li><a href="<c:url value="store"/>">Product</a></li>
                            <li class="active">${product.getProductName()}</li>
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
                    <!-- Product main img -->
                    <div class="col-md-5 col-md-push-2">
                        <div id="product-main-img">
                            <div class="product-preview">
                                <img src="<c:url value="resource/client/img/products/${product.getImage()}"/>"alt="">
                            </div>

                        </div>
                    </div>
                    <!-- /Product main img -->

                    <!-- Product thumb imgs -->
                    <div class="col-md-2  col-md-pull-5">
                        <div id="product-imgs">
                            <div class="product-preview">
                                <img src="<c:url value="resource/client/img/products/${product.getImage()}"/>" alt="">
                            </div>

                        </div>
                    </div>
                    <!-- /Product thumb imgs -->

                    <!-- Product details -->
                    <div class="col-md-5">
                        <div class="product-details">
                            <h2 class="product-name">${product.getProductName()}</h2>
                            <div>
                                <p></p>
                            </div>
                            <div>
                                <c:if test="${product.getDiscount()!=0}">
                                    <span class="sale">-${product.getDiscount()}%</span>
                                </c:if>
                                <span class="product-available">Quantity:${product.getQuantity()}</span>
                            </div>
                            <p></p>
                            <p></p>
                            <p>${product.getSpecs()}</p>


                            <form action="cart" method="post">
                                <div class="add-to-cart">
                                    <div class="qty-label">
                                        Qantity:
                                        <div class="input-number">
                                            <input type="number" value="1" name="quantity">
                                            <span class="qty-up">+</span>
                                            <span class="qty-down">-</span>
                                        </div>
                                    </div>

                                    <input type="hidden" name="productID" value="${product.getpID()}">
                                    <input type="hidden" name="returnUrl" value="product?id=${product.getpID()}">     
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>

                                </div> 
                            </form>

                            <ul class="product-btns">
                                <li><a href="#"><i class="fa fa-heart-o"></i> add to wishlist</a></li
                            </ul>

                            <ul class="product-links">
                                <li>Factory:</li>
                                <li><a href="${pageContext.request.contextPath}/store?factory=${factoryName}">${factoryName}</a></li>

                            </ul>

                            <ul class="product-links">

                            </ul>

                        </div>
                    </div>
                    <!-- /Product details -->

                    <!-- Product tab -->
                    <div class="col-md-12">
                        <div id="product-tab">
                            <!-- product tab nav -->
                            <ul class="tab-nav">
                                <li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
                                <li><a data-toggle="tab" href="#tab2">Details</a></li>
                            </ul>
                            <!-- /product tab nav -->

                            <!-- product tab content -->
                            <div class="tab-content">
                                <!-- tab1  -->
                                <div id="tab1" class="tab-pane fade in active">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p>${product.getDescription()}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- /tab1  -->

                                <!-- tab2  -->
                                <div id="tab2" class="tab-pane fade in">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p>${product.getSpecs()}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- /tab2  -->




                            </div>
                            <!-- /product tab content  -->
                        </div>
                    </div>
                    <!-- /product tab -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->

        <!-- Section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">

                    <div class="col-md-12">
                        <div class="section-title text-center">
                            <h3 class="title">Related Products</h3>
                        </div>
                    </div>
                    <c:forEach var="product" items="${product_related}">

                        <!-- product -->
                        <div class="col-md-3 col-xs-6">
                            <div class="product">
                                <div class="product-img">
                                    <img src="<c:url value="resource/client/img/products/${product.getImage()}"/>" alt="">
                                    <div class="product-label">
                                        <c:if test="${product.getDiscount()!=0}">
                                            <span class="sale">-${product.getDiscount()}%</span>
                                        </c:if>
                                    </div>
                                </div>
                                <div class="product-body">
                                    <p class="product-category">Category</p>
                                    <h3 class="product-name"><a href="${pageContext.request.contextPath}/product?id=${product.getpID()}">${product.getProductName()}</a></h3>
                                        <c:if test="${product.getDiscount()!=0}">

                                        <h4 class="product-price"><fmt:formatNumber value="${product.getPrice()*(100-product.getDiscount())/100}" type="number" pattern="#,###"/>đ <del class="product-old-price"><fmt:formatNumber value="${product.getPrice()}" type="number" pattern="#,###"/>đ</del></h4>
                                    </c:if>
                                    <c:if test="${product.getDiscount()==0}">
                                        <h4 class="product-price"><fmt:formatNumber value="${product.getPrice()}" type="number" pattern="#,###"/>đ</h4>
                                    </c:if>
                                    <div class="product-rating">
                                    </div>
                                    <div class="product-btns">
                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                    </div>
                                </div>
                                <form method="post" action="cart">
                                    <input type="hidden" name="quantity" value="1"> 
                                    <input type="hidden" name="productID" value="${product.getpID()}"> 
                                    <input type="hidden" name="returnUrl" value="<c:url value='product?id=${param.id}'/>">
                                    <div class="add-to-cart">
                                        <button class="add-to-cart-btn" ><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- /product -->



                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /Section -->

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

        <jsp:include page="/client/layout/footer.jsp" />
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

