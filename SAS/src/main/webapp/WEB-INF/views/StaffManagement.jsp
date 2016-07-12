<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Employee Management</title>


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
		ng-controller="EmployeeController as ctrl">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">Employee Registration Form </span>
			</div>
			<div class="formcontainer">
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal">
					<input type="hidden" ng-model="ctrl.employee.empId" /> <label
						id="slabel1" ng-click="show=1" class="col-md-12">Employee
						Details </label><br />
					<div ng-show="show==1">
						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empRegistrationNo"
										id="empRegistrationNo" class="form-control input-sm"
										placeholder="Registration No" required />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empRegistrationNo.$error.required">This
											is a required field</span> <span
											ng-show="myForm.empRegistrationNo.$invalid">This field
											is invalid </span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empName"
										id="empName" class="form-control input-sm"
										placeholder="Employee Name" required />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empName.$error.required">This is
											a required field</span> <span ng-show="myForm.empName.$invalid">This
											field is invalid </span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">


							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="date" ng-model="ctrl.employee.empDob | date:'yyyy/MM/dd'" id="empDob" 
										class="form-control input-sm" placeholder="Date of Birth" />

									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empDob.$error.required">This is a
											required field</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<select ng-model="ctrl.employee.empGender" name="empGender"
										id="empGender" class="form-control input-sm">
										<option value="">--- select Gender---</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
									</select>
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empGender.$error.required">This
											is a required field</span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<select ng-model="ctrl.employee.empDepartment"
										name="empDepartment" id="empDepartment"
										class="form-control input-sm" required>
										<option value="">Select Department</option>
										<option value="Teaching">Teaching</option>
										<option value="NonTeaching">NonTeaching</option>
									</select>
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empDepartment.$error.required">This
											is a required field</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empLicenceNo"
										id="empLicenceNo" class="form-control input-sm"
										placeholder="Employee Licence No"  />
								</div>
							</div>

						</div>


						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empMotherToung"
										id="empMotherToung" class="form-control input-sm"
										placeholder="Mother Toung" />

								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empnationality"
										id="empnationality" class="form-control input-sm"
										placeholder="Natinality" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empuSalary"
										id="empuSalary" class="form-control input-sm"
										placeholder="Salary" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empWorkExp"
										id="empWorkExp" class="form-control input-sm"
										placeholder="Work Experince" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empDesignation"
										id="empDesignation" class="form-control input-sm"
										placeholder="Emp Designation" />
								</div>
							</div>

							<div class="form-group col-md-6">
								<div class="col-md-6">
									<select ng-model="ctrl.employee.empBloodGroup"
										name="empBloodGroup" id="empBloodGroup"
										class="username form-control input-sm" >
										<option value="">---Blood Group---</option>
										<option value="AB">AB</option>
										<option value="AB+">AB+</option>
									</select>
								</div>
							</div>
						</div>

					</div>


					<label id="slabel3" ng-click="show=3" class="col-md-12">Employee
						Contact Details: </label><br />
					<div ng-show="show==3">

						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empMobile"
										id="empMobile" class="form-control input-sm"
										placeholder="Mobile No" required ng-minlength="10" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empMobile.$error.required">This
											is a required field</span> <span
											ng-show="myForm.empMobile.$error.minlength">Minimum
											length required is 10</span> <span
											ng-show="myForm.empMobile.$invalid">This field is
											invalid </span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empAlterMobile"
										id="empAlterMobile" class="form-control input-sm"
										placeholder="Alternate
									Mobile No" ng-minlength="10" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empAlterMobile.$error.required">This
											is a required field</span> <span
											ng-show="myForm.empAlterMobile.$error.minlength">Minimum
											length required is 10</span> <span
											ng-show="myForm.empAlterMobile.$invalid">This field is
											invalid </span>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empPerAddress"
										id="empPerAddress" class="form-control input-sm"
										placeholder="Permanent Add" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empPerPin"
										id="empPerPin" class=" form-control input-sm"
										placeholder="Permanent Add Pin" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empMailAddress"
										id="empMailAddress" class="form-control input-sm"
										placeholder="Persent Add" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.employee.empMailPin"
										id="empMailPin" class="form-control input-sm"
										placeholder="Persent Add Pin" />
								</div>
							</div>
						</div>


						<div class="row">
							<div class="form-group col-md-6">
								<div class="col-md-7">
									<input type="email" ng-model="ctrl.employee.empEmail"
										id="empEmail" class="email form-control input-sm"
										placeholder="Enter  Email" required />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.empEmail.$error.required">This is
											a required field</span> <span ng-show="myForm.empEmail.$invalid">This
											field is invalid </span>
									</div>
								</div>
							</div>

						</div>

					</div>

					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit"
								value="{{!ctrl.employee.empId ? 'Add' : 'Update'}}"
								class="btn btn-primary btn-sm"> <!-- ng-disabled="myForm.$invalid" -->
							<button type="button" ng-click="ctrl.reset()"
								class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset
								Form</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Employees </span>
			</div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Regs No</th>
							<th>Name</th>
							<th>Department</th>
							<th>Mobile</th>
							<th>Email</th>
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.employees">
							<td><span ng-bind="u.empRegistrationNo"></span></td>
							<td><span ng-bind="u.empName"></span></td>
							<td><span ng-bind="u.empDepartment"></span></td>
							<td><span ng-bind="u.empMobile"></span></td>
							<td><span ng-bind="u.empEmail"></span></td>
							<td>
								<button type="button" ng-click="ctrl.edit(u.empId)"
									class="btn btn-success custom-width">Edit</button>
								<button type="button" ng-click="ctrl.remove(u.empId)"
									class="btn btn-danger custom-width">Remove</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.jsangular.js"></script>
	<script src="<c:url value='/static/js/app.js'/>"></script>
	<script src="<c:url value='/static/js/service/employee_service.js'/>"></script>
	<script
		src="<c:url value='/static/js/controller/employee_controller.js'/>"></script>
</body>
</html>