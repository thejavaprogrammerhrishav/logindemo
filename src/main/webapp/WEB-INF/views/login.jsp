<!doctype html>
<%@page language="java" contentType="text/html; ISO-8859-1" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="include.jsp" %>
    <title>Login Page</title>
</head>
<body>
<div class="container text-center">
    <div class="container">
        <div class="col-md-4 offset-md-4">
            <div class="card mt-5 mb-5">
                <div class="card-body">
                    <form method="post" action="login" modelAttribute="login">
                        <div class="form-group">
                            <label for="username">Email address</label>
                            <input type="text" class="form-control" id="username" name="username"
                                   aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                        <a href="signup" class="btn btn-outline-success">Sign Up</a>
                        <a href="add" class="btn btn-outline-danger px-5">Values</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>