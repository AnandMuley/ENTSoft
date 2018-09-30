controllers.controller('HomeCtrl',
		['$scope','$rootScope','AppointmentService', function($scope,$rootScope,appointmentService){

    $scope.pageTitle = "Home Page";
    $rootScope.authenticated = true;

    appointmentService.getAll($scope);
	
}]);