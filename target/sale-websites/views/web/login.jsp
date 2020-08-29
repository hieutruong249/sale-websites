<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/26/2020
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-user"/>
<c:url var="adminURL" value="/admin"/>
<c:url var="homeURL" value="/trang-chu"/>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/template/web/css/login.css'/> ">
</head>
<body>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="fadeIn first">
            <img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png"
                 style="height: 50px; width: 50px" id="icon" alt="User Icon"/>
                <br><small id="errMessage" style="color: firebrick"></small>
        </div>

        <!-- Login Form -->
        <form id="frmLogin"/>
            <input type="text" id="login" class="fadeIn second" name="username" placeholder="username">
            <input type="text" id="password" class="fadeIn third" name="password" placeholder="password">
            <input type="hidden" name="type" value="login">
            <input type="button" id="btnLogin" class="fadeIn fourth" value="Log In">
        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
        </div>

    </div>
</div>

<script>
    $('#btnLogin').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmLogin').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
            console.log(data);
        })

        login(data);
    })

    function login(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result){
                console.log(result);
                if (result === 1){
                    location.replace('${adminURL}');
                }else if (result === 2){
                    location.replace('${homeURL}');
                }
                else {
                    $('#errMessage').text('Username or password is wrong!!!');
                }

            },
            error: function (result){
                console.log(result);
            }
        })
    }
</script>
</body>
</html>
