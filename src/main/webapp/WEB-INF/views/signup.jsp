<%@ page language="java" contentType="text/html; ISO-8859-1" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="include.jsp" %>
    <title>Sign up</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <form action="signup" method="post" modelAttribute="user">
                <div class="card">
                    <div class="card-header text-center">
                        <h2>Sign Up</h2>
                    </div>
                    <%
                        if(session.getAttribute("error")!=null){
                            String s= (String) session.getAttribute("error");

                    %>
                    <div class="alert alert-danger" role="alert">
                        <h4><%=s%></h4>
                    </div>
                    <%
                        }
                        session.removeAttribute("error");
                    %>
                    <div class="card-body">

                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="email" class="form-control" id="username" name="username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                    </div>
                    <div class="card-footer">
                        <input type="submit" class="btn btn-primary" value="Sign up">
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>