"use strict";angular.module("rootsyApp",["ngAnimate","ngAria","ngCookies","ngMessages","ngResource","ngRoute","ngSanitize","ngTouch","ng-token-auth"]).config(["$routeProvider",function(a){a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).when("/about",{templateUrl:"views/about.html",controller:"AboutCtrl"}).when("/sign_in",{templateUrl:"views/user_sessions/new.html",controller:"LoginCtrl"}).otherwise({redirectTo:"/"})}]),angular.module("rootsyApp").controller("MainCtrl",["$scope","$http",function(a,b){b.get("/api/companies").success(function(b){a.companies=b})}]),angular.module("rootsyApp").controller("AboutCtrl",["$scope",function(a){a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}]),angular.module("rootsyApp").controller("UserSessionsCtrl",["$scope",function(){}]);