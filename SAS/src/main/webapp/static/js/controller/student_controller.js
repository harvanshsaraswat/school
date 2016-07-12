'use strict';
 
App.controller('StudentController', ['$scope', 'StudentService', function($scope, StudentService) {
          var self = this;
          self.Student={stuId:null,stuRollNo:'',stuSrNo:'',stuName:'',stuProvince:'',stuBloodGroup:'',
     			 stuFatherName:'', stuFatherIncome:'',stuFatherOccupation:'',stuMotherName:'',stuDob:'',
    			 stuGender:'',stuPerAddress:'',stuPerPin:'',stuMailAddress:'',stuMailPin:'',
    			 stuMobile:'',stuAlterMobile:'',stuEmail:'',stuNatinality:'',stuMotherToung:'',
    			 stuClass:'',stuSection:'',stuWing:'',stuGuardian:'',stuCategory:'',stuCast:'',
    			 stuHostel:'',stuTransport:'',stuPrevClgName:'', stuPrvClgBoard:'',stuPrevClgAdd:'', stuPrevClgResult:'',
    			 stuPrevClgPercent:'',stuTcReceiveStatus:'', stuTcReceiveDate:'', 
    			 stuAddDate:'',stuImage:''};
          
          self.studentAttendance={stuAttendaceId:null,stuId:'',empId:'',attendanceDate:'',stuStatus:'Present'};
          
          self.students=[];
          self.sections=[];
          self.studentsAttendance=[];
          
          self.image="";
          
          $scope.getFile = function () {
              $scope.progress = 0;
              fileReader.readAsDataUrl($scope.file, $scope)
                            .then(function(result) {
                                $scope.imageSrc = result;
                            });
          };
       
          self.fetchAllStudents = function(){
        	  StudentService.fetchAllStudents()
                  .then(
      					       function(d) {
      						        self.students = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Currencies');
            					}
      			       );
          };
           
          self.createStudent = function(student){
        	  StudentService.createStudent(student)
		              .then(
                      self.fetchAllStudents, 
				              function(errResponse){
					               console.error('Error while creating User.');
				              }	
                  );
          };

          self.updateStudent = function(student, stuId){
              StudentService.updateStudent(student, stuId)
		              .then(
				              self.fetchAllStudents, 
				              function(errResponse){
					               console.error('Error while updating student.');
				              }	
                  );
          };
          
          self.deleteStudent = function(id){
              StudentService.deleteStudent(id)
		              .then(
				              self.fetchAllStudents, 
				              function(errResponse){
					               console.error('Error while deleting Student.');
				              }	
                  );
          };
        
          self.fetchSections = function(cls){
              StudentService.fetchSections(cls)
		              .then(
		            		  function(d) {
    						        self.sections = d;
    					       },
          					function(errResponse){
          						console.error('Error while fetching Currencies');
          					}
                  );
          };
        
          
          
          self.fetchAllStudents();
          
        //  ------------------------------------Calling from Student Attendance Form ---------
          
          self.fetchStudentBasedOnClassAndSections = function(cls,section){
              StudentService.fetchStudentBasedOnClassAndSections(cls,section)
		              .then(
		            		  function(d) {
		            			 
    						        self.studentsAttendance = d;
    						        
    					       },
          					function(errResponse){
          						console.error('Error while fetching Currencies');
          					}
                  );
          };
          
          self.submit1 = function() {
              
                  console.log('Fething All Student', self.student.stuClass);    
                  self.fetchStudentBasedOnClassAndSections(self.student.stuClass,self.student.stuSection);
             
          };
          
          self.submitAttendance =function(students) {
        	  for(var i = 0; i < self.students.length; i++){
                 
                	  
                	  self.studentAttendance.stuId=self.students[i].stuId;
                	  self.studentAttendance.stuId=self.students[i].stuId;
                	  self.studentAttendance.stuId=self.students[i].stuId;
                	  self.studentAttendance.stuId=self.students[i].stuId;
                	  
                     self.studentsAttendance = angular.copy(self.students[i]);
                     console.log('Studentto be edited', self.student.stuName);
                    // break;
                  
        	  }
              console.log('Fething All Student', self.student.stuClass);    
              self.fetchStudentBasedOnClassAndSections(self.student.stuClass,self.student.stuSection);
         
      };

          //----------------------------------------------End -----------------------------------------
          
          
          
          self.submit = function() {
              if(self.student.stuId==null){
                  console.log('Saving New Student', self.student);    
                  self.createStudent(self.student);
              }else{
                  self.updateStudent(self.student, self.student.stuId);
                  console.log('Student updated with id ', self.student.stuId);
              }
              self.reset();
          };
              
          self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.students.length; i++){
                  if(self.students[i].stuId == id) {
                     self.student = angular.copy(self.students[i]);
                     self.student.stuDob = new Date(self.student.stuDob);
                     self.student.stuTcReceiveDate = new Date(self.student.stuTcReceiveDate);
                     self.student.stuAddDate = new Date(self.student.stuAddDate);
                   

                     break;
                  }
              }
          };
              
      /*------------------------------------------- for Section selection basis on class -------------------------------------  */  
          self.change = function(cls){
              console.log('cls to be edited', cls);
              self.fetchSections(cls);
          };
          
          /*------------------------------------------- for date field -------------------------------------  */  
          
          
          self.removeClass = function(ccc){
        	  console.log("in dob");
        	  var myEl = angular.element( document.querySelector( '#stuDob' ) );
        	  myEl.removeClass('placeholderclass'); 
          };
          
          
          /*------------------------------------------- for image -------------------------------------  */  
          
          var formdata = new FormData();
          self.getTheFiles = function ($files) {
              angular.forEach($files, function (value, key) {
                  formdata.append(key, value);
              });
              
              // NOW UPLOAD THE FILES.
              $scope.uploadFiles = function () {

                  var request = {
                      method: 'POST',
                      url: '/api/fileupload/',
                      data: formdata,
                      headers: {
                          'Content-Type': undefined
                      }
                  };

                  // SEND THE FILES.
                  $http(request)
                      .success(function (d) {
                          alert(d);
                      })
                      .error(function () {
                      });
              }
          };

          /*------------------------------------------- end -------------------------------------  */   
          

          
          
          /*------------------------------------------- for remove the student -------------------------------------  */      
          
          self.remove = function(id){
              console.log('id to be deleted', id);
              if(self.student.stuId === id) {//clean form if the user to be deleted is shown there.
                 self.reset();
              }
              self.deleteStudent(id);
          };

          
          self.reset = function(){
        	  self.student={stuId:null,stuRollNo:'',stuSrNo:'',stuName:'',stuProvince:'',stuBloodGroup:'',
          			 stuFatherName:'', stuFatherIncome:'',stuFatherOccupation:'',stuMotherName:'',stuDob:'',
         			 stuGender:'',stuPerAddress:'',stuPerPin:'',stuMailAddress:'',stuMailPin:'',
         			 stuMobile:'',stuAlterMobile:'',stuEmail:'',stuNatinality:'',stuMotherToung:'',
         			 stuClass:'',stuSection:'',stuWing:'',stuGuardian:'',stuCategory:'',stuCast:'',
         			 stuHostel:'',stuTransport:'',stuPrevClgName:'', stuPrvClgBoard:'',stuPrevClgAdd:'', stuPrevClgResult:'',
         			 stuPrevClgPercent:'',stuTcReceiveStatus:'', stuTcReceiveDate:'', 
         			 stuAddDate:'',stuImage:''};
              $scope.myForm.$setPristine(); //reset Form
          };

      }]);


