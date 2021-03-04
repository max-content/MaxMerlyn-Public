<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>the code</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    
</head>

<body>
    <div class="container justify-content-center" style="margin-top: 200px;">
        <h1 class="text-center">The Game</h1>
        <div class="d-flex justify-content-center">
            <form action="/code" method="POST" class="shake animated" style="width: 368px;">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend"></div>
                        	<input class="form-control" type="text" name="userInput" style="border-radius: 4px;">
                        <div class="input-group-append">
                        	<button class="btn btn-primary" type="submit" style="margin-left: 10px;border-radius: 4px;">Go!</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <p>
          	<c:out value="${error}"/> 
          	<c:out value="${success}"/>
        </p>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>