<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Student Management</title>


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
				<span class="lead">Student Registration Form </span>
			</div>
			<div class="formcontainer">
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal">
					<input type="hidden" ng-model="ctrl.student.stuId" /> <label
						id="slabel1" ng-click="show=1" class="col-md-12">Student
						Details </label><br />
					<div ng-show="show==1">
						<div class="row">
							<div class="form-group col-md-6">

								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuName"
										name="stuName" class="text-format form-control input-sm"
										placeholder="Student Name" required ng-minlength="3" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuName.$error.required">This is
											a required field</span> <span
											ng-show="myForm.stuName.$error.minlength">Minimum
											length required is 3</span> <span ng-show="myForm.stuName.$invalid">This
											field is invalid </span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6"></div>
						</div>
						<div class="row">


							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuDob">Student
									DOB:</label> -->

								<div class="col-md-6">
									<!-- 	<input type="date" ng-model="ctrl.student.stuDob" id="stuDob"
										class="text-format form-control input-sm dateclass placeholderclass" ng-attr-placeholder="$(this).removeClass('placeholderclass')"
										placeholder="Enter DOB" /> -->
									<input type="date" ng-model="ctrl.student.stuDob" id="stuDob"
										placeholder="Enter DOB"
										ng-onClick="$(this).removeClass('placeholderclass')"
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
									<select ng-model="ctrl.student.stuGender" name="stuGender"
										id="stuGender" class="text-format form-control input-sm">
										<!-- required="required" -->
										<option value="">---Select Gender---</option>
										<!-- not selected / blank option -->
										<option value="Male">Male</option>
										<option value="Femail">Femail</option>
										<option value="Other">Other</option>
									</select>
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuGender.$error.required">This
											is a required field</span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuBloodGroup">Student
									Blood Group:</label> -->
								<div class="col-md-6">
									<select ng-model="ctrl.student.stuBloodGroup"
										name="stuBloodGroup" id="stuBloodGroup"
										class="form-control input-sm">
										<!-- required="required" -->
										<option value="">---Please select---</option>
										<!-- not selected / blank option -->
										<option value="AB">AB</option>
										<!-- interpolation -->
										<option value="AB+">AB+</option>
									</select>
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuBloodGroup.$error.required">This
											is a required field</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuProvince">Student
									Province:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuProvince"
										id="stuProvince" class="form-control input-sm"
										placeholder="Enter Province" />

								</div>
							</div>
						</div>

						<div class="row">


							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuCategory">Student
									Category:</label> -->
								<div class="col-md-6">
									<select ng-model="ctrl.student.stuCategory" name="stuCategory"
										id="stuCategory" class="text-format form-control input-sm">
										<!-- required="required"> -->
										<option value="">---select Category---</option>
										<!-- not selected / blank option -->
										<option value="General">General</option>
										<!-- interpolation -->
										<option value="OBC">OBC</option>
									</select>
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuCategory.$error.required">This
											is a required field</span>
									</div>
								</div>
							</div>



							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuCast">Student
									Cast:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuCast" id="stuCast"
										class="form-control input-sm"
										placeholder="Enter Cast" />

								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuMotherToung">Mother
									Toung :</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuMotherToung"
										id="stuMotherToung" class="form-control input-sm"
										placeholder="Mother Toung" />

								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 							<label class="col-md-2 control-lable" for="stuNatinality">Natinality:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuNatinality"
										ng-Init="Indian" id="stuNatinality"
										class="form-control input-sm"
										placeholder="Natinality" />
								</div>
							</div>
						</div>


					</div>
					<label id="slabel2" ng-click="show=2" class="col-md-12">Student
						Parents Details </label><br />
					<div ng-show="show==2">
						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuFatherName">Father
									Name:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuFatherName"
										id="stuFatherName" class="form-control input-sm"
										placeholder="Father Name" required />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuFatherName.$error.required">This
											is a required field</span> <span
											ng-show="myForm.stuFatherName.$invalid">This field is
											invalid </span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 	<label class="col-md-2 control-lable" for="stuMotherName">Mother
									Name:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuMotherName"
										id="stuMotherName" class="form-control input-sm"
										placeholder="Mother Name" />
									<!-- required -->
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuMotherName.$error.required">This
											is a required field</span> <span
											ng-show="myForm.stuMotherName.$invalid">This field is
											invalid </span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuFatherIncome">Father
									Income :</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuFatherIncome"
										id="stuFatherIncome" class="form-control input-sm"
										placeholder="Father Income" />
									<!-- required -->
								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuFatherOccupation">Father
									Occupation:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuFatherOccupation"
										id="stuFatherOccupation"
										class="form-control input-sm"
										placeholder="Father Occupation" />
									<!-- required -->
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuGuardian">Guardian
									Name:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuGuardian"
										id="stuGuardian" class="form-control input-sm"
										placeholder="Guardian Name" />

								</div>
							</div>
						</div>

					</div>
					<label id="slabel3" ng-click="show=3" class="col-md-12">Student
						Contact Details </label><br />
					<div ng-show="show==3">
						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuMobile">Mobile
									No:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuMobile"
										id="stuMobile" class="form-control input-sm" required
										ng-minlength="10" placeholder="Enter Mobile No" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuMobile.$error.required">This
											is a required field</span> <span
											ng-show="myForm.stuMobile.$error.minlength">Minimum
											length required is 10</span> <span
											ng-show="myForm.stuMobile.$invalid">This field is
											invalid </span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuAlterMobile">Alternate
									Mobile No:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuAlterMobile"
										id="stuAlterMobile" class="form-control input-sm"
										required ng-minlength="10" placeholder="Alternate Mobile No" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuAlterMobile.$error.required">This
											is a required field</span> <span
											ng-show="myForm.stuAlterMobile.$error.minlength">Minimum
											length required is 10</span> <span
											ng-show="myForm.stuAlterMobile.$invalid">This field is
											invalid </span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<!-- 					<label class="col-md-2 control-lable" for="stuPerAddress">Student
									Permanent Add :</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuPerAddress"
										id="stuPerAddress" class="form-control input-sm"
										placeholder="Permanent Add" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuPerPin">Student
									Permanent Add Pin:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuPerPin"
										id="stuPerPin" class="form-control input-sm"
										placeholder="Pincode" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuMailAddress">Student
									Mail Add:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuMailAddress"
										id="stuMailAddress" class="form-control input-sm"
										placeholder="Present Add" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuMailPin">Student
									Mail Add Pin:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuMailPin"
										id="stuMailPin" class="form-control input-sm"
										placeholder="Pincode" />
								</div>
							</div>
						</div>


						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuEmail">Email:</label>
 -->
								<div class="col-md-7">
									<input type="email" ng-model="ctrl.student.stuEmail" id="email"
										class="email form-control input-sm"
										placeholder="Enter your Email" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuEmail.$error.required">This is
											a required field</span> <span ng-show="myForm.stuEmail.$invalid">This
											field is invalid </span>
									</div>
								</div>
							</div>

						</div>

					</div>


					<label id="slabel3" ng-click="show=4" class="col-md-12">Previous
						College Details </label><br />
					<div ng-show="show==4">



						<div class="row">

							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuPrevClgName">Previous
									College Name:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuPrevClgName"
										id="stuPrevClgName" class="form-control input-sm"
										placeholder="Prev Clg Name" />

								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuPrvClgBoard">
									Board Of School:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuPrvClgBoard"
										id="stuPrvClgBoard" class="form-control input-sm"
										placeholder="Prev Clg Board" />

								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuPrevClgAdd">Previous
									College Address:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuPrevClgAdd"
										id="stuPrevClgAdd" class="form-control input-sm"
										placeholder="Prev Clg Add" />

								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuPrevClgResult">
									Previous College Result:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuPrevClgResult"
										id="stuPrevClgResult" class="form-control input-sm"
										placeholder="Prev Clg Result" />

								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuPrevClgPercent">
									Previous College Percentage:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuPrevClgPercent"
										id="stuPrevClgPercent" class="form-control input-sm"
										placeholder="Prev Clg Percentage" />

								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuTcReceiveStatus">
									Tc receive Status:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuTcReceiveStatus"
										id="stuTcReceiveStatus" class="form-control input-sm"
										placeholder="TC Received Status" />

								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuTcReceiveDate">
									Tc received Date:</label> -->
								<div class="col-md-6">
									<input type="date" ng-model="ctrl.student.stuTcReceiveDate"
										id="stuTcReceiveDate"
										class="text-format form-control input-sm dateclass placeholderclass"
										ng-onClick="$(this).removeClass('placeholderclass')"
										placeholder="TC Recv Date" />


								</div>
							</div>
						</div>


					</div>

					<label id="slabel3" ng-click="show=5" class="col-md-12">Present
						College Details </label><br />
					<div ng-show="show==5">


						<div class="row">

							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuSrNo">Student
									Sr No:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuSrNo" id="stuSrNo"
										class="form-control input-sm"
										placeholder="Enter Sr No" ng-minlength="2" />
									<!-- <!-- required -->
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuSrNo.$error.required">This is
											a required field</span> <span
											ng-show="myForm.stuSrNo.$error.minlength">Minimum
											length required is 2</span> <span ng-show="myForm.stuSrNo.$invalid">This
											field is invalid </span>
									</div>
								</div>

							</div>

							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuRollNo">Student
									Roll No:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuRollNo"
										id="stuRollNo" class="form-control input-sm"
										placeholder="Enter Roll no" ng-minlength="2" />
									<!-- required -->
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.stuRollNo.$error.required">This
											is a required field</span> <span
											ng-show="myForm.stuRollNo.$error.minlength">Minimum
											length required is 2</span> <span
											ng-show="myForm.stuRollNo.$invalid">This field is
											invalid </span>
									</div>
								</div>
							</div>

						</div>



						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuClass">Student
									Class:</label> -->
								<div class="col-md-6">
									<select ng-model="stuClass" ng-change="ctrl.change(stuClass)"
										class="form-control input-sm" required>

										<!-- You can have ONE default, null selection option. -->
										<option value="">- - Select Class - -</option>
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
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuSection">Student
									Section:</label> -->
								<div class="col-md-6">
									<select ng-options="o as o for o in ctrl.sections"
										ng-model="stuSection" class="form-control input-sm"
										required>
										<option value="">-- Select Section --</option>
									</select>

								</div>
							</div>
						</div>

						<div class="row">

							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuWing">
									Student Wing:</label> -->
								<div class="col-md-6">
									<select ng-model="stuWing"
										class="form-control input-sm">
										<!-- You can have ONE default, null selection option. -->
										<option value="">- - Seclect Wing - -</option>
										<option value="Juniour">- - Juniour - -</option>
										<option value="Seniour">- - Seniour - -</option>
									</select>

								</div>
							</div>


							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuAddDate">
									Admission Date:</label> -->
								<div class="col-md-6">
									<input type="date" ng-model="ctrl.student.stuAddDate"
										id="stuAddDate"
										class="text-format form-control input-sm dateclass placeholderclass"
										ng-onClick="$(this).removeClass('placeholderclass')"
										placeholder="AdmissionDate" />


								</div>
							</div>

						</div>

						<div class="row">
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuHostel">Student
									Hostel:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuHostel"
										id="stuHostel" class="form-control input-sm"
										placeholder="Hostel" />

								</div>
							</div>
							<div class="form-group col-md-6">
								<!-- 								<label class="col-md-2 control-lable" for="stuTransport">
									Student Transport:</label> -->
								<div class="col-md-6">
									<input type="text" ng-model="ctrl.student.stuTransport"
										id="stuTransport" class="form-control input-sm"
										placeholder="Transport" />

								</div>
							</div>
						</div>

					</div>
					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit"
								value="{{!ctrl.student.stuId ? 'Add' : 'Update'}}"
								class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
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
				<span class="lead">List of Students </span>
			</div>

			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>

							<th>ID
								<p>
									<input type="text" ng-model="searchText['stuId']"
										style="width: 50px;" />
								</p>
							</th>
							<th>Name

								<p>
									<input type="text" ng-model="searchText['stuId']"
										style="width: 50px;" />
								</p>

							</th>
							<th>Father Name
								<p></p>
								<br>
							</th>
							<th>DOB
								<p></p>
								<br>
							</th>
							<th>Class
								<p>
									<input type="text" ng-model="searchText['stuId']"
										style="width: 50px;" />
								</p>



							</th>
							<th>Section
								<p></p>
								<br>
							</th>
							<th>Mobile
								<p>
									<input type="text" ng-model="searchText['stuId']"
										style="width: 80px;" />
								</p>
							</th>
							<!-- <th>Email</th> -->
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.students">
							<td><span ng-bind="u.stuId"></span></td>
							<td><span ng-bind="u.stuName"></span></td>
							<td><span ng-bind="u.stuFatherName"></span></td>
							<td><span ng-bind="u.stuDob |  date:'MM/dd/yyyy'"></span></td>
							<td><span ng-bind="u.stuClass"></span></td>
							<td><span ng-bind="u.stuSection"></span></td>
							<td><span ng-bind="u.stuMobile "></span></td>
							<td>
								<button type="button" ng-click="ctrl.edit(u.stuId)"
									class="btn btn-success custom-width">Edit</button>
								<button type="button" ng-click="ctrl.remove(u.stuId)"
									class="btn btn-danger custom-width">Remove</button>
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