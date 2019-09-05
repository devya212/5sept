<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg"%>
<msg:url value="/resources/sty.css" var="mainCss"/>
<link rel="stylesheet" href="${mainCss}">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in</h1>
            <div class="account-wall">
                <img class="profile-img" src="imgg1234.png" align="center" alt="">
                <form class="form-signin" method="post" action="j_spring_security_check">
                 
                <input type="text" class="form-control" name="j_username" placeholder="UserId" required autofocus>
                <input type="password" class="form-control" name="j_password" placeholder="Password" required>
                <!-- <label for="sel1">Role:</label>
                   <select class="form-control" id="sel1" name="role">
                    <option value=" "></option>
                     <option value="maker">MAKER</option>
                         <option value="checker">CHECKER</option>
                                 </select>
                                 <br> -->
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
                    <a href="Registration">Registration</a>
                   <h5 style="color:red">${error}</h5>
               </form>
               </div>
               </div>
               
    </div>
</div>

</body>
</html>
