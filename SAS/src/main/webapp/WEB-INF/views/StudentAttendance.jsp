<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Student Attendance Management</title>


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

	<div class="generic-container">
		<div class="panel panel-default"   ng-controller="StudentController as ctrl">
			<div class="panel-heading">
				<span class="lead">Student Attendance Form </span>
			</div>
			<div class="formcontainer" >

				<form ng-submit="ctrl.submit1()" name="myForm1"
					class="form-horizontal">

					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							
								<select ng-model="ctrl.studentClassSectionAttendance.stuAtndClass" ng-change="ctrl.change(stuAtndClass)"
									class="username form-control input-sm" required>

									<!-- You can have ONE default, null selection option. -->
									<option value="">- - Seclect Class - -</option>
									<option value="Class 1">- - Class 1 - -</option>
									<option value="Class 2">- - Class 2 - -</option>
									<option value="Class 3">- - Class 3 - -</option>
									<option value="Class 4">- - Class 4 - -</option>
									<option value="Class 5">- - Class 5 - -</option>
									<option value="Class 6">- - Class 6 - -</option>
									<option value="Class 7">- - Class 7 - -</option>
									<option value="Class 8">- - Class 8 - -</option>

								</select>

						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<select ng-options="o as o for o in ctrl.sections"
									ng-model="ctrl.studentClassSectionAttendance.stuAtndSection" class="username form-control input-sm"
									required>
									<option value="">-- Select Section --</option>
								</select>

						</div>
						</div>
						<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							
								<input type="date" ng-model="ctrl.studentClassSectionAttendance.stuAtndDate" id="stuAtndDate"
									placeholder="Date"
									ng-click="ctrl.removeClass('stuAtndDate')"
									class=" text-format form-control input-sm dateclass placeholderclass">

								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.stuDob.$error.required">This is a
										required field</span>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
									<input type="text" ng-model="ctrl.studentClassSectionAttendance.stuAtndEmpId"
										 class="username form-control input-sm"
										placeholder="emp id" />
							</div>
							
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
							
								<input type="submit" value="GO "
									class="btn btn-primary btn-sm" >

						</div>
					</div>










				</form>

			
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading" >
					<span class="lead">List of Students </span>
					<div class="form-actions floatRight">Class: {{ctrl.studentClassSectionAttendance.stuAtndClass}}   Section:{{ctrl.studentClassSectionAttendance.stuAtndSection}}</div>
				</div>

				<div class="tablecontainer">
					<form ng-submit="ctrl.submitAttendance()" name="myAttendanceForm"
						class="form-horizontal">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name <p>
									<input type="text" ng-model="searchText['stuName']"
										style="width: 50px;" />
								</p>
								</th>
									<th>Date</th>
									<th>Emp</th>
									<!-- <th>Class</th>
									<th>Section</th> -->
									<th>Status</th>
									<!-- <th>Section</th>
							<th>Mobile</th> -->
									<!-- <th>Email</th> -->
									<th width="20%"></th>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="u in ctrl.studentsAttendance | filter: searchText">
									<td><span ng-bind="u.stuId"></span> </td>
									<td><span ng-bind="u.stuName"></span> </td>		
									<td><span ng-bind="u.attendanceDate |  date:'MM/dd/yyyy'"></span></td>	
									<td><span ng-bind="u.empId"></span> </td>						
							
									<td>
									
									<select ng-model="ctrl.studentsAttendance[$index].stuStatus" class="form-control input-sm" required>

									<!-- You can have ONE default, null selection option. -->
									<!-- <option value="">- - Seclect Status - -</option> -->
									<option value="Present">Present</option>
									<option value="Absent">Absent</option>
									</select>
									</td>
								</tr>
							</tbody>
						</table>
					
					<div class="row">


						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<input type="submit" value="Save Attendance"
								class="btn btn-primary btn-sm" />

							</div>
						</div>
					</div>
					</form>

				</div>
			</div>
			
			
		</div>

		<div class="panel panel-default" >
			<!-- Default panel contents -->
			<div class="panel-heading" >
				<span class="lead">List of Students after Attendance</span>
				<div class="form-actions floatRight">RowLimit:	<input type="number" step="1" min="1" ng-model="ctrl.rowLimit"/></div>
			</div>
			
			<div class="tablecontainer">
			
				<table class="table table-hover">
					<thead>
						<tr>
							<th width="5%"></th>
							<th>Name <input type="text" ng-model="searchText2['stuName']"
										style="width: 50px;" /></th>
							<!-- <th>Class</th>
							<th>Section</th> -->
							<th>Status</th>
							
							<!-- <th>Section</th>
							<th>Mobile</th> -->
							<!-- <th>Email</th> -->
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="studentAttendance in ctrl.studentsAttendanceAfterSave | filter: searchText2 | limitTo:ctrl.rowLimit">
						
							<td><input type="checkbox" ng-model="studentAttendance.stuAttendaceId"></td>
							<td><span ng-bind="up.stuId"></span></td>
							
							
							<td><select ng-model="studentAttendance.stuStatus" class="form-control input-sm" >

									<!-- You can have ONE default, null selection option. -->
									<option value="">- - Seclect Status - -</option>
									<option value="Present">Present</option>
									<option value="Absent">Absent</option>
									</select>
								</td>

							<td>
								<button type="button" ng-click="ctrl.updateAttendance(studentAttendance)"
									class="btn btn-success custom-width">Update</button>

							</td>


						</tr>
					</tbody>
				</table>

</div>

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