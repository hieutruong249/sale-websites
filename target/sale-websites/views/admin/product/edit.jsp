<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/26/2020
  Time: 6:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>

</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Edit product</h3>
    </div>
    <div class="panel-body">
        <form method="POST" action='<c:url value="/api-admin-product?action=add"/> ' id="frmAdd">
            <div class="form-group">
                <label for="img">Name product</label>
                <input type="text" class="form-control" id="img" name="image" value='${model.image}'>
            </div>
            <input name="id" value='${model.id}'type="hidden">
            <div class="form-group">
                <label for="txtName">Name product</label>
                <input type="text" class="form-control" id="txtName" name="name" autofocus value='${model.name}'>
            </div>
            <div class="form-group">
                <label for="sel1">Select category:</label>
                <select class="form-control" id="sel1" name="category">
                    <c:forEach items="${listCategory}" var="item">
                        <c:if test="${item.id == model.categoryId}">
                            <option value="${item.id}" selected="selected">${item.name}</option>
                        </c:if>
                        <c:if test="${item.id != model.categoryId}">
                            <option value="${item.id}">${item.name}</option>
                        </c:if>

                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" class="form-control" id="price" name="price" autofocus value='${model.price}'>
            </div>
            <div class="form-group">
                <label>Short description:</label>
                <input type="text" class="form-control" id="shortSummary" name="shortSummary" value="${model.shortDescription}">

            </div>
            <div class="form-group">
                <label for="content">Content:</label>
                <textarea class="form-control" rows="5" id="content" >${model.content}</textarea>
            </div>
            <a href="<c:url value='/admin-product'/>" class="btn btn-success" role="button">
                <<
            </a>
            <button type="submit" class="btn btn-primary" id="btn">
                Update
            </button>
            <a class="btn btn-danger" role="button" href="<c:url value='/api-admin-product?action=delete&id=${model.id}'/>" >Delete</a>
        </form>
    </div>
</div>
</body>
</html>
