<script>
	$(window).load(function() {
		$("#sticky").sticky({
			topSpacing : 150
		});
	});
</script>
<!-- Page Content -->
<div class="container">

	<!-- Page Heading/Breadcrumbs -->
	<div class="row" style="padding-top: 50px;">
		<div class="col-lg-12">
			<ol class="breadcrumb">
				<li><a href="index.jsp">Home</a></li>
				<li class="active">Login</li>
			</ol>
		</div>
	</div>
	<!-- /.row -->

	<!-- Intro Content -->
	<div class="row">
		<div class="col-md-6">
			<div class="modal-content">
				<div class="modal-body">
					<p class="lead">We have a highly intuitive software that makes
						e-filing easy. Do hassle-free e-filing of tax returns with us.</p>
					<hr>
					<ul class="list-unstyled" style="line-height: 2">
						<li><span class="fa fa-check text-success"></span> Free of
							cost</li>
						<li><span class="fa fa-check text-success"></span> Intuitive,
							online application</li>
						<li><span class="fa fa-check text-success"></span> The most
							accurate Income Tax calculation engine in India</li>
						<li><span class="fa fa-check text-success"></span> Comodo
							secured</li>
						<li><span class="fa fa-check text-success"></span> We
							auto-read your Form 16 which saves your valuable time</li>
						<li><span class="fa fa-check text-success"></span> Post
							filing support if required</li>
					</ul>
				</div>
			</div>
			<hr>
			<div class="modal-content">
				<div class="modal-body">
					<p class="lead">Income Tax Return Filing Process</p>
					<hr>
					<ul class="list-unstyled" style="line-height: 2">
						<li>1. Register & enter personal information</li>
						<li>2. Upload your Form 16, enter any other income</li>
						<li>3. Enter your deductions & answer some quick questions</li>
						<li>4. Review, e-file & verify ITR-V to complete</li>
					</ul>
				</div>
			</div>
			<hr>
			<div class="modal-content">
				<div class="modal-body">
					<p class="lead">Advantages of Filing Income Tax Return Online
						with us.</p>
					<hr>
					<ul class="list-unstyled" style="line-height: 2">
						<li><span class="fa fa-check text-success"></span>
							Professionally handled Income Tax Return e-filing process</li>
						<li><span class="fa fa-check text-success"></span> Auto Form
							16 extraction with our intuitive tool that reads and prefills
							your form fields automatically</li>
						<li><span class="fa fa-check text-success"></span> Post
							filing support if required</li>
						<li><span class="fa fa-check text-success"></span> Post
							filing, Account Page access, with details of your uploaded
							documents & past returns</li>
						<li><span class="fa fa-check text-success"></span> We ensure
							satisfaction and accuracy guarantees</li>
						<li><span class="fa fa-check text-success"></span> Best in
							industry proprietary and in-house built application portal</li>
						<li><span class="fa fa-check text-success"></span> Easy,
							hassle free, fast and user friendly application</li>
						<li><span class="fa fa-check text-success"></span> Tips and
							helpful hints to guide you in filling up your details</li>
						<li><span class="fa fa-check text-success"></span> 100%
							secure with encryption measures built in and an assurance about
							confidentiality of your personal information</li>
					</ul>
				</div>
			</div>
			<hr>
		</div>
			<div class="col-md-6">
				<div id="sticky" class="modal-content">
					<h1 align="center">Registeration Page</h1>
					<hr>
					<div class="modal-body" ng-app="myApp"
						ng-controller="RegistrationController">
						<div class="well">
							<fieldset>
								<div class="form-group label-floating">
									<input type="text" id="userIdRegis" class="form-control"
										title="Please enter you id" placeholder="Enter Email Id"
										ng-model="userIdRegis" required="" />

								</div>
								<div class="form-group label-floating">
									<input type="text" id="registrationPass" class="form-control"
										ng-model="registrationPass" placeholder="Enter Password"
										required="" />
								</div>
								<div class="form-group label-floating">
									<input type="text" id="registrationRePass" class="form-control"
										ng-model="registrationRePass" placeholder="Enter Re-Enter Password"
										required="" />
								</div>
							</fieldset>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary btn-block"
							ng-click="register()">Register</button>
					</div>
				</div>
			</div>
		</div>
	</div>
