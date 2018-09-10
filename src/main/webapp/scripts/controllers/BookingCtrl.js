app.controller('BookingCtrl',
		['$scope','BookingService', function($scope,bookingService){

    $scope.user = {};

     $scope.book = function(){
        $scope.success = true;
        bookingService.book($scope);
//        $scope.message = "Appointment booked successfully !";
     }

}]);