<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/30/2020
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/pay"/>

<html>
<head>
    <title>Shop cart</title>
</head>
<body>
<div class="container" style="margin-top: 30px">
    <div class="row">
        <div class="col-md-9"><h2>Shop cart</h2></div>
        <div class="col-md-3">
            <form id="frmShopcart">
                <button id="btnPay" class="btn btn-success mr-right" <c:if test="${not empty message}">disabled</c:if> >Payment orders</button>
            </form>
        </div>
    </div>
    <c:if test="${empty message}">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>Name product</th>
                <th>Price</th>
                <th>Amount</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listProduct}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.price}</td>
                    <td>${item.count}</td>
                    <td>
                        <a class="btn btn-primary mr-right" role="button" href="<c:url value='/shopcart?action=edit&id=${item.id}'/> ">Edit</a>
                    </td>
                </tr>
            </c:forEach>


            </tbody>
        </table>
        <div class="row">
            <div class="col-md-9"></div>
            <div class="col-md-3"><h5>Total: $${total}</h5></div>
        </div>
    </c:if>
    <c:if test="${not empty message}">
        <div class="row" style="margin-left: 40px">
            <h5>No product...</h5>
        </div>
    </c:if>
</div>

<script>
    $('#btnPay').click(function (e) {
        e.preventDefault();
        alert('This function is not available!')
    })
</script>
</body>
</html>
