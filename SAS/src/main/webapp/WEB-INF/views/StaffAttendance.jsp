<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>AngularJS $http Example</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>

<link href="<c:url value='/static/css/angular.css' />" rel="stylesheet"></link>
<style>
#slabel1, #slabel2, #slabel3, #slabel4 {
	/* background-color: #A0A0A0;CCCCFF */
	background-color: #D6D6EC;
	color: #808080;
	/* font-weight: bold; */
	text-align: center;
	height: 30px;
	font-size: 20px;
}
</style>
</head>
<body ng-app="myApp" class="ng-cloak">

	<div class="generic-container"
		ng-controller="StudentController as ctrl">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">Staff Attendance Form </span>
			</div>
			<div class="formcontainer">
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal">
	
					
						<div class="row">
							<div class="form-group col-md-5">
<!-- 								<label class="col-md-2 control-lable" for="stuClass">Student
									Class:</label> -->
								<div class="col-md-10">
									<select ng-model="stuClass" ng-change="ctrl.change(stuClass)" class="username form-control input-sm" required>

										<!-- You can have ONE default, null selection option. -->
										<option value="">- - Seclect Department - -</option>
										<option value="Class 1">- - Department 1 - -</option>
										<option value="Class 2">- - Department 2 - -</option>
										<option value="Class 3">- - Department 3 - -</option>
										<option value="Class 4">- - Department 4 - -</option>
										<option value="Class 5">- - Department 5 - -</option>
										<option value="Class 6">- - Department 6 - -</option>
										<option value="Class 7">- - Department 7 - -</option>
										<option value="Class 8">- - Department 8 - -</option>

									</select>

								</div>
							</div>
							<div class="form-group col-md-2">
								<div class="form-actions floatRight">
							<input type="submit"
								value="{{!ctrl.student.stuId ? 'GO' : 'Update'}}"
								class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">

						</div>
						</div>
						</div>


				</form>
			</div>
		</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Staff </span>
			</div>
			
			<div class="tablecontainer">
			
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Name</th>
							<th>Department</th>
							<th>Status</th>
							<th>On Leave</th>
<!-- 							<th>Section</th>
							<th>Status</th> -->
							<!-- <th>Section</th>
							<th>Mobile</th> -->
							<!-- <th>Email</th> -->
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.students">
						

						
							<!-- <td><span ng-bind="u.stuId"></span></td> -->
							<td><span ng-bind="u.stuName"></span></td>
							<td><span ng-bind="u.stuFatherName"></span></td>
							<!-- <td><span ng-bind="u.stuDob |  date:'MM/dd/yyyy'"></span></td>
							<td><span ng-bind="u.stuClass"></span></td> -->
						<!-- 	<td><span ng-bind="u.stuSection"></span></td> -->
					<!-- 		<td><span ng-bind="u.stuMobile "></span></td> -->
						<!-- 	<td>
								<button type="button" ng-click="ctrl.edit(u.stuId)"
									class="btn btn-success custom-width">Edit</button>
								<button type="button" ng-click="ctrl.remove(u.stuId)"
									class="btn btn-danger custom-width">Remove</button>
							</td> -->
							<td><input type="radio" name="response" ng-model="ad"
								value="true" /><span> P </span> <input type="radio"
								name="response" ng-model="adf" /><span> A </span></td>
<td><input type="radio" name="response" ng-model="ad"
								value="true" /><span> P </span></td>
						</tr>
					</tbody>
					</table>

									<div class="row">


							<div class="form-group col-md-6">


								<div class="col-md-6">
								<!-- 	<input type="date" ng-model="ctrl.student.stuDob" id="stuDob"
										class="text-format form-control input-sm dateclass placeholderclass" ng-attr-placeholder="$(this).removeClass('placeholderclass')"
										placeholder="Enter DOB" /> -->
							<input type="date" ng-model="ctrl.student.stuDob" id="stuDob" placeholder="Date" ng-onClick="$(this).removeClass('placeholderclass')"
										class="text-format form-control input-sm dateclass placeholderclass">	
										
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuDob.$error.required">This is a
											required field</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
<!-- 								<label class="col-md-2 control-lable" for="stuGender">Student
									Gender:</label> -->
								<div class="col-md-6">
					<button type="button" ng-click="ctrl.save(u.stuId)"
									class="btn btn-success custom-width">save</button>

								</div>
							</div>
						</div>						
				
			</div>
		</div>
		
		
				<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Staff after Attendance</span>
			</div>
			
			<div class="tablecontainer">
			
				<table class="table table-hover">
					<thead>
						<tr>
						<th width="5%"></th>
							<th>Name</th>
							<th>Department</th>
							<!-- <th>Section</th> -->
							<th>Status</th>
							
							<!-- <th>Section</th>
							<th>Mobile</th> -->
							<!-- <th>Email</th> -->
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.students">
						<td><input type="checkbox" ng-model="checkboxModel"></td>
							<label> 
							</label>
							<!-- <td><span ng-bind="u.stuId"></span></td> 
							<td><span ng-bind="u.stuName"></span></td>
							<td><span ng-bind="u.stuFatherName"></span></td>
							<td><span ng-bind="u.stuDob |  date:'MM/dd/yyyy'"></span></td>-->
							<td><span ng-bind="u.stuClass"></span></td>
							<td><span ng-bind="u.stuSection"></span></td>
					<!-- 		<td><span ng-bind="u.stuMobile "></span></td> -->

							<td><input type="radio" name="response" ng-model="ad"
								value="true" /><span> P </span> <input type="radio"
								name="response" ng-model="adf" /><span> A </span></td>

							<td>
								<button type="button" ng-click="ctrl.update(u.stuId)"
									class="btn btn-success custom-width">Update</button>

							</td>


						</tr>
					</tbody>
					</table>

						
				
			</div>
		</div>
		

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/static/js/app.js'/>"></script>
	<script src="<c:url value='/static/js/service/student_service.js'/>"></script>
	<script
		src="<c:url value='/static/js/controller/student_controller.js'/>"></script>
</body>
</html>