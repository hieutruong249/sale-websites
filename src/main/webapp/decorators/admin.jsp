<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/25/2020
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
    <title><dec:title default="Admin page"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
<!-- Navigation -->
<%@ include file="/common/web/header.jsp" %>
<div class="container">
    <!-- menu -->
    <%@ include file="/common/admin/menu.jsp" %>

    <div style="margin-top: 20px">
        <dec:body/>
    </div>

    <!-- Footer -->
    <%--<%@ include file="/common/web/footer.jsp" %>--%>
</div>


<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
