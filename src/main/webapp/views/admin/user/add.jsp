<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/29/2020
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-user"/>
<c:url var="urlList" value="/admin-user"/>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="card">
    <div class="card-header">
        <h5 class="card-title">Add User</h5>
    </div>
    <div class="card-body">
        <form id="frmAdd">
            <input type="hidden" name="type" value="register">
            <div class="form-group">
                <label for="username">Username: </label>
                <input type="text" class="form-control" id="username" name="username" autofocus>
            </div>
            <div class="form-group">
                <label for="username">Password: </label>
                <input type="text" class="form-control" id="password" name="password" autofocus>
            </div>
            <div class="form-group">
                <label for="fullname">Fullname: </label>
                <input type="text" class="form-control" id="fullname" name="fullname" autofocus>
            </div>
            <div class="form-group">
                <label for="roleId">Role id: </label>
                <input type="number" class="form-control" id="roleId" name="roleId" autofocus>
            </div>
            <a href="<c:url value='/admin-user'/>" class="btn btn-success" role="button">
                <<
            </a>
            <button class="btn btn-primary" id="btnAdd">
                <span class="glyphicon glyphicon-ok-circle"></span> Save
            </button>
        </form>
    </div>
</div>


<script>
    $('#btnAdd').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmAdd').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
            console.log(data);
        })

        addUser(data);
    })

    function addUser(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
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
