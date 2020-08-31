<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>

</head>
<body>
<div class="col-lg-3">

    <h1 class="my-4">Categories</h1>
    <div class="list-group">
        <c:forEach items="${listCategory}" var="item">
            <a href='<c:url value="/category?id=${item.id}"/>' class="list-group-item <c:if test="${item.id == categoryId}">active</c:if>">${item.name}</a>
        </c:forEach>

    </div>
    <br>

</div>
</body>
</html>
