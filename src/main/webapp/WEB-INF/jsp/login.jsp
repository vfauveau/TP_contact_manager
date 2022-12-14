<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>Homepage</title>
    <title>Contact Manager | Login</title>
</head>
<body>
<header style="margin-bottom: 130px">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark header p-3">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/user/">Contact Manager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/register">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<form class="form-group mx-auto w-50" action="${pageContext.request.contextPath}/login" method="post">
    <div>
        <p>Email for testing : admin@admin / password : admin</p>
        <p>Email for testing : valentinfauveau28@gmail.com / password : 123456</p>
    </div>
    <h1>LOGIN</h1>
    <div class="form-group">
        <label for="email">Email</label>
        <input class="form-control"id="email" type="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control"id="password" type="password" name="password" required>
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button class="btn btn-primary"type="submit">Submit</button>
</form>

</body>
</html>