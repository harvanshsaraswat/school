'use strict';
 
App.controller('EmployeeController', ['$scope', 'EmployeeService', function($scope, EmployeeService) {
          var self = this;
          self.employee={empId:null,empRegistrationNo:'',empName:'',empBloodGroup:'',empDob:'',empGender:'',empDepartment:'',empLicenceNo:'',
			             empMobile:'',empAlterMobile:'',empEmail:'',empnationality:'',empMotherToung:'',empuSalary:'',empWorkExp:'',
			              empDesignation:'',empPerAddress:'',empPerPin:'',empMailAddress:'',empMailPin:''
   				       };
          
          self.employees=[];         
          
          
       
          self.fetchAllEmployees = function(){
        	  EmployeeService.fetchAllEmployees()
                  .then(
      					       function(d) {
      						        self.employees = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Employees');
            					}
      			       );
          };
           
          self.createEmployee = function(employee){
        	  EmployeeService.createEmployee(employee)
		              .then(
                      self.fetchAllEmployees, 
				              function(errResponse){
					               console.error('Error while creating Employee.');
				              }	
                  );
          };

          self.updateEmployee = function(employee, empId){
              EmployeeService.updateEmployee(employee, empId)
		              .then(
				              self.fetchAllEmployees, 
				              function(errResponse){
					               console.error('Error while updating Employee.');
				              }	
                  );
          };
          
          self.deleteEmployee = function(id){
              EmployeeService.deleteEmployee(id)
		              .then(
				              self.fetchAllEmployees, 
				              function(errResponse){
					               console.error('Error while deleting Employee.');
				              }	
                  );
          };
                
          
          self.fetchAllEmployees();

          self.submit = function() {
              if(self.employee.empId==null){
                  console.log('Saving New Employee', self.employee);    
                  self.createEmployee(self.employee);
              }else{
                  self.updateEmployee(self.employee, self.employee.empId);
                  console.log('Student updated with id ', self.employee.empId);
              }
              self.reset();
          };
              
          self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.employees.length; i++){
                  if(self.employees[i].empId == id) {
                     self.employee = angular.copy(self.employees[i]);
                     console.log('Studentto be edited', self.employee.empName);
                     break;
                  }
              }
          };
              
          
          
          /*------------------------------------------- for remove the employee -------------------------------------  */      
          
          self.remove = function(id){
              console.log('id to be deleted', id);
              if(self.employee.empId === id) {//clean form if the user to be deleted is shown there.
                 self.reset();
              }
              self.deleteEmployee(id);
          };

          
          self.reset = function(){
        	  self.employee={empId:null,empRegistrationNo:'',empName:'',empBloodGroup:'',empDob:'',empGender:'',empDepartment:'',empLicenceNo:'',
        			         empMobile:'',empAlterMobile:'',empEmail:'',empnationality:'',empMotherToung:'',empuSalary:'',empWorkExp:'',
        			         empDesignation:'',empPerAddress:'',empPerPin:'',empMailAddress:'',empMailPin:''
              				};
              $scope.myForm.$setPristine(); //reset Form
          };

      }]);


