<div class="container">
		<div class="col-lg-12">
				<!-- <h1 class="page-header">
					About <small>Us</small>
				</h1> -->
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Login</li>
				</ol>
			</div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form ng-submit="login()" id="myLogin">
                            <fieldset>
                                <div class="form-group label-floating"
                             ng-class="{'has-error is-focused' : authenticationError}">
                            <label class="control-label" for="login">Login</label>
                            <input id="login" type="text" class="form-control" ng-model="ssoId"
                                   required="required"/>
                            <span ng-show="authenticationError" class="help-block">
                                Please check your credentials and try again.
                            </span>

                        </div>
                                <div class="form-group label-floating">
                            <label class="control-label" for="password">Password</label>
                            <input id="password" type="password" class="form-control" ng-model="password"
                                   required="required"/>
                        </div>

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" ng-model="rememberMe"/><span> Remember me</span>
                            </label>
                        </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="col-sm-offset-3 col-sm-6">
                            <button class="btn btn-lg btn-primary btn-block" >
                                login
                            </button>
                            
                        </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>