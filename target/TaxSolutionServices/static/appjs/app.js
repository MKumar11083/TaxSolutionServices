	'use strict';

	var myapp = angular
	    .module('myApp', ['ngResource', 'ngRoute', 'swaggerUi', 'http-auth-interceptor', 'angular-spinkit']);


	myapp.constant('USER_ROLES', {
	    all: '*',
	    admin: 'admin',
	    user: 'user'
	});


	myapp.config(function ($routeProvider, USER_ROLES) {

		$routeProvider.when('/loginpage', {
	        templateUrl: './static/views/login.jsp',
	        controller: 'LoginController',
	        access: {
	            loginRequired: false,
	            authorizedRoles: [USER_ROLES.all]
	        }
	    }).when('/loading', {
	        templateUrl: './partials/loading.html',
	        access: {
	            loginRequired: true,
	            authorizedRoles: [USER_ROLES.all]
	        }
	    }).when("/logout", {
	    	templateUrl: "./static/views/logout.jsp",
	        controller: "LogoutController",
	        access: {
	            loginRequired: false,
	            authorizedRoles: [USER_ROLES.all]
	        }
	    }).when("/error/:code", {
	        templateUrl: "./partials/error.html",
	        controller: "ErrorController",
	        access: {
	            loginRequired: false,
	            authorizedRoles: [USER_ROLES.all]
	        }
	    }).when("/loginPage", {
			templateUrl : "./static/views/login.jsp",
			controller : "LogoutController",
			access: {
	            loginRequired: false,
	            authorizedRoles: [USER_ROLES.all]
	        }
		}).when('/', {
			templateUrl : './static/views/home.jsp',
		}).when('/home', {
			templateUrl : './static/views/home.jsp',
		}).when('/admin', {
			templateUrl : './static/views/admin.jsp',
		}).when('/register', {
			templateUrl : './static/views/Registration_Page.jsp',
		}).when("/dashboard", {
			templateUrl : "./static/views/dashboard.jsp",
		}).when('/about', {
			templateUrl : './static/views/about.jsp',
		}).when('/contact', {
			templateUrl : './static/views/contact.jsp',
		}).when('/services', {
			templateUrl : './static/views/services.jsp',
		}).when('/mission', {
			templateUrl : './static/views/mission.jsp',
		}).when('/mission1', {
			templateUrl : './static/views/mission1.jsp',
		}).when('/incomeTaxReturn', {
			templateUrl : './static/views/incomeTaxReturn.jsp',
		}).when('/gstTraining', {
			templateUrl : './static/views/gstTraining.jsp',
		}).when('/Training', {
			templateUrl : './static/views/Training.jsp',
		}).when('/accountingServices', {
			templateUrl : './static/views/accountingServices.jsp',
		}).when('/signup', {
			templateUrl : './static/views/modelReg.jsp',
		}).when('/carousel-example-generic', {
			templateUrl : './static/views/home.jsp',
		}).when('/itrFiling', {
			templateUrl : './static/views/itrFiling.jsp',
		}).when('/service-one', {
			templateUrl : './static/views/services.jsp',
		}).when('/service-three', {
			templateUrl : './static/views/services.jsp',
		}).when('/registrationPage', {
			templateUrl : './static/views/registrationPage.jsp',
		}).when('/service-one', {
			templateUrl : './static/views/services.jsp',
		}).when('/businessPlan', {
			templateUrl : './static/views/businessPlan.jsp',
		}).when('/procedureOfJoining', {
			templateUrl : './static/views/procedureOfJoining.jsp',
		}).when('/signin', {
			templateUrl : './static/views/signIn.jsp',
		}).when('/signup', {
			templateUrl : './static/views/signUp.jsp',
			controller: 'RegistrationController',
		}).when('/why', {
			templateUrl : './static/views/why.jsp',
		}).when('/forgetpassword', {
			templateUrl : './static/views/forgetpassword.jsp',
		}).when('/anyQuery', {
			templateUrl : './static/views/anyQuery.jsp',
		}).otherwise({
	        redirectTo: '/error/404',
	        access: {
	            loginRequired: false,
	            authorizedRoles: [USER_ROLES.all]
	        }
	    });
		

		
	});

	myapp.run(function ($rootScope, $location, $http, AuthSharedService, Session, USER_ROLES, $q, $timeout) {

	    $rootScope.$on('$routeChangeStart', function (event, next) {

	        if(next.originalPath === "/login" && $rootScope.authenticated) {
	            event.preventDefault();
	        } else if (next.access && next.access.loginRequired && !$rootScope.authenticated) {
	            event.preventDefault();
	            $rootScope.$broadcast("event:auth-loginRequired", {});
	        } else if (next.access && !AuthSharedService.isAuthorized(next.access.authorizedRoles)) {
	            event.preventDefault();
	            $rootScope.$broadcast("event:auth-forbidden", {});
	        }
	    });

	   

	    // Call when the the client is confirmed
	    $rootScope.$on('event:auth-loginConfirmed', function (event, data) {
	        console.log('login confirmed start ' + data);
	        $rootScope.loadingAccount = false;
	        var nextLocation = ($rootScope.requestedUrl ? $rootScope.requestedUrl : "/home");
	        var delay = ($location.path() === "/loading" ? 1500 : 0);
	       
	        $timeout(function () {
	            Session.create(data);
	            $rootScope.ssoId=data.ssoId;
	            $rootScope.account = Session;
	            $rootScope.authenticated = true;
	            $location.path(nextLocation).replace();
	        }, delay);

	    });

	    // Call when the 401 response is returned by the server
	    $rootScope.$on('event:auth-loginRequired', function (event, data) {
	        if ($rootScope.loadingAccount && data.status !== 401) {
	            $rootScope.requestedUrl = $location.path()
	            $location.path('/loading');
	        } else {
	            Session.invalidate();
	            $rootScope.authenticated = false;
	            $rootScope.loadingAccount = false;
	            $location.path('/login');
	        }
	    });

	    // Call when the 403 response is returned by the server
	    $rootScope.$on('event:auth-forbidden', function (rejection) {
	        $rootScope.$evalAsync(function () {
	            $location.path('/error/403').replace();
	        });
	    });

	    // Call when the user logs out
	    $rootScope.$on('event:auth-loginCancelled', function () {
	        $location.path('/login').replace();
	    });

	    // Get already authenticated user account
	    //AuthSharedService.getAccount();


	});





