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
				<li class="active"><a href="#signin" data-toggle="tab">Sign
						In</a></li>
				<li class="active"><a href="#signup" data-toggle="tab">Register</a></li>
				<li class="active"><a href="#why" data-toggle="tab">Why?</a></li>
			</ul>
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
									title="Please enter you id" placeholder="enter user id"
									ng-model="ssoId" required="" />

							</div>
							<div class="form-group label-floating">
								<label class="control-label" for="password">First Name</label> <input
									type="password" id="password" class="form-control"
									ng-model="password" placeholder="enter first name" required="" />
							</div>
							<div class="form-group label-floating">
								<label class="control-label" for="password">Gender</label> <input
									type="password" id="password" class="form-control"
									ng-model="password" placeholder="enter gender" required="" />
							</div>
						</fieldset>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="well">
						<fieldset>
							<div class="form-group label-floating">
								<label class="control-label" for="password">Email</label> <input
									type="password" id="password" class="form-control"
									ng-model="password" placeholder="example@gmail.com" required="" />
							</div>
							<div class="form-group label-floating">
								<label class="control-label" for="password">Last Name</label> <input
									type="password" id="password" class="form-control"
									ng-model="password" placeholder="enter last name" required="" />
							</div>
							<div class="form-group label-floating">
								<label class="control-label" for="password">Mobile</label> <input
									type="password" id="password" class="form-control"
									ng-model="password" placeholder="enter 10 digit mobile number" required="" />
							</div>
						</fieldset>
					</div>
				</div>
				<div class="modal-body">
				<div class="col-xs-6">
					<div class="row">
						<button type="submit" class="btn btn-default" ng-click="register()">Register</button>
					</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>