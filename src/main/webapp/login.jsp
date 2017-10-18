<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <title>Login</title>
    <%@include file="partials/css.jsp"%>
</head>
<body>
    <%@include file="partials/navbar.jsp"%>

    <form action="/login.jsp" method="post">
        <label for="username">User Name:</label>
        <input type="text" id="username" name="username">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
        <input class="btn btn-default" type="submit" value="Login">
    </form>

    <%@include file="partials/javascript.jsp"%>
</body>
</html>
