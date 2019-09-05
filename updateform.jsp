<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="navbar.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
</head>
<body>
<div class="container">
    <div class="row">
        <!-- <div class="col-sm-6 col-md-4 col-md-offset-4"> -->
           <div class="col-sm-3 col-md-4 col-md-offset-3" style="margin-left:0px;margin-top:40px" align="left"> 
            <div class="account-wall">
               
                <s:form class="form-signin" method="post" action="updateCustomer" modelAttribute="customer2">
                 <s:label path="customerCode">ENTER CUSTOMER CODE FOR DETAILS UPDATION:</s:label>
                <s:input class="form-control" id="code" path="customerCode" placeholder="Customer Code"/>
                 <br>
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="b1" value="update" >SUBMIT</button>
                </s:form>
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