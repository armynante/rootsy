'use strict';

/**
 * @ngdoc overview
 * @name rootsyApp
 * @description
 * # rootsyApp
 *
 * Main module of the application.
 */

  angular.module('rootsyApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ng-token-auth'
  ])
  .config(function ($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      })
      .when('/sign_in', {
        templateUrl: 'views/user_sessions/new.html',
        controller: 'LoginCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  })

.run(['$rootScope', '$location', function($rootScope, $location) { 
  $rootScope.$on('auth:login-success', function() { 
    $location.path('/'); 
  }); 
}]);
