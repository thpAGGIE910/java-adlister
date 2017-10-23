<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register for Account" />
    </jsp:include>
</head>
<body>
    <%@include file="partials/navbar.jsp" %>
    <div class="container">
        <h2>Register For An Account</h2>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" class="form-control"></div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary btn-block">Register</button>
            <span>Already have an account? <a href="/login">Log in</a> here.</span>
        </form>
    </div>
</body>
</html>
