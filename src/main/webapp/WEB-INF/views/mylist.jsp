<%@ page import="java.util.List" %>
<%@page contentType="text/html; ISO-8859-1" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="include.jsp" %>
    <title>List Demo</title>
</head>
<body>
<div class="container">
    <form action="add" method="post" modelAttribute="val">
        <div class="form-group">
            <label for="val">Enter Value</label>
            <input type="text" class="form-control" id="val" name="val" value="test value">
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn btn-success" value="Add Value">
        </div>
    </form>

    <div class="container text-center">
        <%
            List<String> list = (List<String>) session.getAttribute("list");
        %>
        <ul>
            <c:forEach items="<%=list %>" var="item">
                <li>${item}</li>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>