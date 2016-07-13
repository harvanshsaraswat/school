'use strict';

App.factory('StudentService', ['$http', '$q', function($http, $q){

	return {
		
		// ------------------------------------- For Student Attendance ----------------------------
		fetchStudentBasedOnClassAndSections: function(cls, section) {
			return $http.get('http://localhost:8080/SAS/student/'+cls+"/"+section)
					.then(
							function(response){
								return response.data;
							}, 
							function(errResponse){
								console.error('Error while fetching Students');
								return $q.reject(errResponse);
							}
					);
	},
	
	saveStudentAttendance: function(studentsAttendance) {
		return $http.post('http://localhost:8080/SAS/studentAttendance/', studentsAttendance)
		.then(
				function(response){
					console.log("in service in saveStudentAttendance ");
					return response.data;
				}, 
				function(errResponse){
					console.error('Error while Saving StudentAttendance');
					return $q.reject(errResponse);
				}
		);
	},
	
	getAllStudentsAttendaceByDate: function(attendanceDate) {
		return $http.get('http://localhost:8080/SAS/studentAttendance/'+attendanceDate)
				.then(
						function(response){
							return response.data;
						}, 
						function(errResponse){
							console.error('Error while fetching Student Attendance By date');
							return $q.reject(errResponse);
						}
				);
},
	//----------------------------------------------- End --------------------------------------------
		
			fetchAllStudents: function() {
					return $http.get('http://localhost:8080/SAS/student/')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching Students');
										return $q.reject(errResponse);
									}
							);
			},
		    
			createStudent: function(student){
					return $http.post('http://localhost:8080/SAS/student/', student)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating student');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateStudent: function(student, id){
				return $http.put('http://localhost:8080/SAS/student/'+id, student)
						.then(
								function(response){
									return response.data;
								}, 
								function(errResponse){
									console.error('Error while updating student');
									return $q.reject(errResponse);
								}
						);
		},
		deleteStudent: function(id){
			return $http.Delete('http://localhost:8080/SAS/student/'+id)
					.then(
							function(response){
								return response.data;
							}, 
							function(errResponse){
								console.error('Error while deleting Student');
								return $q.reject(errResponse);
							}
					);
	},
		
		
		fetchSections: function(cls) {
			return $http.get('http://localhost:8080/SAS/clas/'+cls)
			.then(
					function(response){
						return response.data;
					}, 
					function(errResponse){
						console.error('Error while fetching users');
						return $q.reject(errResponse);
					}
			);
},



	}		    
}]);
