<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/26/2020
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>

</head>
<body>
<div class="row">
    <div class="col-md-10"></div>
    <div class="col-md-2">
        <a class="btn btn-success mr-right" role="button" href="<c:url value='/admin-product?action=add'/> ">Add product</a>
    </div>
</div>
<div class="row" style="margin-top: 30px">

    <c:forEach items="${list}" var="item">
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="<c:url value='/admin-product?action=edit&id=${item.id}'/>"><img class="card-img-top" src="${item.image}" alt="image"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">${item.name}</a>
                    </h4>
                    <h5>${item.price} đồng</h5>
                    <p class="card-text">${item.shortSummary}</p>
                </div>
                <div class="card-footer">
                    <a class="btn btn-primary mr-right" role="button" href="<c:url value='/admin-product?action=edit'/> ">Add product</a>
                </div>
            </div>
        </div>
    </c:forEach>



</div>
</body>
</html>
