app.controller('BookingCtrl',
		['$scope', function($scope){

     $scope.book = function(){
        $scope.success = true;
        $scope.message = "Appointment booked successfully !";
     }

}]);