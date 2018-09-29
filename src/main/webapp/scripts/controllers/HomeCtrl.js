controllers.controller('HomeCtrl',
		['$scope','AppointmentService', function($scope,appointmentService){

    $scope.pageTitle = "Home Page";

    appointmentService.getAll($scope);
	
}]);