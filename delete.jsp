<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="navbar.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!-- <link rel="stylesheet" href="sty.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<body>
<div class="container">
    <div class="row">
        <!-- <div class="col-sm-6 col-md-4 col-md-offset-4"> -->
          <div class="col-sm-3 col-md-4 col-md-offset-3" style="margin-left:0px;margin-top:40px" align="left"> 
            <div class="account-wall">
               <!--  <img class="profile-img" src="imgg1234.png" align="center" alt=""> -->
                <s:form class="form-signin" method="post" action="deleteCustomer" modelAttribute="customer2">
                 <s:label path="customerCode">ENTER CUSTOMER CODE FOR DETAILS DELETION:</s:label>
                <s:input path="customerCode" class="form-control" id="code" placeholder="Customer Code"/>
                 <br>
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="b1" value="delete">SUBMIT</button>
                <!-- <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label> -->
               <!--  <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span> -->
                </s:form>
            <!-- </div>
            <a href="#" class="text-center new-account">Create an account </a>
        </div> -->
    </div>
    </div>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script type="text/javascript">
setInterval(
function ()
{
$.post('viewall', function(data) {
      $('#views').html(data);
    });
}, 10000); 
</script>
    
    <div id="views" class="col-sm-6 col-md-4 col-md-offset-4" style="margin-left:10px" align="left">
<%-- <jsp:include page="view2.jsp"></jsp:include> --%>

</div>
    
    </div>
</div>

</body>
</html>