<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads - Home" />
    </jsp:include>
</head>
<body>
    <%@include file="../partials/navbar.jsp"%>
    <div class="container">
        <c:forEach var="ad" items="${ads}">
            <div clas="card">
                <h3><a href="/ad/${ad.id}">${ad.title}</a></h3>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
