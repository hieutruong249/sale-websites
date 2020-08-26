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
                    <p class="card-text">${item.shortDescription}</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
        </div>
    </c:forEach>

    <div class="col-lg-4 col-md-6 mb-4">
        <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
                <h4 class="card-title">
                    <a href="#">Item One</a>
                </h4>
                <h5>$24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam
                    aspernatur!</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
            </div>
        </div>
    </div>

<%--    <div class="col-lg-4 col-md-6 mb-4">--%>
<%--        <div class="card h-100">--%>
<%--            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
<%--            <div class="card-body">--%>
<%--                <h4 class="card-title">--%>
<%--                    <a href="#">Item One</a>--%>
<%--                </h4>--%>
<%--                <h5>$24.99</h5>--%>
<%--                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam--%>
<%--                    aspernatur!</p>--%>
<%--            </div>--%>
<%--            <div class="card-footer">--%>
<%--                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

</div>
</body>
</html>
