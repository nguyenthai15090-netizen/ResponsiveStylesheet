<%-- 
    Document   : changepassword
    Created on : Nov 12, 2025, 12:25:53 AM
    Author     : MinhPD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Change Password</title>
        <style>
            body {
                font-family: "Poppins", sans-serif;
                background-color: #f8f8f8;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
            }

            .container {
                background: #fff;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 8px 20px rgba(0,0,0,0.05);
                width: 360px;
                text-align: center;
            }

            h2 {
                margin-bottom: 24px;
                font-weight: 700;
                color: #000;
            }

            label {
                display: block;
                text-align: left;
                font-size: 14px;
                margin-bottom: 6px;
                color: #333;
            }

            input {
                width: 100%;
                padding: 10px 12px;
                margin-bottom: 16px;
                border: 1px solid #ddd;
                border-radius: 6px;
                font-size: 14px;
            }

            .btn {
                width: 100%;
                background-color: #d0001b;
                color: #fff;
                border: none;
                padding: 12px;
                border-radius: 6px;
                font-weight: 600;
                cursor: pointer;
                transition: background 0.3s ease;
            }

            .btn:hover {
                background-color: #b50016;
            }

            .link {
                margin-top: 14px;
                font-size: 14px;
                color: #666;
            }

            .link a {
                color: #d0001b;
                text-decoration: none;
                font-weight: 600;
            }

            .link a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="/login/login.jsp" />
        </c:if>
        <div class="container">

            <h2>Change Password</h2>
            <form action="<c:url value="/changepassword"/>" method="post">
                <input type="hidden" name="id" value="${sessionScope.user.userID}"/>
                <label for="old-password">Old Password</label>
                <input type="password" name ="oldpassword" id="old-password" placeholder="Old Password" />

                <label for="new-password">New Password</label>
                <input type="password" name="newpassword" id="new-password" placeholder="New Password" />

                <label for="confirm-password">Confirm Password</label>
                <input type="password" name="confirmpassword" id="confirm-password" placeholder="Confirm Password" />

                <c:if test="${requestScope.error != null and not requestScope.error.isEmpty()}">
                    <div style="text-align: center; color:red"><b>${requestScope.error}</b></div>
                        </c:if>

                <button class="btn" type="submit">UPDATE PASSWORD</button>
            </form>
            <div class="link">
                <a href="<c:url value="/client/profile/profile.jsp"/>">← Back to Profile</a>
            </div>
        </div>
    </body>
</html>

