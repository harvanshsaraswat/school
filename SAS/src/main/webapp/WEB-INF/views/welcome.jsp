<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Welcome</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>

<link href="<c:url value='/static/css/angular.css' />" rel="stylesheet"></link>
<style>
#slabel1, #slabel2, #slabel3, #slabel4 {
	background-color: #FF33FF;
	color: #0000CC;
	font-weight: bold;
	text-align: center;
	height: 30px;
	font-size: 20px;
}
</style>
</head>
<body >

	<div class="generic-container" >
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">Main Page </span>
			</div>
			<div class="formcontainer">
			
				



						
						
						<div class="row">
							
							<div class="form-group col-md-12">
								<a href="/SAS/studentIndex" >Student Module:</a>
								

							</div>


					</div>	
					
					<div class="row">
							
							<div class="form-group col-md-12">
								<a href="/SAS/employeeIndex" >Staff Module:</a>
								

							</div>


					</div>
					
					<div class="row">
							
							<div class="form-group col-md-12">
								<a href="/SAS/studentAttendance" >Student Attendance Module:</a>
								

							</div>


					</div>
					<div class="row">
							
							<div class="form-group col-md-12">
								<a href="/SAS/employeeAttendance" >Staff Attendance Module:</a>
								

							</div>


					</div>
					</div>
					</div>	
	</div>

	<%-- <script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/static/js/app.js'/>"></script> --%>
</body>
</html>