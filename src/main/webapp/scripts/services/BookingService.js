app.service('BookingService',['$http',function($http){

    this.book = function($scope){
        var user = $scope.user;
        $http({
            method : 'POST',
            url : 'rest/bookings',
            data : {
                firstName : user.firstName,
                lastName : user.lastName,
                contactNo : user.contactNo
            }
        }).then(function(data,status){
            $scope.message = 'Booking successful !';
            $scope.success = true;
            $scope.user = {};
        },function(data,status){
//            $scope.message = data.message;
            $scope.message = 'Something went wrong !';
            $scope.success = false;
        });

    }

}]);