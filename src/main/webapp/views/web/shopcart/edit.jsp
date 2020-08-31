<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/30/2020
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="updateShopcart_url" value="/shopcart"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container" style="margin-top: 30px">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">Edit shopcart</h5>
        </div>
        <div class="card-body">
            <form id="frmEdit">
                <input name="id" value='${model.id}' type="hidden">

                <div class="form-group">
                    <label for="name">Name product:</label>
                    <input class="form-control" id="name" name="name" value='${model.name}' type="text" readonly>
                </div>
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input class="form-control" id="price" name="price" value='${model.price}' type="number" readonly>
                </div>
                <div class="form-group">
                    <label for="count">Amount:</label>
                    <input class="form-control" id="count" name="count" value='${model.count}' type="number">

                </div>
                <a href="<c:url value='/shopcart'/>" class="btn btn-success" role="button">
                    <<
                </a>
                <button class="btn btn-primary" id="btnUpdate">
                    Update
                </button>
                <button class="btn btn-danger" id="btnDelete">
                    Delete
                </button>
            </form>
        </div>
    </div>
</div>
<br>

<script>
    $('#btnUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmEdit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        })

        update(data,'PUT');
    })

    $('#btnDelete').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmEdit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        })

        update(data,'DELETE');
    })

    function update(data, type) {
        $.ajax({
            url: '${updateShopcart_url}',
            type: type,
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                if (result != 0) {
                    location.replace('${updateShopcart_url}');
                } else {
                    console.log(result);
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
