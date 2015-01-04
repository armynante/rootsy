
'use strict';

angular.module('rootsyApp')
  .controller('LoginCtrl', ['$scope', function ($scope) {
    $scope.$on('auth:login-error', function(ev, reason) { 
      $scope.error = reason.errors[0]; 
    });
  }]);