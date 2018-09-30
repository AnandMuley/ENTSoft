app.controller('AppointmentCtrl',
		['$scope','AppointmentService', function($scope,appointmentService){

    $scope.user = {datedOn:new Date()};

     $scope.book = function(){
        $scope.success = true;
        appointmentService.book($scope);
//        $scope.message = "Appointment booked successfully !";
     }

}]);