<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--    <html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">  -->
<html>
<head>
<title>Dashboard</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/candidateval.js"></script>
<script src="${contextPath}/resources/css/welcomepage.css"></script>

<style>
.pd-b13 {
	padding-bottom: 13px;
}

.margin-t13 {
	margin-top: 13px;
}

.bg-blue {
	background-color: #47c4f5;
}

.color-white {
	color: white !important;
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

label {
	font-family: Arial;
	font-size: 15px;
	color: green;
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
<meta charset="ISO-8859-1">
</head>
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
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>

			<h5 class="text-left color-white">
				Welcome ${pageContext.request.userPrincipal.name} | <a
					onclick="document.forms['logoutForm'].submit()">Logout</a>
			</h5>
		</c:if>

	</div>
	<script>
		$(document)
				.ready(
						function() {
							$('#clockdiv')
									.ready(
											function() {
												var clock = setInterval(
														clocktiming, 1000);

												function clocktiming() {
													var d = new Date();
													var madhav = d
															.toLocaleTimeString();
													document
															.getElementById(
																	'showclock')
															.setAttribute(
																	"style",
																	" font-size:30px; color:green; font-family:viewport;  margin-right: 30px; text-align:right; ");
													document
															.getElementById('showclock').innerHTML = madhav;
												}
											});
						});
	</script>

	<div class="col-md-12 margin-t13">
		<div class="col-md-2">
			<h3 class="text-center font-bold">RT</h3>
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a data-toggle="tab" href="#dashboard">Dashboard</a></li>
				<li><a data-toggle="tab" href="#new-candidate">New
						Candidate</a></li>
				<li><a data-toggle="tab" href="#new-schedule">New Schedule</a></li>
			</ul>
		</div>



		<div class="col-md-8">
			<h3 class="text-center font-bold">Recruitment Tracker</h3>
			<div class="tab-content">
				<div class="com-md-12 tab-pane fade in active" id="dashboard">
					<div class="row">
						<div class="col-md-2 no-padding  color-white">

							<button class="btn bg-blue color-white">New Candidate</button>

						</div>
						<div class="col-md-2 no-padding color-white">
							<button class="btn bg-blue color-white">New Schedule</button>
						</div>
					</div>
					<div class="row margin-t13">

						<div class="col-md-5 no-padding">
							<input class="form-control " type="text" id="search"
								placeholder="Search By - Name">
						</div>
						<div class="col-md-1 no-padding">
							<button type="button" class="btn bg-blue color-white" id="can1">Search</button>
						</div>

					</div>

					<br />
					<div id="pageshow">
						<div class="col-md-10">
							<script>
								$(document).ready(function() {
									var page = 0;

									$.post("/dashboard", {
										pagenumber : page
									}, function(data) {
										$('#pageshow').html(data);
									});
									$('#page1').keyup(function() {
										var page = $('#page1').val();
										if (page == "") {
											page = this;
										}
										$.post("/dashboard", {
											pagenumber : page
										}, function(data) {
											$('#pageshow').html(data);
										});
									});
									$('#can1').click(function() {
										var name = $('#search').val();
										alert(name);
										$.post("/candidate6", {
											n3 : name
										}, function(data) {
											$('#pageshow').html(data);
										});
									});
								});
							</script>
						</div>
					</div>
					<br>
					<br /> <input type="text" id="page1" placeholder="page No..">

				</div>


				<div class="com-md-10 tab-pane" id="new-candidate">
					<form action="/candidate" method="post" id="submit_form">
						<!-- <form action="#" th:action="@{/save}" th:object="${product}" method="post">   -->
						<div class="container">
							<fieldset>
								<legend
									style="font-size: 25px; color: blue; font-family: Verdana">
									New Candidate </legend>
								<br></br> <br />
								<div class="form-group">
									<div class="col-md-2">
										<label> Client name : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="client_name"
											id="client_name" autocomplete="off" />
										<h5 id="cn_error"></h5>
									</div>

									<div class="col-md-2">
										<label> Recruiter name : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="recruiter_name"
											id="recruiter_name" autocomplete="off" />
										<h5 id="rn_error"></h5>
									</div>
								</div>
								<br>
								<br /> <br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label for="skill">Skill :</label>
									</div>
									<div class="col-md-3">
										<select class="form-control" name="skill">
											<option value="java">Java</option>
											<option value="c#">C#</option>
											<option value="php">PHP</option>
											<option value="html">HTML</option>
										</select>
									</div>
								</div>
								<br /> <br>
								<br> <br />
								<div class="form-group">
									<div class="col-md-2">
										<label> Candidate name :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="name"
											id="user_name" autocomplete="off" />
										<h5 id="un_error"></h5>
									</div>
								</div>
								<br>
								<br>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label> Mobile No. :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text"
											pattern="[1-9]{1}[0-9]{9}" name="mobile" id="mobile" />
										<h5 id="m_error"></h5>
									</div>
									<div class="col-md-2">
										<label> Email Id : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="email"
											id="email" />
										<h5 id="e_error"></h5>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label> CTC :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="ctc" id="ctc" />
										<h5 id="ctc_error"></h5>
									</div>
									<div class="col-md-2">
										<label> Expected CTC : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="expected_ctc"
											id="expected_ctc" />
										<h5 id="ec_error"></h5>
									</div>
									<br>
									<br>
								</div>
								<br></br>
								<br />

								<div class="form-group">
									<div class="col-md-2">
										<label> Notice Period :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="notice_period"
											id="notice_period" />
										<h5 id="np_error"></h5>
									</div>
									<div class="col-md-2">
										<label> Current Status : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="current_status"
											id="current_status" />
										<h5 id="cs_error"></h5>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br>
								<br />


								<div class="form-group">
									<div class="col-md-2">
										<label> Offered Location :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text"
											name="offered_location" id="offered_location" />
										<h5 id="of_error"></h5>
									</div>
									<div class="col-md-2">
										<label> Current Location : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text"
											name="current_location" id="current_location" required />
										<h5 id="cl_error"></h5>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label> Comments : </label>
									</div>
									<div class="col-md-10">
									<textarea id="comments" name="comments"></textarea>
										<h5 id="c_error"></h5>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br>
								<br />

								<div class="form-group">
									<div class="col-md-2">
										<label> Interview Type : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="interview_type" id="interview_type" required />
										<h5 id="it_error"></h5>
									</div>
									<div class="col-md-2">
										<label>Interview Status :</label>
									</div>
									<div class="col-md-3">
										<select class="form-control" name="interview_status">
											<option value="selected">Selected</option>
											<option value="rejected">Rejected</option>
											<option value="pending">Pending</option>
										</select>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br>
								<br />

								<div class="form-group">
									<div class="col-md-2">
										<label>Schedule Date : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="date" name="schedule_date"
											required />
									</div>
									<div class="col-md-2">
										<label>Schedule Time : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="time" name="schedule_time"
											required />
									</div>
									<br>
									<br>
								</div>
								<br>
								<br>
								<br />


								<div class="col-md-2 no-padding">
									<input type="reset" id="resetbtn" class="btn btn-primary"
										id="resetbtn" value="Reset"> <input type="submit"
										id="submitbtn" class="btn btn-primary" value="Submit">
								</div>

							</fieldset>
						</div>

					</form>
				</div>


				<script type="text/javascript">
					
				</script>


				<div class="com-md-10 tab-pane" id="new-schedule">
				<!--  	<form> -->
						<div class="container">
							<fieldset>
								<legend style="font-size: 25px; color: blue;"> New
									Schedule </legend>
								<br>
								<br />
								<div class="form-group">
									<div class="row margin-t13">
										<div class="col-md-5 no-padding">
											<input class="form-control " type="text" name="search"
												placeholder="Search By - Name" id="search5" />
										</div>
										<div class="col-md-1 no-padding">
											<button class="btn bg-blue color-white" id="can"
												type="button">Search</button>
										</div>

										<br>
										<br />

										<div id="divdata2">
											<br>
											<script>
												$(document)
														.ready(
																function() {
																	$('#can')
																			.click(
																					function() {
																						var name = $(
																								'#search5')
																								.val();
																						alert(name);
																						$
																								.post(
																										"/candidate6",
																										{
																											n3 : name
																										},
																										function(
																												data) {
																											$(
																													'#divdata2')
																													.html(
																															data);
																										});
																					});
																});
											</script>
										</div>
									</div>
								</div>


								<br>
								<br />

								<div class="form-group">

									<div class="col-md-2">
										<label> Client name : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" id="client"
											name="client_name"/> <span id="client_error"></span>
									</div>
									<div class="col-md-2">
										<label> Recruiter : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" id="recruiter"
											name="recruiter_name"/> <span id="recruiter_error"></span>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label for="skill">Skill :</label>
									</div>
									<div class="col-md-3">
										<select class="form-control" name="skill">
											<option value="java">Java</option>
											<option value="c#">C#</option>
											<option value="php">PHP</option>
											<option value="html">HTML</option>
										</select>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label> Candidate name :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="name" />
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label> Mobile No. :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="mobile" />
									</div>
									<div class="col-md-2">
										<label> Email Id : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="email"/>
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label> CTC :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="ctc"/>
									</div>
									<div class="col-md-2">
										<label> Expected CTC (Per month current status) : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="expected_ctc" />
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />

								<div class="form-group">
									<div class="col-md-2">
										<label> Notice Period (Day) :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="notice_period" />
									</div>
									<div class="col-md-2">
										<label> Current Status : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text" name="current_status" />
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />

								<div class="form-group">
									<div class="col-md-2">
										<label> Offered Location :</label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text"
											name="offered_location" />
									</div>
									<div class="col-md-2">
										<label> Current Location : </label>
									</div>
									<div class="col-md-3">
										<input class="form-control" type="text"
											name="current_location" />
									</div>
									<br>
									<br>
								</div>
								<br>
								<br />
								<div class="form-group">
									<div class="col-md-2">
										<label> Comments : </label>
									</div>
									<div class="col-md-5">
										<textarea id="comments" name="comments"></textarea>
									</div>
								</div>
								<br><br>
								<br/>

								<div class="col-md-10">
									<div class="row margin-t13">
										<table class="table table-bordered" style="text-align: center" id="textBox">
											<thead>
												<tr>
													<th style="text-align: center">#</th>
													<th style="text-align: center">Schedule details</th>
													<th></th>

												</tr>
											</thead>
											<tbody>
											<!--  	<tr>
													<td>1</td>
													<td>1-Apr-2020</td>
													<td></td>
												</tr>
											-->
											</tbody>
										</table>
									</div>
									<input type="button" class="btn bg-blue color-white"
										value="Add schedule" id="addbtn">
								</div>
								<br>
								<br />

								<div class="form-group">
									<div id="textBox1">
										<!--  <input type="text" id="comment" name="comment" class="form-control" placeholder="Enter your comment here"> 
					<input type="submit" class="btn bg-blue color-white" value="Add schedule" id="addbtn">
				 	<input type="submit" class="btn bg-blue color-white" value="Remove schedule" id="removebtn">  -->
										<!--  <input type="button" class="btn bg-blue color-white" value="Add schedule" id="addbtn"> -->
									</div>
								</div>
								<br /> <br>
								<br> <br />

								<script>
									$(document)
											.ready(
													function() {
														let lineNo = 1;
														$('#add-schedule')
																.hide();
														$('#addbtn').click(function() {
																			if (lineNo < 4) {
																				$('#add-schedule').show();
																			} else {
																				alert("**Only 4 schedule allowed");
																			}
																		
														$('#scheduleaddbtn').click(function() 
																{
																			var st=$('#schedule_time').val();
																			var it=$('#interview_type').val();
																			var is=$('#interview_status').val();
																			var doj=$('#doj').val();
																			var can_id=$('#candidate_id').val();
																			var sd = $('#schedule_date').val();
																			var markup = "<tr><td>"+ lineNo++
																					+ "</td><td>"
																					+ sd
																					+ "</td><td></td></tr>";
																					
																			$('#textBox').append(markup);
																			$('#add-schedule').hide();
																			$.post("/schedule",{std : sd,
																					sdd: st,
																					itd: it,
																					isd: is,
																					doj:doj,
																					can_id:can_id}, function(data){
																						alert("your schedule is added");
																					});
																								
																		});
													}); 
													});
								</script>
								<br>
								<br>
								<br>
								<br> <br />
								<div class="com-md-10 tab-pane" id="add-schedule">
							<!--  	  	<form:form  action="/schedule1" method="post">  -->  
										<div class="container">
											<div class="form-group">
												<div class="col-md-2">
													<label>Schedule Date : </label>
												</div>
												<div class="col-md-3">
													<input class="form-control" type="date"
														name="schedule_date" id="schedule_date" />
												</div>
												<div class="col-md-2">
													<label>Schedule Time : </label>
												</div>
												<div class="col-md-3">
													<input class="form-control" type="time"
														name="schedule_time" id="schedule_time"/>
												</div>
												<br>
												<br>
											</div>
											<br><br><br/>

											<div class="form-group">
												<div class="col-md-2">
													<label> Interview Type : </label>
												</div>
												<div class="col-md-3">
													<input class="form-control" type="text"
														name="interview_type" id="interview_type" />
													<h5 id="it_error"></h5>
												</div>
												<div class="col-md-2">
													<label>Interview Status :</label>
												</div>
												<div class="col-md-3">
													<select class="form-control" name="interview_status" id="interview_status">
														<option value="selected">Selected</option>
														<option value="rejected">Rejected</option>
														<option value="pending">Pending</option>
													</select>
												</div>
												<br><br>
											</div>
											<br><br><br/>
											<div class="form-group">
												<div class="col-md-2">
													<label> DOJ : </label>
												</div>
												<div class="col-md-3">
													<input class="form-control" type="date" name="doj" id="doj"/>
													<h5 id="doj_error"></h5>
												</div>
											 <div class="col-md-2">
													<label>  Candidate  id : </label>
												</div>
												<div class="col-md-3">
													<input class="form-control" type="number" name="id" id="candidate_id" />
													<h5 id="candidate_id"></h5>
												</div> 
											</div>
											<br><br><br/>
											<div class="col-md-1 no-padding">
												<br><br/>
												<button class="btn bg-blue color-white" id="scheduleaddbtn"
													type="button">Submit Schedule</button>
											</div>
										</div>
								  <!--  	</form:form> --> 
								</div>				    
							<br><br><br><br/>
					<!--  	<div class="col-md-2 no-padding">
									<br />
									<button class="btn bg-blue color-white" type="reset">Reset</button>
									<button class="btn bg-blue color-white" 
										type="submit">Submit</button>
								</div>
							-->

							</fieldset>
						</div>

				<!--  	</form> -->

				</div>

			</div>
		</div>
		<div class="col-md-2">
			<div id="clockdiv">
				<h2 id="showclock"></h2>
			</div>
		</div>
	</div>
</body>
</html>