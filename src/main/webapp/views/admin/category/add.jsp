<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>

</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Thêm danh mục</h3>
    </div>
    <div class="panel-body">
        <form method="POST" action='<c:url value="/api-admin-category?action=add"/> ' id="frmAdd">
            <div class="form-group">
                <label for="txtCategoryName">Tên danh mục</label>
                <input type="text" class="form-control" id="txtName" name="name" autofocus>
                <p style="color:red" id="validateName"></p>
            </div>
            <a href="<c:url value='/admin-category'/>" class="btn btn-success" role="button">
                <<
            </a>
            <button type="submit" class="btn btn-primary" id="btn">
                <span class="glyphicon glyphicon-ok-circle"></span> Lưu
            </button>

        </form>
    </div>
</div>
</body>
</html>
