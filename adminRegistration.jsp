<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>

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
            <h1 class="text-center login-title">REGISTRATION</h1>
            <div class="account-wall">
                <img class="profile-img" src="imgg1234.png" align="center" alt="">
                <s:form class="form-signin" method="post" action="saveUser" modelAttribute="user">
                 
                <s:input class="form-control" path="userid" placeholder="UserId" required="true" autofocus="true"/>
                <s:password class="form-control" path="password" placeholder="Password" required="true"/>
                <!-- <label for="sel1">Role:</label>
                   <select class="form-control" id="sel1" name="role">
                    <option value=" "></option>
                     <option value="maker">MAKER</option>
                         <option value="checker">CHECKER</option>
                                 </select>
                                 <br> -->
                                
                <%-- <s:select class="form-control" path="roleid">
                 <s:option value=""></s:option>
                 
                 <s:option value="1" label="Admin"></s:option>
                   <s:option value="2" label="User"></s:option>
                         
                    </s:select>
                 --%>   
                 <input type="checkbox" name="role0" value="ROLE_USER">USER
                 <input type="checkbox" name="role0" value="ROLE_ADMIN">ADMIN
                 
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Register</button>
                    
                   <h5 style="color:red">${error}</h5>
               </s:form>
               </div>
               </div>
               
    </div>
</div>

</body>
</html>
