
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="row">
    <div class="col-md-10"></div>
    <div class="col-md-2">
        <a class="btn btn-success mr-right" role="button" href="<c:url value='/admin-category?action=add'/> ">Thêm danh mục</a>
    </div>
</div>
<div style="margin-top: 30px">

    <table class="table" >
        <thead class="thead-light">
        <tr>
            <th scope="col">id</th>
            <th scope="col">Tên danh mục</th>
            <th scope="col">Trạng thái</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="item">
            <tr>
                <th scope="row">${item.id}</th>
                <td>${item.getName()}</td>
                <td>${item.getIsDelete()}</td>
                <td>
                    <a class="btn btn-primary mr-right" role="button" href="<c:url value='/admin-category?action=edit&id=${item.id}'/> ">Chỉnh sửa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>
