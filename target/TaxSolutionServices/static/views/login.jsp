<div class="container">
	<div class="col-lg-12" style="padding-top: 50px;">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Home</a></li>
			<li class="active">Login</li>
		</ol>
	</div>
</div>
<div id="login-overlay" class="modal-dialog">
	<div class="modal-content">
		<br>
		<div class="bs-example bs-example-tabs">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#signin" data-toggle="tab">Sign In</a></li>
				<li class="active"><a href="#signup" data-toggle="tab">Register</a></li>
				<li class="active"><a href="#why" data-toggle="tab">Why?</a></li>
			</ul>
		</div>
		<!-- <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Login to Your Account</h4>
			</div> -->
		<div class="modal-body">
			<div class="row">
				<div class="col-xs-6">
					<div class="well">
						<fieldset>
							<div class="form-group label-floating"
								ng-class="{'has-error is-focused' : authenticationError}">
								<label class="control-label" for="login">User Id</label> <input
									type="text" id="login" class="form-control"
									title="Please enter you username"
									placeholder="example@gmail.com" ng-model="ssoId" required="" />
								<span ng-show="authenticationError" class="help-block">
									Please check your credentials and try again. </span>

							</div>

							<div class="form-group label-floating">
								<label class="control-label" for="password">Password</label> <input
									type="password" id="password" class="form-control"
									ng-model="password" placeholder="password" required="" />
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
								<button type="submit" class="btn btn-default" ng-click="login()">Login</button>
								<span class="text-danger" style="color: red">{{ error }}</span>
								<span> <a href="#forgetpassword" class="btn btn-default">Forget
										Password</a>
								</span>
								<!-- <div style="margin-top: 10px;">
									<button class="btn btn-lg btn-primary btn-block"
										ng-click="">Register</button>
								</div> -->

							</div>

						</fieldset>
						<!-- <form id="loginForm" method="POST" action="/login/" novalidate="novalidate">
                              <div class="form-group">
                                  <label for="username" class="control-label">Username</label>
                                  <input type="text" class="form-control" id="username" name="username" value="" required="" title="Please enter you username" placeholder="example@gmail.com">
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="password" class="control-label">Password</label>
                                  <input type="password" class="form-control" id="password" name="password" value="" required="" title="Please enter your password">
                                  <span class="help-block"></span>
                              </div>
                              <div id="loginErrorMsg" class="alert alert-error hide">Wrong username og password</div>
                              <div class="checkbox">
                                  <label>
                                      <input type="checkbox" name="remember" id="remember"> Remember login
                                  </label>
                                  <p class="help-block">(if this is a private computer)</p>
                              </div>
                              <button type="submit" class="btn btn-success btn-block">Login</button>
                              <a href="#loginHelp" class="btn btn-default btn-block">Help to login</a>
                          </form> -->
					</div>
				</div>
				<div class="col-xs-6">
					<p class="lead">
						Benefits of filing your <span class="text-success">tax</span>
					</p>
					<ul class="list-unstyled" style="line-height: 2">
						<li><span class="fa fa-check text-success"></span> High grade
							security</li>
						<li><span class="fa fa-check text-success"></span> Highly
							Dedicated tax experts</li>
						<li><span class="fa fa-check text-success"></span> Maximum
							tax savings</li>
						<li><span class="fa fa-check text-success"></span> 24*7
							support</li>
						<li><span class="fa fa-check text-success"></span> 100%
							Accuracy <!-- <small>(only new customers)</small> --></li>
						<!-- <li><a href="/read-more/"><u>Read more</u></a></li> -->
					</ul>
					<p>
						<a href="#signup" class="btn btn-info btn-block">Yes please,
							register now!</a>
					</p>
				</div>
			</div>
		</div>

	</div>
</div>