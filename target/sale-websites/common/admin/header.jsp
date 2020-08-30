<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="trang-chu">Mini shop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <c:if test="${not empty admin}">active</c:if> ">
                    <a class="nav-link" href="admin">Admin page</a>
                </li>
                <li class="nav-item <c:if test="${not empty category}">active</c:if>">
                    <a class="nav-link" href=" <c:url value='/admin-category'/>">Manage category</a>
                </li>
                <li class="nav-item <c:if test="${not empty product}">active</c:if>">
                    <a class="nav-link" href="<c:url value='/admin-product'/>">Manage product</a>
                </li>
                <li class="nav-item <c:if test="${not empty user}">active</c:if>">
                    <a class="nav-link" href="<c:url value='/admin-user'/>">Manage user</a>
                </li>

            </ul>

        </div>
    </div>
    <ul class="navbar-nav mr-right">
        <c:if test="${not empty USERMODEL}">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='#'/>">Welcome, ${USERMODEL.fullname}</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/user'/>">Logout</a>
            </li>
        </c:if>
        <c:if test="${empty USERMODEL}">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/user?action=login'/>">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/user?action=register'/>">Register</a>
            </li>
        </c:if>

    </ul>

</nav>
</body>
</html>
