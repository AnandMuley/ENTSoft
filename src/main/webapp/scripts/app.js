var app = angular.module('ENTSoftUI',
		['ngRoute',
		 'ENTControllers',
		 'ui.bootstrap',
		 'ngCookies']);

app.config([ '$routeProvider','$locationProvider', function($routeProvider,$locationProvider) {
	$routeProvider.when('/', {
		redirectTo: 'appointment'
	}).when('/appointment', {
		templateUrl : 'views/AppointmentBooking.html',
		controller : 'AppointmentCtrl'
	}).when('/home', {
		templateUrl : 'views/Home.html',
		controller : 'HomeCtrl'
	}).when('/login',{
	    templateUrl : 'views/Login.html',
	    controller : 'AuthenticationCtrl'
	});

	$locationProvider.hashPrefix('');
} ]);

app.constant('RestApiBaseUrl','http://localhost:8091/ENTSoft/rest');

var controllers = angular.module('ENTControllers', []);