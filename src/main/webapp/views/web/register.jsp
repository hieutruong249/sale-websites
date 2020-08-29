<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/26/2020
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-user"/>
<c:url var="loginURL" value="/login"/>
<html>
<head>
    <title>Register</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
          id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<div class="container" style="margin-top: 80px">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Register</div>
                <div class="card-body">

                    <form class="form-horizontal" id="frmRegister">
                        <input type="hidden" name="type" value="register">
                        <div class="form-group">
                            <label for="name" class="cols-sm-2 control-label">Your Name</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa"
                                                                       aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="fullname" id="name"
                                           placeholder="Enter your Name"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="cols-sm-2 control-label">Your Email</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="email" id="email"
                                           placeholder="Enter your Email"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Username</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa"
                                                                       aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="username" id="username"
                                           placeholder="Enter your Username"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="password" id="password"
                                           placeholder="Enter your Password"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="confirm" id="confirm"
                                           placeholder="Confirm your Password"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <button type="button" class="btn btn-primary btn-lg btn-block login-button"
                                    id="btnRegister">Register
                            </button>
                        </div>
                        <div class="login-register">
                            <a href="<c:url value="/user?action=login"/>">Login</a>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
<script>
    $('#btnRegister').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#frmRegister').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        })
        delete data.confirm;
        addUser(data);
    })

    function addUser(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result){
                console.log(result);
                location.replace('${loginURL}');
            },
            error: function (result){
                console.log(result);
            }
        })
    }
</script>
</body>
</html>
