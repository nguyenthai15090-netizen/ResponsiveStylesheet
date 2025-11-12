<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <title>Login – Electro</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value='/login/register_login.css'/>">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    </head>
    <body>

        <div class="auth-box">
            <h2>Login</h2>

            <form action="<c:url value ='/login'/>" method="post" id="login-form">
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Email" name="email" required>

                <label for="password">Password</label>
                <div class="eye">
                    <input type="password" id="password" placeholder="Password" name="password" required>
                    <i class="fa-solid fa-eye" id="togglePass"></i>
                </div>
                <c:if test="${requestScope.error != null and not requestScope.error.isEmpty()}">
                    <div style="text-align: center; color:red"><b>${requestScope.error}</b></div>
                        </c:if>


                <button type="submit" class="btn">LOGIN</button>
            </form>

            <p class="small">Don't have an account? <a href="<c:url value='/register'/>">Register</a></p>
        </div>

        <script>
            // Toggle show/hide password
            const togglePass = document.getElementById('togglePass');
            const password = document.getElementById('password');

            togglePass.addEventListener('click', () => {
                if (password.type === 'password') {
                    password.type = 'text';
                    togglePass.classList.remove('fa-eye');
                    togglePass.classList.add('fa-eye-slash');
                } else {
                    password.type = 'password';
                    togglePass.classList.remove('fa-eye-slash');
                    togglePass.classList.add('fa-eye');
                }
            });
        </script>
    </body>
</html>
