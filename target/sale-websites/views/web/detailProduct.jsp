<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/26/2020
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>

</head>
<body>
<div class="row" style="margin-top: 50px">
    <div class="col-md-9">
        <h4>${model.name}</h4>

    </div>
    <div class="col-md-3">
        <a class="btn btn-success mr-right" role="button" href="<c:url value='#'/> ">Add to shopcart</a>
    </div>

</div>
<hr>
<div class="row" >

        <div class="col">
            <br>
            <img src="https://cdn.tgdd.vn/Products/Images/42/220654/oppo-a92-tim-400x460-400x460.png" class="card-img-top" alt="..."><br>
        </div>
        <div class="col">
            <h5 class="card-title" style="color: firebrick">Price:  $ ${model.price}</h5>
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
    <form action="<c:url value='/api-comment'/>" method="post">
        <input type="hidden" name="productId" value="${model.id}">
        <div class="form-group">
            <input type="text" class="form-control" id="name" placeholder="Name" name="name">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="comment" name="content" placeholder="Enter commemt" >
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
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

</body>
</html>
