var signUp = angular.module('signUp');

signUp.factory('SignUpService', ['$http','$q', function($http, $q) {
	var REST_SIGNUP_URL = "http://localhost:8080/mail/signup/create";
	
	var factory = {
	        createUser: createUser,
	};
	return factory;
	    
	function createUser(user) {
		var deferred = $q.defer();
		$http.post(REST_SIGNUP_URL, user).then(
			function(response) {
				console.log(response.status);
				deferred.resolve(response.status);
			},
			function(errResponse) {
				console.log(response.status);
				deferred.reject(errResponse);
			}
		);
		return deferred.promise;
	}
}]);