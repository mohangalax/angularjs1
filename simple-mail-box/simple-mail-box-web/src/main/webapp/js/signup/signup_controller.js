(function() {
	var signUp = angular.module('signUp', ["ngMessages"]);

	signUp.controller('SignUpController', ['$scope', 'SignUpService', function($scope, SignUpService) {
		var self = this;
		self.user = {email: null, firstName: '', lastName: '', password: ''};
		self.submit = function() {
			SignUpService.createUser(self.user).then(function(response) {
				if(response === 201) {
					self.infoMsg = "Your account has been created successfully";
				} else {
					self.infoMsg = "Your account has not been created successfully";
				}
			});
		}

		self.reset = function(user) {
			self.user = {email: null, firstName: '', lastName: '', password: ''};
			self.password = undefined;
			self.infoMsg = undefined;
			$scope.signUp.$setPristine();
		}
	}]);

	signUp.directive('compareTo', [function() {
		return {
			require: "ngModel",
			scope: {
				otherModelValue: "=compareTo"
			},
			link: function(scope, element, attributes, ngModel) {
				ngModel.$validators.compareTo = function(modelValue) {
					return modelValue === scope.otherModelValue;
				};

				scope.$watch("otherModelValue", function() {
					ngModel.$validate();
				});
			}
		};
	}]);
	
}());