'use strict';

/**
 * @ngdoc function
 * @name rootsyApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the rootsyApp
 */
angular.module('rootsyApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
