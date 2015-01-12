angular
    .module('AngularRails', [
        'ngRoute',
        'templates'
    ]).config(function ($routeProvider, $locationProvider) {
        $routeProvider
            .when('/dashboard', {
                templateUrl: 'home.html',
                controller: 'HomeCtrl'
            })
            .when('/signout', {
                url: 'http://localhost:3000/signout'
            })
        $locationProvider.html5Mode(true);
    });