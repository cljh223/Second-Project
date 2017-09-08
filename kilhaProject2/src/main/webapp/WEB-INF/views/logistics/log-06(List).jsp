<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap-switch.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-datepicker/css/datepicker.css" />
<link href="css/bootstrap-reset.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<style>
	#loginForm{
	width : "250px";
	float : right;
	}
</style>
</head>
<body>
	<section id="container">
		<!--header start-->
		<header class="header fixed-top clearfix">
			<!--logo start-->
			<div class="brand">

				<a href="index.html" class="logo"> <img src="images/logo.png"
					alt="">
				</a>
				<div class="sidebar-toggle-box">
					<div class="fa fa-bars"></div>
				</div>
			</div>
			<!--logo end-->

			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i class="fa fa-tasks"></i>
							<span class="badge bg-success">8</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<li>
								<p class="">You have 8 pending tasks</p>
							</li>
							<li><a href="#">
									<div class="task-info clearfix">
										<div class="desc pull-left">
											<h5>Target Sell</h5>
											<p>25% , Deadline 12 June’13</p>
										</div>
										<span class="notification-pie-chart pull-right"
											data-percent="45"> <span class="percent"></span>
										</span>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info clearfix">
										<div class="desc pull-left">
											<h5>Product Delivery</h5>
											<p>45% , Deadline 12 June’13</p>
										</div>
										<span class="notification-pie-chart pull-right"
											data-percent="78"> <span class="percent"></span>
										</span>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info clearfix">
										<div class="desc pull-left">
											<h5>Payment collection</h5>
											<p>87% , Deadline 12 June’13</p>
										</div>
										<span class="notification-pie-chart pull-right"
											data-percent="60"> <span class="percent"></span>
										</span>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info clearfix">
										<div class="desc pull-left">
											<h5>Target Sell</h5>
											<p>33% , Deadline 12 June’13</p>
										</div>
										<span class="notification-pie-chart pull-right"
											data-percent="90"> <span class="percent"></span>
										</span>
									</div>
							</a></li>

							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="fa fa-envelope-o"></i> <span class="badge bg-important">4</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<li>
								<p class="red">You have 4 Mails</p>
							</li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="images/avatar-mini.jpg"></span> <span
									class="subject"> <span class="from">Jonathan
											Smith</span> <span class="time">Just now</span>
								</span> <span class="message"> Hello, this is an example msg. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="images/avatar-mini-2.jpg"></span> <span
									class="subject"> <span class="from">Jane Doe</span> <span
										class="time">2 min ago</span>
								</span> <span class="message"> Nice admin template </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="images/avatar-mini-3.jpg"></span> <span
									class="subject"> <span class="from">Tasi sam</span> <span
										class="time">2 days ago</span>
								</span> <span class="message"> This is an example msg. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="images/avatar-mini.jpg"></span> <span
									class="subject"> <span class="from">Mr. Perfect</span> <span
										class="time">2 hour ago</span>
								</span> <span class="message"> Hi there, its a test </span>
							</a></li>
							<li><a href="#">See all messages</a></li>
						</ul></li>
					<!-- inbox dropdown end -->
					<!-- notification dropdown start-->
					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="fa fa-bell-o"></i> <span class="badge bg-warning">3</span>
					</a>
						<ul class="dropdown-menu extended notification">
							<li>
								<p>Notifications</p>
							</li>
							<li>
								<div class="alert alert-info clearfix">
									<span class="alert-icon"><i class="fa fa-bolt"></i></span>
									<div class="noti-info">
										<a href="#"> Server #1 overloaded.</a>
									</div>
								</div>
							</li>
							<li>
								<div class="alert alert-danger clearfix">
									<span class="alert-icon"><i class="fa fa-bolt"></i></span>
									<div class="noti-info">
										<a href="#"> Server #2 overloaded.</a>
									</div>
								</div>
							</li>
							<li>
								<div class="alert alert-success clearfix">
									<span class="alert-icon"><i class="fa fa-bolt"></i></span>
									<div class="noti-info">
										<a href="#"> Server #3 overloaded.</a>
									</div>
								</div>
							</li>

						</ul></li>
					<!-- notification dropdown end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-nav clearfix">
				<!--search & user info start-->
				<table id="loginForm">
					<tr>
						<td><input type="text" class="form-control search"
							placeholder=" Search"></td>
						<td>&nbsp</td>
						<!-- user login dropdown start-->
						<td><%@include file="login.jsp"%></td>
						<!-- user login dropdown end -->
						<td>&nbsp</td>
						<td>
							<div class="toggle-right-box">
								<div class="fa fa-bars"></div>
							</div>
						</td>
					</tr>
				</table>
				<!--search & user info end-->
			</div>
		</header>
		<!--header end-->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse">
				<!-- sidebar menu start-->
				<div class="leftside-navigation">
					<ul class="sidebar-menu" id="nav-accordion">
						<li><a class="active" href="index.html"> <i
								class="fa fa-dashboard"></i> <span>Dashboard</span>
						</a></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-truck"></i> <span>Logistics</span>
						</a>
							<ul class="sub">
								<li><a href="first">log-01, 02, 07</a></li>
								<li><a href="second">log-03, 11</a></li>
								<li><a href="third">log-04</a></li>
								<li><a href="fourth">log-05, 12</a></li>
								<li><a href="fifth">log-06(List)</a></li>
								<li><a href="sixth">log-06(Timetable)</a></li>
								<li><a href="seventh">log-08,13</a></li>
								<li><a href="eighth">log-09, 10</a></li>
								<li><a href="nineth">log-13</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<section id="main-content">
			<section class="wrapper">
				<div class="col-lg-2 col-xs-11">
					<div data-date-viewmode="years" data-date-format="dd-mm-yyyy"
						data-date="12-02-2017" class="input-append date dpYears">
						<input type="text" readonly="" value="12-02-2017" size="16"
							class="form-control"> <span
							class="input-group-btn add-on">
							<button class="btn btn-primary" type="button">
								<i class="fa fa-calendar"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="m-bot20" id="ttableBtn">
					<input type="checkbox" checked class="switch-large"
						data-label-icon="fa fa-calendar"
						data-on-label="<i class='fa fa-check'></i>"
						data-off-label="<i class='fa fa-times'></i>">
				</div>

				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<header class="panel-heading">
								<div class="btn-group">
									<button id="editable-sample_new" class="btn btn-primary">
										Add New <i class="fa fa-plus"></i>
									</button>
								</div>
								General Table <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<table class="table  table-hover general-table">
									<thead>
										<tr>
											<th>Company</th>
											<th class="hidden-phone">Descrition</th>
											<th>Profit</th>
											<th>Status</th>
											<th>Progress</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#">Graphics</a></td>
											<td class="hidden-phone">Lorem Ipsum dorolo imit</td>
											<td>1320.00$</td>
											<td><span class="label label-info label-mini">Due</span></td>
											<td>
												<div class="progress progress-striped progress-xs">
													<div style="width: 40%" aria-valuemax="100"
														aria-valuemin="0" aria-valuenow="40" role="progressbar"
														class="progress-bar progress-bar-success">
														<span class="sr-only">40% Complete (success)</span>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><a href="#"> ThemeBucket </a></td>
											<td class="hidden-phone">Lorem Ipsum dorolo</td>
											<td>556.00$</td>
											<td><span class="label label-warning label-mini">Due</span></td>
											<td>
												<div class="progress progress-striped progress-xs">
													<div style="width: 70%" aria-valuemax="100"
														aria-valuemin="0" aria-valuenow="40" role="progressbar"
														class="progress-bar progress-bar-danger">
														<span class="sr-only">70% Complete (success)</span>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><a href="#"> XYZ </a></td>
											<td class="hidden-phone">Lorem Ipsum dorolo</td>
											<td>13240.00$</td>
											<td><span class="label label-success label-mini">Paid</span></td>
											<td>
												<div class="progress progress-striped progress-xs">
													<div style="width: 55%" aria-valuemax="100"
														aria-valuemin="0" aria-valuenow="40" role="progressbar"
														class="progress-bar progress-bar-warning">
														<span class="sr-only">55% Complete (success)</span>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><a href="#"> BCSE </a></td>
											<td class="hidden-phone">Lorem Ipsum dorolo</td>
											<td>3455.50$</td>
											<td><span class="label label-danger label-mini">Paid</span></td>
											<td>
												<div class="progress progress-striped progress-xs">
													<div style="width: 90%" aria-valuemax="100"
														aria-valuemin="0" aria-valuenow="40" role="progressbar"
														class="progress-bar progress-bar-info">
														<span class="sr-only">90% Complete (success)</span>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><a href="#">AVC Ltd</a></td>
											<td class="hidden-phone">Lorem Ipsum dorolo imit</td>
											<td>110.00$</td>
											<td><span class="label label-primary label-mini">Due</span></td>
											<td>
												<div class="progress progress-striped progress-xs">
													<div style="width: 60%" aria-valuemax="100"
														aria-valuemin="0" aria-valuenow="40" role="progressbar"
														class="progress-bar progress-bar-success">
														<span class="sr-only">60% Complete (success)</span>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td><a href="#"> Themeforest </a></td>
											<td class="hidden-phone">Lorem Ipsum dorolo</td>
											<td>456.00$</td>
											<td><span class="label label-warning label-mini">Due</span></td>
											<td>
												<div class="progress progress-striped progress-xs">
													<div style="width: 40%" aria-valuemax="100"
														aria-valuemin="0" aria-valuenow="40" role="progressbar"
														class="progress-bar progress-bar-danger">
														<span class="sr-only">40% Complete (success)</span>
													</div>
												</div>
											</td>
										</tr>

									</tbody>
								</table>
							</div>
						</section>
					</div>
				</div>

			</section>
		</section>

		<!--right sidebar start-->
		<div class="right-sidebar">
			<div class="search-row">
				<input type="text" placeholder="Search" class="form-control">
			</div>
			<div class="right-stat-bar">
				<ul class="right-side-accordion">
					<li class="widget-collapsible"><a href="#"
						class="head widget-head red-bg active clearfix"> <span
							class="pull-left">work progress (5)</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="prog-row side-mini-stat clearfix">
									<div class="side-graph-info">
										<h4>Target sell</h4>
										<p>25%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="target-sell"></div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="side-graph-info">
										<h4>product delivery</h4>
										<p>55%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="p-delivery">
											<div class="sparkline" data-type="bar" data-resize="true"
												data-height="30" data-width="90%" data-bar-color="#39b7ab"
												data-bar-width="5"
												data-data="[200,135,667,333,526,996,564,123,890,564,455]">
											</div>
										</div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="side-graph-info payment-info">
										<h4>payment collection</h4>
										<p>25%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="p-collection">
											<span class="pc-epie-chart" data-percent="45"> <span
												class="percent"></span>
											</span>
										</div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="side-graph-info">
										<h4>delivery pending</h4>
										<p>44%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="d-pending"></div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="col-md-12">
										<h4>total progress</h4>
										<p>50%, Deadline 12 june 13</p>
										<div class="progress progress-xs mtop10">
											<div style="width: 50%" aria-valuemax="100" aria-valuemin="0"
												aria-valuenow="20" role="progressbar"
												class="progress-bar progress-bar-info">
												<span class="sr-only">50% Complete</span>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
					<li class="widget-collapsible"><a href="#"
						class="head widget-head terques-bg active clearfix"> <span
							class="pull-left">contact online (5)</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1_small.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Jonathan Smith</a>
										</h4>
										<p>Work for fun</p>
									</div>
									<div class="user-status text-danger">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Anjelina Joe</a>
										</h4>
										<p>Available</p>
									</div>
									<div class="user-status text-success">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/chat-avatar2.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">John Doe</a>
										</h4>
										<p>Away from Desk</p>
									</div>
									<div class="user-status text-warning">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1_small.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Mark Henry</a>
										</h4>
										<p>working</p>
									</div>
									<div class="user-status text-info">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Shila Jones</a>
										</h4>
										<p>Work for fun</p>
									</div>
									<div class="user-status text-danger">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<p class="text-center">
									<a href="#" class="view-btn">View all Contacts</a>
								</p>
							</li>
						</ul></li>
					<li class="widget-collapsible"><a href="#"
						class="head widget-head purple-bg active"> <span
							class="pull-left"> recent activity (3)</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="prog-row">
									<div class="user-thumb rsn-activity">
										<i class="fa fa-clock-o"></i>
									</div>
									<div class="rsn-details ">
										<p class="text-muted">just now</p>
										<p>
											<a href="#">Jim Doe </a>Purchased new equipments for zonal
											office setup
										</p>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb rsn-activity">
										<i class="fa fa-clock-o"></i>
									</div>
									<div class="rsn-details ">
										<p class="text-muted">2 min ago</p>
										<p>
											<a href="#">Jane Doe </a>Purchased new equipments for zonal
											office setup
										</p>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb rsn-activity">
										<i class="fa fa-clock-o"></i>
									</div>
									<div class="rsn-details ">
										<p class="text-muted">1 day ago</p>
										<p>
											<a href="#">Jim Doe </a>Purchased new equipments for zonal
											office setup
										</p>
									</div>
								</div>
							</li>
						</ul></li>
					<li class="widget-collapsible"><a href="#"
						class="head widget-head yellow-bg active"> <span
							class="pull-left"> shipment status</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="col-md-12">
									<div class="prog-row">
										<p>Full sleeve baby wear (SL: 17665)</p>
										<div class="progress progress-xs mtop10">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">
												<span class="sr-only">40% Complete</span>
											</div>
										</div>
									</div>
									<div class="prog-row">
										<p>Full sleeve baby wear (SL: 17665)</p>
										<div class="progress progress-xs mtop10">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 70%">
												<span class="sr-only">70% Completed</span>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
				</ul>

			</div>

		</div>
		<!--right sidebar end-->
	</section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap-switch.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="js/toggle-init.js"></script>
	<script src="js/advanced-form.js"></script>
	<!--script for this page-->
</body>
</html>