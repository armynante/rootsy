'use strict';

/**
 * @ngdoc function
 * @name rootsyApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the rootsyApp
 */
angular.module('rootsyApp')
  .controller('MainCtrl', function ($scope,$http) {
    $http.get('/api/companies').success( function(data, status, headers, config) {
      $scope.companies = data;
    });
  });
