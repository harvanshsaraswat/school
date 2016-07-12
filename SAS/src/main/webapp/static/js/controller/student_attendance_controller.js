'use strict';
 
App.controller('StudentController', ['$scope', 'studentsAttendaceService', function($scope, studentsAttendaceService) {
          var self = this;
          
          
          self.studentAttendance={stuAttendaceId:null,stuId:'',empId:'',attendanceDate:'',stuStatus:''};
          
          self.studentsAttendance=[];
          
         
          self.getAllStudentsAttendaceByDate = function(attendanceDate){
        	  studentsAttendaceService.getAllStudentsAttendaceByDate(attendanceDate)
                  .then(
      					       function(d) {
      						        self.studentsAttendance = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Student Attendance');
            					}
      			       );
          };
           
          self.createStudentAttendance = function(studentAttendance){
        	  studentsAttendaceService.createStudentAttendance(studentAttendance)
		              .then(
                      self.getAllStudentsAttendaceByDate, 
				              function(errResponse){
					               console.error('Error while creating Student Attendance.');
				              }	
                  );
          };

          self.updateStudentAttendance = function(studentAttendance, attendanceDate, stuId){
        	  studentsAttendaceService.updateStudentAttendance(student, attendanceDate, stuId)
		              .then(
				              self.fetchAllStudents, 
				              function(errResponse){
					               console.error('Error while updating student.');
				              }	
                  );
          };
          
          
          self.getAllStudentsAttendaceByDate(attendanceDate);

          self.submit = function() {
              if(self.studentAttendance.stuAttendaceId==null){
                  console.log('Saving New Student Attendance', self.studentAttendance);    
                  self.createstudentAttendance(self.studentAttendance);
              }
          };
              
        /*  self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.students.length; i++){
                  if(self.students[i].stuId == id) {
                     self.student = angular.copy(self.students[i]);
                     console.log('Studentto be edited', self.student.stuName);
                     break;
                  }
              }
          };*/
     
          
         
          
          /*------------------------------------------- for remove the student  Attendance -------------------------------------  */      
          
         /* self.remove = function(id){
              console.log('id to be deleted', id);
              if(self.student.stuId === id) {//clean form if the user to be deleted is shown there.
                 self.reset();
              }
              self.deleteStudent(id);
          };*/

          
        /*  self.reset = function(){
        	  self.studentAttendance={stuAttendaceId:null,stuId:'',empId:'',attendanceDate:'',stuStatus:''};
              $scope.myForm.$setPristine(); //reset Form
          };*/

      }]);


