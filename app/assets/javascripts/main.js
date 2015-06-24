// 'use strict';

// angular.module('BeersQuizzApp', ['templates','ngRoute', 'ngResource'])
// .config(['$locationProvider', '$routeProvider',

//   function($locationProvider, $routeProvider) {
//     $locationProvider.html5Mode({
//       enabled: true,
//       requireBase: false
//     });

//     $routeProvider
//       .when("/", {
//         templateUrl: "list.html",
//         controller: "MainController"
//       })
//       .when("/quizz", {
//         templateUrl: "quizz.html",
//         controller: "QuizzController"
//       })
//       .otherwise({
//          redirectTo: '/'
//       });
//   }
// ]);

// angular.module('BeersQuizzApp')
// .controller('MainController', ['$resource',
//   function($resource) {
//     var BeersList = $resource('/api/beers',
//     {}, {
//       charge: {method:'GET'}
//   });

//   BeersList.get({}, function(list) {
//       console.log(list);
//   });
//  }]);

//  angular.module('BeersQuizzApp')
// .controller('QuizzController', ['$resource',
//   function($resource) {
//     var BeersList = $resource('/api/beers',
//     {}, {
//       charge: {method:'GET'}
//   });

//   BeersList.get({}, function(list) {
//       console.log(list);
//   });
//  }]);