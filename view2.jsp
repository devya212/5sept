<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="all" />
<title>Insert title here</title>
</head>
<body>

<br>
<br>
<br>

<table class="display" id="example" style="width: 100%;">

        <thead>

            <tr>
				
				<th>Code</th>
                <th>Name</th>
                <th>Address</th>
                <th>Pin code</th>
                <th>Email address</th>
                <th>Contact no.</th>
                <th>Create Date</th>
                <th>Created By</th>
                <th>Modified Date</th>
                
            </tr>

        </thead>

        <tbody>

			<c:forEach var="customer" items="${list}">
            <tr>

                              <td>${customer.customerCode}</td>
								<td>${customer.customerName}</td>
								<td>${customer.customerAddress}</td>
								<td>${customer.customerPinCode}</td>
								<td>${customer.email}</td>
								<td>${customer.contactNo}</td>
								<td>${customer.createDate}</td>
								<td>${customer.createdBy}</td>
								<td>${customer.modifiedDate}</td>
								
            </tr>
			</c:forEach>
            

         

        </tbody>

    </table>

<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {

    var table = $('#example').DataTable();

 

    $('#example tbody').on( 'click', 'tr', function () {

        if ( $(this).hasClass('selected') ) {

            $(this).removeClass('selected');

        }

        else {

            table.$('tr.selected').removeClass('selected');

            $(this).addClass('selected');

        }

    } );

 

    $('#button').click( function () {

        table.row('.selected').remove().draw( false );

    } );

} );
</script>
</body>
</html>