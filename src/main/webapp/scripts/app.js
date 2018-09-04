var app = angular.module('ENTSoftUI',
		['ngRoute',
		 'ENTControllers',
		 'ui.bootstrap',
		 'ngCookies']);

app.config([ '$routeProvider','$locationProvider', function($routeProvider,$locationProvider) {
	$routeProvider.when('/', {
		redirectTo: 'booking'
	}).when('/booking', {
		templateUrl : 'views/Booking.html',
		controller : 'BookingCtrl'
	}).when('/home', {
		templateUrl : 'views/Home.html',
		controller : 'HomeController'
	});

	$locationProvider.hashPrefix('');
} ]);

var controllers = angular.module('ENTControllers', []);