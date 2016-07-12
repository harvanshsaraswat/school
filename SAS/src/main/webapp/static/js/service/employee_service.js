'use strict';

App.factory('EmployeeService', ['$http', '$q', function($http, $q){

	return {
		
		fetchAllEmployees: function() {
					return $http.get('http://localhost:8080/SAS/employee/')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching employee');
										return $q.reject(errResponse);
									}
							);
			},
		    
			createEmployee: function(employee){
					return $http.post('http://localhost:8080/SAS/employee/', employee)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating employee');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateEmployee: function(employee, id){
				return $http.put('http://localhost:8080/SAS/employee/'+id, employee)
						.then(
								function(response){
									return response.data;
								}, 
								function(errResponse){
									console.error('Error while updating employee');
									return $q.reject(errResponse);
								}
						);
		},
		
		deleteEmployee: function(id){
			return $http.Delete('http://localhost:8080/SAS/employee/'+id)
					.then(
							function(response){
								return response.data;
							}, 
							function(errResponse){
								console.error('Error while deleting employee');
								return $q.reject(errResponse);
							}
					);
	},
		
		
	

	}		    
}]);
