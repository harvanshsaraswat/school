'use strict';

App.factory('studentsAttendaceService', ['$http', '$q', function($http, $q){

	return {
		
		getAllStudentsAttendaceByDate: function(attendanceDate) {
					return $http.get('http://localhost:8080/SAS/studentAttendance/'+attendanceDate)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching Student Attendance');
										return $q.reject(errResponse);
									}
							);
			},
		    
			createStudentAttendance: function(studentAttendance){
					return $http.post('http://localhost:8080/SAS/studentAttendance/', studentAttendance)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating student Attendance ');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateStudentAttendance: function(studentAttendance, attendanceDate,stuId){
				return $http.put('http://localhost:8080/SAS/studentAttendance/'+attendanceDate+"/"+stuId, studentAttendance)
						.then(
								function(response){
									return response.data;
								}, 
								function(errResponse){
									console.error('Error while updating student Attendance');
									return $q.reject(errResponse);
								}
						);
		},
	}		    
}]);
