<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
.pd-b13 {
	padding-bottom: 13px;
}

.bg-blue {
	background-color: #47c4f5;
}

.color-white {
	color: white;
}

.font-bold {
	font-weight: bold;
}

/**background*/
.bg-white {
	background: white;
}

.bg-blue {
	background: #49a1f3;
}

/**color*/
.color-white {
	color: white;
}

.color-blue {
	color: #49a1f3;
}

.box-shadow-2px {
	box-shadow: 2px 2px 2px #ccc;
}

/**width*/
.width-100 {
	width: 100%
}

/**Height*/
.height-50px {
	height: 50px;
}

.height-25px {
	height: 25px;
}

.height-35 {
	height: 25px
}

.height-inherit {
	height: inherit;
}

/**Padding*/
.pd-15 {
	padding: 15px;
}

.pd-5 {
	padding: 15px;
}

.pd-l5 {
	padding-left: 5px;
}

.pd-l15 {
	padding-left: 15px;
}

.pd-r15 {
	padding-left: 15px;
}

.no-padding {
	padding: 0;
}
/**Margin**/
.mt-5 {
	margin-top: 5px;
}

.mt-15 {
	margin-top: 15px;
}
/**font-size*/
.ft-size-18 {
	font-size: 18px;
}

/**border radius*/
.border-rad-15 {
	border-radius: 15px;
}

/** text*/
.text-center {
	text-align: center;
}

.text-left {
	text-align: left;
}
/**switch*/
.switch {
	position: relative;
	display: inline-block;
	width: 32px;
	height: 15px;
}

.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 13px;
	width: 13px;
	left: 3px;
	bottom: 1px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(13px);
	-ms-transform: translateX(13px);
	transform: translateX(13px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 18px;
}

.slider.round:before {
	border-radius: 50%;
}

/***float */
.float-left {
	float: left;
}

.float-right {
	float: right;
}
/**error text*/
.error {
	color: red;
	text-shadow: 2px 2px 2px #ccc;
}

/** cursor**/
.cursor-pt:hover {
	cursor: pointer;;
}
/**Font family**/
html body {
	font-family: sans-serif;
}


</style>
<body>

	<header>
		<div class="col-md-12 box-shadow-2px bg-white height-50px">
			<div class="col-md-1 no-padding">
				<img height="50" width="100"
					src="https://neoquant.com/wp-content/uploads/2017/01/logo.jpg"
					alt="NeoQuant">
			</div>
		</div>
	</header>

	<div class="col-md-12 box-shadow-2px bg-blue height-25px">
		<p class="text-left color-white">Login</p>
	</div>
	<div class="col-md-offset-4 col-md-4">
		<div class="col-md-12">
			<h2 class="login-title">Sign In</h2>
			<div class="panel panel-default">
				<div class="panel-body">

					<form method="POST" action="login"
						class="form-signin">
						<div class="form-group ${error != null ? 'has-error' : ''}">
							<!--  <span>${message}</span>  -->
							<div class="input-group pd-b13">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-user"></span></span> <input id="username"
									required type="text" [(ngModel)]="username"
									class="form-control" name="username" placeholder="Username" />
							</div>

							<div class="input-group pd-b13">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-lock"></span></span> <input id="password"
									required [(ngModel)]="password" type="password"
									class="form-control" name="password" placeholder="Password" />
								<!--  <span>${error}</span>  --> <input type="hidden"
									name="${_csrf.parameterName}" value="${_csrf.token}" />

							</div>


							<button class="btn bg-blue color-white font-bold" type="submit">
								<i class="fa fa-sign-in"></i> SIGN IN
							</button>
							<br>
							<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>