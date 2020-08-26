<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html lang="en">
<head>

</head>
<body>
<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="d-block img-fluid" src="https://cdn.tgdd.vn/2020/08/banner/800-300-800x300-28.png" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block img-fluid" src="https://cdn.tgdd.vn/2020/08/banner/800-300-800x300-27.png" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block img-fluid" src="https://cdn.tgdd.vn/2020/08/banner/800-300-800x300-31.png" alt="Third slide">
        </div>

    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="row">

    <c:forEach items="${listProduct}" var="item">
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="<c:url value='/product?id=${item.id}'/>"><img class="card-img-top" src="${item.image}" alt="image"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">${item.name}</a>
                    </h4>
                    <h5>$ ${item.price} </h5>
                    <p class="card-text">${item.shortDescription}</p>
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

        </div>
    </div>


</div>
<!-- /.row -->

</body>

</html>

