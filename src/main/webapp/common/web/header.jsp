<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li class="nav-item active">
                    <a class="nav-link" href="trang-chu">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>

            </ul>

        </div>
    </div>
    <ul class="navbar-nav mr-right">
        <li class="nav-item">
            <a class="nav-link" href="<c:url value='/shopcart'/>">Shopcart</a>
        </li>
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
