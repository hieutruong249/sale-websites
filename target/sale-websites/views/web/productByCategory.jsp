<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/26/2020
  Time: 7:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>

<html>
<head>

</head>
<body>
<div class="row" style="margin-top: 95px">

    <c:if test="${empty listProduct}">
        <div class="row" style="margin-left: 40px">
            <h5>No product...</h5>
        </div>
    </c:if>
    <c:if test="${not empty listProduct}">
        <c:forEach items="${listProduct}" var="item">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="<c:url value='/product?id=${item.id}'/>"><img class="card-img-top" src="${item.image}" alt="image"></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">${item.name}</a>
                        </h4>
                        <h5>$ ${item.price} </h5>
                        <p class="card-text">${item.shortSummary}</p>
                    </div>

                </div>
            </div>
        </c:forEach>
    </c:if>
</div>
</body>
</html>
