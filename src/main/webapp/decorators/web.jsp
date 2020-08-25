<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><dec:title default="Trang chủ"/></title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="<c:url value='/template/web/css/shop-homepage.css'/>" rel="stylesheet">


</head>

<body>

<!-- Navigation -->
<%@ include file="/common/web/header.jsp" %>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <%@ include file="/common/web/menu.jsp" %>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
            <dec:body/>
        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<%@ include file="/common/web/footer.jsp" %>


<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
