<%-- 
    Document   : cart
    Created on : Nov 11, 2025, 11:01:53 PM
    Author     : MinhPD
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Your Cart</title>

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
        <style>
            .cart-container {
                width: 90%;
                margin: 40px auto;
                display: flex;
                gap: 30px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                background: #fff;
                border-radius: 8px;
                overflow: hidden;
            }
            th {
                background: #d10024;
                color: #fff;
                padding: 14px;
                text-align: center;
            }
            td {
                border-bottom: 1px solid #eee;
                padding: 12px;
                text-align: center;
            }
            .product-img {
                width: 70px;
                height: 70px;
                object-fit: cover;
                border-radius: 6px;
            }
            .qty-box {
                display: flex;
                justify-content: center;
                align-items: center;
                gap: 8px;
            }
            .qty-btn {
                width: 24px;
                height: 24px;
                background: #d10024;
                color: white;
                border: none;
                cursor: pointer;
                border-radius: 4px;
            }
            .delete-btn {
                color: red;
                cursor: pointer;
                font-weight: bold;
            }
            /* Cart Total Box */
            .cart-total {
                width: 30%;
                background: #fff;
                padding: 20px;
                border-radius: 8px;
                height: fit-content;
            }
            .cart-total h3 {
                margin-bottom: 15px;
            }
            .cart-total div {
                display: flex;
                justify-content: space-between;
                margin-bottom: 10px;
                font-size: 16px;
            }
            .checkout-btn {
                width: 100%;
                padding: 12px;
                background: #d10024;
                color: #fff;
                text-align: center;
                display: block;
                margin-top: 20px;
                border-radius: 6px;
                font-weight: bold;
                text-decoration: none;
            }
        </style>
    </head>

    <body>

        <jsp:include page="/client/layout/header.jsp" />
        <jsp:include page="/client/layout/navigation.jsp"/>

        <h2 style="text-align:center; margin: 30px 0;">Your Shopping Cart</h2>

        <div class="cart-container">

            <!-- CART ITEMS TABLE -->
            <div style="width: 70%;">
                <table>
                    <tr>
                        <th>Select</th>
                        <th>Products</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Handle</th>
                    </tr>

                    <c:forEach items="${cartItems}" var="item">
                        <tr>
                            <td><input type="checkbox" name="selected"></td>
                            <td><img class="product-img" src="<c:url value="/resource/client/img/products/${item.product.image}"/>" alt=""></td>
                            <td>${item.product.productName}</td>
                            <c:if test="${item.product.discount!=0}">
                                <td><fmt:formatNumber value="${item.product.price*(100-item.product.discount)/100}" type="number" pattern="#,###"/>đ</td>
                            </c:if>
                            <c:if test="${item.product.discount==0}">
                                <td><fmt:formatNumber value="${item.product.price}" type="number" pattern="#,###"/>đ</td>
                            </c:if>

                            <td>
                                <div class="qty-box">

                                    <span>${item.quantity}</span>

                                </div>
                            </td>

                            <c:if test="${item.product.discount!=0}">
                                <td><fmt:formatNumber value="${item.product.price*(100-item.product.discount)/100*item.quantity}" type="number" pattern="#,###"/>đ</td>
                            </c:if>
                            <c:if test="${item.product.discount==0}">
                                <td><fmt:formatNumber value="${item.product.price*item.quantity}" type="number" pattern="#,###"/>đ</td>
                            </c:if>
                            <td><span class="delete-btn" onclick="window.location.href='deletecart?id=${item.product.getpID()}'">X</span></td>
                        </tr>
                    </c:forEach>
                </table>
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

            <!-- CART TOTALS -->
            <div class="cart-total">
                <h3>Cart Totals</h3>
                <div>
                    <span>Subtotal:</span>
                    <span>$${subtotal}</span>
                </div>
                <div>
                    <span>Shipping:</span>
                    <span>Free</span>
                </div>
                <hr>
                <div style="font-weight:bold; font-size:18px;">
                    <span>Total:</span>
                    <span>$${subtotal}</span>
                </div>
                <a href="checkout" class="checkout-btn">Proceed to Checkout</a>
            </div>

        </div>

        <jsp:include page="/client/layout/footer.jsp" />

    </body>
</html>