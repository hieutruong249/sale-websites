<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-category"/>
<c:url var="urlList" value="/admin-category"/>
<html>
<head>

</head>
<body>

<div class="card">
    <div class="card-header">
        <h5 class="card-title">Add category</h5>
    </div>
    <div class="card-body">
        <form id="frmAdd">
            <div class="form-group">
                <label for="txtName">Name category</label>
                <input type="text" class="form-control" id="txtName" name="name" autofocus>
            </div>
            <a href="<c:url value='/admin-category'/>" class="btn btn-success" role="button">
                <<
            </a>
            <button class="btn btn-primary" id="btnAdd">
                 Save
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
        })
        add(data);
    })

    function add(data) {
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
