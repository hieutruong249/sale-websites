<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Mini shop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Trang chủ
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Thông tin về công ty</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Dịch vụ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Liện hệ</a>
                </li>

            </ul>

        </div>
    </div>
    <ul class="navbar-nav mr-right">
        <li class="nav-item">
            <a class="nav-link" href="<c:url value='/shopcart'/>">Giỏ hàng</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<c:url value='/register'/>">Đăng ký</a>
        </li>
    </ul>

</nav>
</body>
</html>
