'use strict';

/**
 * @ngdoc function
 * @name rootsyApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the rootsyApp
 */
angular.module('rootsyApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
