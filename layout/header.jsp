<%-- 
    Document   : header
    Created on : Nov 9, 2025, 10:48:38 PM
    Author     : MinhPD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> 0829698987</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> minhphamduc05@gmail.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1836 HaNoi</a></li>
					</ul>
					<ul class="header-links pull-right">
						
                                                <c:if test="${sessionScope.user != null}">
                                                <li><a href="<c:url value='/profile'/>"><i class="fa fa-user-o"></i> ${sessionScope.user.getFullname()}</a></li>
                                                </c:if>
                                                <c:if test="${sessionScope.user == null}">
                                                <li><a href="<c:url value='/login'/>"><i class="fa fa-user-o"></i> My Account</a></li>
                                                </c:if>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
                                                            <a href="<c:url value="/homepage"/>" class="logo">
									<img src="resource/client/img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form action="store">
									<select class="input-select" name="factory">
										<option value="">All Categories</option>
										<option value="asus">ASUS</option>
										<option value="lenovo">LENOVO</option>
                                                                                <option value="gigabyte">GIGABYTE</option>
                                                                                <option value="mac">MAC</option>
										<option value="acer">ACER</option>
                                                                                <option value="msi">MSI</option>
                                                                                <option value="gigabyte">DELL</option>
									</select>
									<input class="input" type="text" placeholder="Search here" name="keySearch" value="${keySearch != null ? keySearch : ""}">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="/wishlist">
										<i class="fa fa-heart-o"></i>
										<span>Your Wishlist</span>
										
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
                                                                    <a href="<c:url value="/cart"/>">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										
									</a>
									
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->
    </body>
</html>
