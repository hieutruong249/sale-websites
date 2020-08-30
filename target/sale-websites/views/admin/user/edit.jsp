<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/29/2020
  Time: 1:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<c:url var="APIComment_url" value="/api-admin-user"/>
<c:url var="urlList" value="/admin-user"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="card">
    <div class="card-header">
        <h5 class="card-title">Update user</h5>
    </div>
    <div class="card-body">
        <form id="frmEdit">
            <input type="hidden" id="id" name="id" value="${model.id}">
            <div class="form-group">
                <label for="username">Username: </label>
                <input type="text" class="form-control" id="username" name="username" autofocus value="${model.username}">
            </div>
            <div class="form-group">
                <label for="username">Password: </label>
                <input type="text" class="form-control" id="password" name="password" value="${model.password}">
            </div>
            <div class="form-group">
                <label for="fullname">Fullname: </label>
                <input type="text" class="form-control" id="fullname" name="fullname" value="${model.fullname}">
            </div>
            <div class="form-group">
                <label for="roleId">Role id: </label>
                <input type="number" class="form-control" id="roleId" name="roleId" value="${model.roleId}">
            </div>
            <a href="<c:url value='/admin-user'/>" class="btn btn-success" role="button">
                <<
            </a>
            <button class="btn btn-primary" id="btnEdit">
                <span class="glyphicon glyphicon-ok-circle"></span> Update
            </button>
            <button class="btn btn-danger" id="btnDelete">
                <span class="glyphicon glyphicon-ok-circle"></span> Delete
            </button>
        </form>
    </div>
</div>

<script>
    $('#btnEdit').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmEdit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
            console.log(data);
        })

        addUser(data,'PUT');
    })

    $('#btnDelete').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmEdit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
            console.log(data);
        })

        addUser(data,'DELETE');
    })

    function addUser(data,type) {
        $.ajax({
            url: '${APIComment_url}',
            type: type,
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                if (result != 0) {
                    location.replace('${urlList}');
                } else {

                }
            },
            error: function (result) {
                console.log(result);
            }
        })
    }
</script>
</body>
</html>
