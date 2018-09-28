app.controller('AuthenticationCtrl',['$scope','AuthenticationService',function($scope,authenticationService){

    $scope.user = {};

    $scope.login = function(){
        authenticationService.login($scope);
    }

}]);