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
					<form>
						<fieldset>
							<div class="form-group label-floating"
								ng-class="{'has-error is-focused' : authenticationError}">
								<label class="control-label" for="login">Login</label> <input
									type="text" id="login" class="form-control" ng-model="ssoId"
									required="" /> <span
									ng-show="authenticationError" class="help-block"> Please
									check your credentials and try again. </span>

							</div>

							<div class="form-group label-floating">
								<label class="control-label" for="password">Password</label> <input
									type="password" id="password" class="form-control" ng-model="password"
									placeholder="password" required="" />
							</div>
							<div class="checkbox">
								<label> <input name="remember" type="checkbox"
									value="Remember Me">Remember Me
								</label>
							</div>
							<!-- Change this to a button or input when using this as a form -->
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<div>
								<button type="submit"
									class="btn btn-success  btn-lg btn-primary btn-block " ng-click="login()">Login</button>
								<span class="text-danger" style="color: red">{{ error }}</span>
								<div style="margin-top: 10px;">
									<button class="btn btn-lg btn-primary btn-block"
										ng-click="">Register</button>
								</div>

							</div>

						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>