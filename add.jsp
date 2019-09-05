<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>

 <msg:url value="/resources/sty.css" var="mainCss1"/>
 <msg:url value="/resources/CustomerDetailsValidate.js" var="mainjs"/>
 <script type="text/javascript" src="${mainjs}"></script>

<link rel="stylesheet" href="${mainCss1}">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<%@include file="navbar.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<body>
<div class="container">
    <div class="row">
  
        <div class="col-sm-3 col-md-4 col-md-offset-3" style="margin-left:0px" align="left">
        
            <h1 class="text-center login-title">Customer Details</h1>
            <div class="account-wall">
              
                <s:form class="form-signin" method="post" action="saveCustomer" modelAttribute="customer2">
                <s:label path="customerCode">CUSTOMER CODE</s:label>
                <s:input path="customerCode" class="form-control" id="code" placeholder="Customer Code" />
                <s:label path="customerName">NAME</s:label>
                <s:input path="customerName" class="form-control" id="cname" placeholder="Customer Name" />
               
                <s:label path="customerAddress">ADDRESS 1</s:label>
                 <s:textarea class="form-control" rows="5" id="caddress" path="customerAddress" ></s:textarea>
                
                
                <%--  <s:label path="customerAddress2">ADDRESS 2</s:label>
                 <s:textarea class="form-control" rows="5" id="caddress2" path="customerAddress2"></s:textarea> --%>
               <s:label path="customerPinCode">PIN</s:label>
                <s:input path="customerPinCode" class="form-control"  id="pin" placeholder="pin"/>
                 <s:label path="email">EMAIL</s:label>
                <s:input path="email" class="form-control" id="email" pattern='\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*' placeholder="Email" />
                 <s:label path="contactNo">CONTACT NUMBER:</s:label>
                <s:input path="contactNo" class="form-control" id="contactno" pattern='[7-9]{1}[0-9]{9}' placeholder="Contact no" />
                <%--  <s:label path="primaryContactPerson">PRIMARY CONTACT PERSON</s:label>
                <s:input path="primaryContactPerson" class="form-control" id="cperson" placeholder="Contact person"/> --%>
                 <%-- <s:label path="flag">FLAG</s:label>
                <s:select class="form-control" path="flag" id="flag" >
                 <s:option value=""></s:option>
                 
                 <s:option value="A" label="Active Flag"></s:option>
                   <s:option value="I" label="Inactive Flag"></s:option>
                         
                    </s:select>
                  --%>  
              <br>
       
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="b1" value="add" onclick="return validateDetails()">ADD DETAILS</button>
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
},10000); 
</script>

<div id="views" class="col-sm-6 col-md-4 col-md-offset-4" style="margin-left:5px" align="left">
<jsp:include page="view2.jsp"></jsp:include>

</div>
</div>
</div>

</body>
</html>
