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
		<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">Forgot Password</h4>
			</div> 
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
							<div class="form-group label-floating"
								ng-class="{'has-error is-focused' : authenticationError}">
								<label class="control-label" for="login">Or</label>
							</div>
							<div class="form-group label-floating"
								ng-class="{'has-error is-focused' : authenticationError}">
								<label class="control-label" for="login">Mobile Number</label>
								<input type="text" id="login" class="form-control"
									title="Please enter you username"
									placeholder="example@gmail.com" ng-model="ssoId" required="" />
								<span ng-show="authenticationError" class="help-block">
									Please check your credentials and try again. </span>

							</div>
							<div>
								<button type="submit" class="btn btn-default" ng-click="sendPassword()">Send Password</button>
							</div>
						</fieldset>
					</div>
				</div>
				<div class="col-xs-6">
					<p class="lead">
						Password Received <span class="text-success">on</span>
					</p>
					<ul class="list-unstyled" style="line-height: 2">
						<li><span class="fa fa-check text-success"></span> Registered Email Id with us.</li>
						<li><span class="fa fa-check text-success"></span> Mobile number registered with us.</li>
					</ul>
					<p>
						<a href="#signup" class="btn btn-info">Register here!</a>
						<a href="#loginpage" class="btn btn-info">Login</a>
					</p>
				</div>
			</div>
		</div>

	</div>
</div>