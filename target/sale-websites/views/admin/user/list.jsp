<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/29/2020
  Time: 12:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>
<div class="row">
    <div class="col-md-10"></div>
    <div class="col-md-2">
        <a class="btn btn-success mr-right" role="button" href="<c:url value='/admin-user?action=add'/> ">Add User</a>
    </div>
</div>
<div style="margin-top: 30px">

    <table class="table" >
        <thead class="thead-light">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Username</th>
            <th scope="col">Fullname</th>
            <th scope="col">Role ID</th>
            <th scope="col">Status</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="item">
            <tr>
                <th scope="row">${item.id}</th>
                <td>${item.username}</td>
                <td>${item.fullname}</td>
                <td>${item.roleId}</td>
                <td>${item.isDelete}</td>
                <td>
                    <a class="btn btn-primary mr-right" role="button" href="<c:url value='/admin-user?action=edit&id=${item.id}'/> ">Edit</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>
