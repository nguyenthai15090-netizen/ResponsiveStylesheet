<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="<c:url value='/login/register_login.css'/>">
    </head>
    <body>
        <div class="auth-container">
            <form action="<c:url value='/register'/>" method="post" class="auth-box">
                <h2>Register</h2>

                <label>Full Name</label>
                <input type="text" name="fullname" placeholder="Full Name" required>

                <label>Email</label>
                <input type="email" name="email" placeholder="Email" required>

                <label>Phone</label>
                <input type="text" name="phone" placeholder="Phone Number" required>

                <label>Password</label>
                <div class="password-wrapper">
                    <input type="password" name="password" id="password" required>
                    <span class="toggle-password" onclick="togglePassword('password')">👁</span>
                </div>

                <label>Confirm Password</label>
                <div class="password-wrapper">
                    <input type="password" name="confirmPassword" id="confirmPassword" required>
                    <span class="toggle-password" onclick="togglePassword('confirmPassword')">👁</span>
                </div>

                <c:if test="${requestScope.error != null and not requestScope.error.isEmpty()}">
                    <div style="text-align: center; color:red"><b>${requestScope.error}</b></div>
                        </c:if>

                <button type="submit" class="auth-btn">REGISTER</button>

                <p class="switch-page">
                    Already have an account?
                    <a href="<c:url value='/login'/>">Login</a>
                </p>

            </form>
        </div>

        <script>
            function togglePassword(id) {
                const input = document.getElementById(id);
                input.type = (input.type === "password") ? "text" : "password";
            }
        </script>

    </body>
</html>
