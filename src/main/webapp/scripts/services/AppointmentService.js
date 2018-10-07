app.service('AppointmentService',['RestApiBaseUrl','$http',function(RestApiBaseUrl,$http){

    this.book = function($scope){
        var user = $scope.user;
        $http({
            method : 'POST',
            url : RestApiBaseUrl+'/appointments',
            withCredentials: true,
            headers : {
                'Content-Type' : 'application/json;charset=utf-8'
            },
            data : {
                firstName : user.firstName,
                lastName : user.lastName,
                contactNo : user.contactNo,
                datedOn : user.datedOn
            }
        }).then(function(data,status){
            $scope.message = 'Booking successful !';
            $scope.success = true;
            $scope.user = {datedOn : new Date()};
        },function(data,status){
            $scope.message = 'Something went wrong !';
            $scope.success = false;
        });

    }

    this.markAsDone = function(appointment,onSuccess,scope) {
      $http({
        method : 'PUT',
        url : RestApiBaseUrl + '/appointments/' + appointment.id + '/DONE',
        withCredentials : true,
        headers : {
          'Content-Type' : 'application/json'
        }
      }).then(onSuccess,function(data,status){
        scope.message = 'Something went wrong !';
      });
    }

    this.getAll = function($scope){
        $http({
            method : 'GET',
            url : RestApiBaseUrl+'/appointments',
            withCredentials: true,
            headers : {
                'Content-Type' : 'application/json;charset=utf-8'
            }
        }).then(function(response){
            $scope.appointments = response.data;
        },function(data,status){
            $scope.message = 'Something went wrong !';
            $scope.success = false;
        });
    }

}]);
