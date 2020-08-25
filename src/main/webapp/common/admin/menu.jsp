<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<div style="margin-top: 60px">
    <ul class="nav nav-pills nav-justified">
        <li class="nav-item">
            <a class="nav-link" href="#">Trang chủ</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href=" <c:url value='/admin-category'/>">Quản lý danh mục</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<c:url value='/admin-product'/>">Quản lý sản phẩm</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<c:url value='/admin-user'/>">Quản lý người dùng</a>
        </li>
    </ul>
</div>
</body>
</html>
