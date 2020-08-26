<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@page isELIgnored="false" %>
<html>
<head>

</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading" style="display:flex; flex:1; justify-content:space-between; align-items:center">
        <span class="panel-title">Chỉnh sửa chuyên mục</span>
    </div>
    <div class="panel-body">
        <form method="POST" id="frmEdit" action="<c:url value='/api-admin-category?action=edit'/>">
            <input name="id" value='${model.id}'type="hidden">
            <div class="form-group">
                <label for="txtCategoryName">Tên danh mục</label>
                <input type="text" class="form-control" id="txtName" name="name" autofocus
                       value='${model.name}'>

            </div>
            <a href="<c:url value='/admin-category'/>" class="btn btn-success" role="button">
                <<
            </a>
            <button type="submit" class="btn btn-primary">
                Cập nhật
            </button>
            <a class="btn btn-danger" role="button" href="<c:url value='/api-admin-category?action=delete&id=${model.id}'/>" >Xoá</a>

        </form>
    </div>
</div>
</body>
</html>
