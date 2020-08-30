<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/26/2020
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIComment_url" value='/api-comment'/>
<c:url var="APIShopcart" value='/shopcart'/>
<html>
<head>

</head>
<body>
<div class="row" style="margin-top: 50px">
    <div class="col-md-9">
        <h4>${model.name}</h4>
    </div>
    <div class="col-md-3">
        <form id="frmShopcart">
            <input type="hidden" id="id" name="id" value="${model.id}">
            <button id="btnAddShopcart" class="btn btn-success mr-right">Add to shopcart</button>
        </form>
    </div>

</div>
<hr>
<div class="row">

    <div class="col">
        <br>
        <img src="https://cdn.tgdd.vn/Products/Images/42/220654/oppo-a92-tim-400x460-400x460.png" class="card-img-top"
             alt="..."><br>
    </div>
    <div class="col">
        <h5 class="card-title" style="color: firebrick">Price: $ ${model.price}</h5>
        <p class="card-text">Manufacturer: ${model.manufacturer}</p>
        <p class="card-text"><small class="text-muted">Views: ${model.views}</small></p>
    </div>

</div>
<div style="margin-top: 30px">
    ${model.content}
</div>
<hr>
<h3>Comment</h3>
<div>
    <form id="frmComment">
        <input type="hidden" name="productId" value="${model.id}">
        <div class="form-group">
            <input type="text" class="form-control" id="name" placeholder="Name" name="name">
        </div>
        <div class="form-group">
            <textarea class="form-control" id="comment" name="content" rows="3" placeholder="Enter commemt"></textarea>
        </div>
        <div class="row">
            <small style="color: limegreen; margin-bottom: 17px; margin-left: 20px" id="txtResult"></small>
        </div>
        <button id="btnAdd" class="btn btn-primary">Submit</button>
    </form>
</div>

<br><br>

<c:forEach items="${listComment}" var="item">
    <div class="card">
        <div class="card-header">
            <h6>${item.name}</h6>
        </div>
        <div class="card-body">
            <p>${item.content}</p>
            <br>
            <small> - ${item.createdDate}</small>
        </div>
    </div>
    <br>
</c:forEach>

<script>
    $('#btnAdd').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmComment').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        })

        add(data);
    })

    $('#btnAddShopcart').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmShopcart').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        })

        addShopcart(data);
    })

    function add(data) {
        $.ajax({
            url: '${APIComment_url}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                if (result != 0) {
                    $('#txtResult').text("Comment successful!")
                } else {

                }
            },
            error: function (result) {
                console.log(result);
            }
        })
    }

    function addShopcart(data) {
        $.ajax({
            url: '${APIShopcart}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                if (result != 0) {
                    alert('Added to shopcart!');
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
