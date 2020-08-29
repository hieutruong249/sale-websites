
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Admin - category</title>
</head>
<body>
<div class="row">
    <div class="col-md-10"></div>
    <div class="col-md-2">
        <a class="btn btn-success mr-right" role="button" href="<c:url value='/admin-category?action=add'/> ">Add category</a>
    </div>
</div>
<div style="margin-top: 30px">

    <table class="table" >
        <thead class="thead-light">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name category</th>
            <th scope="col">Status</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="item">
            <tr>
                <th scope="row">${item.id}</th>
                <td>${item.name}</td>
                <td>${item.isDelete}</td>
                <td>
                    <a class="btn btn-primary mr-right" role="button" href="<c:url value='/admin-category?action=edit&id=${item.id}'/> ">Edit</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>
