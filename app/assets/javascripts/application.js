// assets/javascripts/application.js
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require angular/angular
//= require angular-route/angular-route
//= require angular-resource/angular-resource
//= require angular-rails-templates
//= require_tree .

angular.module('BeersQuizzApp', ['templates','ngRoute', 'ngResource'])
.config(['$locationProvider', '$routeProvider',

  function($locationProvider, $routeProvider) {
    $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });

    $routeProvider
      .when("/", {
        templateUrl: "list.html",
        controller: "MainController"
      })
      .when("/quizz", {
        templateUrl: "quizz.html",
        controller: "QuizzController"
      })
      .otherwise({
         redirectTo: '/'
      });
  }
]);

angular.module('BeersQuizzApp')
.controller('MainController', ['$resource', '$scope',
  function($resource, $scope) {
    var BeersList = $resource('api/search/:name', {name:'@name'},{'query':  {method:'GET', isArray:true}});
    var Categories  = $resource('api/categories', {'query':  {method:'GET', isArray:true}});
    $scope.search = function() {
    	BeersList.query({name:$scope.beerName}, function(beers) {
		$scope.beers = beers;
		$scope.categories = Categories.query({});
		});
    }
 }]);

 angular.module('BeersQuizzApp')
.controller('QuizzController', ['$resource', '$scope',
  function($resource, $scope) {
    var RandomBeers = $resource('api/random/beers', {'query':  {method:'GET', isArray:true}});
    var Categories  = $resource('api/categories', {'query':  {method:'GET', isArray:true}});
    $scope.start = function() {
    	$scope.categories = Categories.query({});
    	RandomBeers.query({}, function(beers) {
		$scope.beers = beers;
		});
    }

    $scope.check = function(form, index) {
    	console.log(form);
    	console.log($scope.beers[index]);
    		if ((form.abv == $scope.beers[index].abv) 
    			&& (form.category == $scope.beers[index].category)) {
    			$scope.beers[index]['result'] = true;
    		} else {
    			$scope.beers[index]['result'] = false;
    		}
    }
 }]);