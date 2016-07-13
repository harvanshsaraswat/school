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
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">Student Attendance Form </span>
			</div>
			<div class="formcontainer" ng-controller="StudentController as ctrl">

				<form ng-submit="ctrl.submit1()" name="myForm1"
					class="form-horizontal">

					<div class="row">
						<div class="form-group col-md-5">
							<!-- 								<label class="col-md-2 control-lable" for="stuClass">Student
									Class:</label> -->
							<div class="col-md-8">
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
						</div>
						<div class="form-group col-md-5">
							<!-- 								<label class="col-md-2 control-lable" for="stuSection">Student
									Section:</label> -->
							<div class="col-md-8">
								<select ng-options="o as o for o in ctrl.sections"
									ng-model="ctrl.studentClassSectionAttendance.stuAtndSection" class="username form-control input-sm"
									required>
									<option value="">-- Select Section --</option>
								</select>

							</div>
						</div>
						
						<div class="col-md-3">
								<!-- 	<input type="date" ng-model="ctrl.student.stuDob" id="stuDob"
										class="text-format form-control input-sm dateclass placeholderclass" ng-attr-placeholder="$(this).removeClass('placeholderclass')"
										placeholder="Enter DOB" /> -->
								<input type="date" ng-model="ctrl.studentClassSectionAttendance.stuAtndDate" id="stuAtndDate"
									placeholder="Date"
									ng-click="ctrl.removeClass('stuAtndDate')"
									class="text-format form-control input-sm dateclass placeholderclass">

								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.stuDob.$error.required">This is a
										required field</span>
								</div>
							</div>
							<div class="col-md-3">
									<input type="text" ng-model="ctrl.studentClassSectionAttendance.stuAtndEmpId"
										 class="form-control input-sm"
										placeholder="emp id" />
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

			
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading" >
					<span class="lead">List of Students </span>
				</div>

				<div class="tablecontainer">
					<form ng-submit="ctrl.submitAttendance()" name="myAttendanceForm"
						class="form-horizontal">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name</th>
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
								<tr ng-repeat="u in ctrl.studentsAttendance">
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


						
						<div class="form-group col-md-12">
							<!-- 								<label class="col-md-2 control-lable" for="stuGender">Student
									Gender:</label> -->
							<div class="col-md-6">
								<input type="submit" value="Save Attendance"
								class="btn btn-primary btn-sm" />

							</div>
						</div>
					</div>
					</form>

				</div>
			</div>
			
			</div>
		</div>

		<div class="panel panel-default" >
			<!-- Default panel contents -->
			<div class="panel-heading" >
				<span class="lead">List of Students after Attendance</span>
			</div>
<div class="formcontainer" ng-controller="StudentController as ctrll">
			<div class="tablecontainer">

				<table class="table table-hover">
					<thead>
						<tr>
							<th width="5%"></th>
							<th>Name</th>
							<th>Class</th>
							<th>Section</th>
							<th>Status</th>
							<!-- <th>Section</th>
							<th>Mobile</th> -->
							<!-- <th>Email</th> -->
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="up in ctrll.studentsAttendanceAfterSave">
							<td><input type="checkbox" ng-model="checkboxModel"></td>
							<label> </label>
							<!-- <td><span ng-bind="up.stuId"></span></td>
														<td><span ng-bind="u.stuId"></span></td>
							<td><span ng-bind="u.stuName"></span></td>
							<td><span ng-bind="u.stuFatherName"></span></td>
							<td><span ng-bind="u.stuDob |  date:'MM/dd/yyyy'"></span></td> -->
							<td><span ng-bind="u.stuClass"></span></td>
							<td><span ng-bind="u.stuSection"></span></td>
							<!-- 		<td><span ng-bind="u.stuMobile "></span></td> -->
							<th width="30%"></th>
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


	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/static/js/app.js'/>"></script>
	<script src="<c:url value='/static/js/service/student_service.js'/>"></script>
	<script
		src="<c:url value='/static/js/controller/student_controller.js'/>"></script>
</body>
</html>