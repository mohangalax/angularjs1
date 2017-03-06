(function() {
	var login = angular.module('login', []);
	
	login.controller('LoginController', ['LoginService', function() {
		var self = this;
		
		self.submit = function() {
			LoginService.createUser(self.user).then(function(response) {
				if(response === 201) {
					self.infoMsg = "Your account has been created successfully";
				} else {
					self.infoMsg = "Your account has not been created successfully";
				}
			});
		}
	}]);
	
}());