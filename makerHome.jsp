<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <%@include file="navbar.jsp" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
</head>
<body style="background-size:cover;height:100%;width:100%;background-image:url(vg1.jpg);">

 <c:if test="${not empty addmsg}">
   <script type="text/javascript"> alert("${addmsg}");</script>
    </c:if>
    <c:if test="${not empty delmsg}">
   <script type="text/javascript"> alert("${delmsg}");</script>
    </c:if>
 
 <c:if test="${not empty updatemsg}">
   <script type="text/javascript"> alert("${updatemsg}");</script>
    </c:if>
  
</body>
</html>