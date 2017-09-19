<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<!-- <link rel="shortcut icon" href="images/favicon.png"> -->

<title>Editable Table</title>

<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<!-- <link href="font-awesome/css/font-awesome.css" rel="stylesheet" /> -->

<!-- <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" /> -->

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<!-- <link href="css/style-responsive.css" rel="stylesheet" /> -->

<style>
#loginForm {
	width: "250px";
	float: right;
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
		<aside>
			<div id="sidebar" class="nav-collapse">
				<!-- sidebar menu start-->
				<div class="leftside-navigation">
					<ul class="sidebar-menu" id="nav-accordion">
						<li><a href="index.html"> <i class="fa fa-dashboard"></i>
								<span>Dashboard</span>
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
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!-- page start-->

				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<header class="panel-heading">
								<span class="tools pull-right"> <a href="javascript:;"
									class="fa fa-chevron-down"></a> <a href="javascript:;"
									class="fa fa-cog"></a> <a href="javascript:;"
									class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="adv-table editable-table ">
									<div class="clearfix">
										<div class="btn-group">
											<button id="editable-sample_new" class="btn btn-primary">
												Add New <i class="fa fa-plus"></i>
											</button>
										</div>
										<div class="btn-group pull-right">
											<button class="btn btn-default dropdown-toggle"
												data-toggle="dropdown">
												Tools <i class="fa fa-angle-down"></i>
											</button>
											<ul class="dropdown-menu pull-right">
												<li><a href="#">Print</a></li>
												<li><a href="#">Save as PDF</a></li>
												<li><a href="#">Export to Excel</a></li>
											</ul>
										</div>
									</div>
									<div class="space15"></div>
									<table class="table table-striped table-hover table-bordered"
										id="editable-sample">
										<thead>
											<tr>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Points</th>
												<th>Status</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tbody>
											<tr class="">
												<td>Jonathan</td>
												<td>Smith</td>
												<td>3455</td>
												<td class="center">Lorem ipsume</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Mojela</td>
												<td>Firebox</td>
												<td>567</td>
												<td class="center">new user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Akuman</td>
												<td>Dareon</td>
												<td>987</td>
												<td class="center">ipsume dolor</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Theme</td>
												<td>Bucket</td>
												<td>342</td>
												<td class="center">Good Org</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhone</td>
												<td>Doe</td>
												<td>345</td>
												<td class="center">super user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Margarita</td>
												<td>Diar</td>
												<td>456</td>
												<td class="center">goolsd</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhon Doe</td>
												<td>Jhon Doe</td>
												<td>1234</td>
												<td class="center">user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Helena</td>
												<td>Fox</td>
												<td>456</td>
												<td class="center">Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Aishmen</td>
												<td>Samuel</td>
												<td>435</td>
												<td class="center">super Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>dream</td>
												<td>Land</td>
												<td>562</td>
												<td class="center">normal user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>babson</td>
												<td>milan</td>
												<td>567</td>
												<td class="center">nothing</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Waren</td>
												<td>gufet</td>
												<td>622</td>
												<td class="center">author</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhone</td>
												<td>Doe</td>
												<td>345</td>
												<td class="center">super user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Margarita</td>
												<td>Diar</td>
												<td>456</td>
												<td class="center">goolsd</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhon Doe</td>
												<td>Jhon Doe</td>
												<td>1234</td>
												<td class="center">user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Helena</td>
												<td>Fox</td>
												<td>456</td>
												<td class="center">Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Aishmen</td>
												<td>Samuel</td>
												<td>435</td>
												<td class="center">super Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>dream</td>
												<td>Land</td>
												<td>562</td>
												<td class="center">normal user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>babson</td>
												<td>milan</td>
												<td>567</td>
												<td class="center">nothing</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Waren</td>
												<td>gufet</td>
												<td>622</td>
												<td class="center">author</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhone</td>
												<td>Doe</td>
												<td>345</td>
												<td class="center">super user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Margarita</td>
												<td>Diar</td>
												<td>456</td>
												<td class="center">goolsd</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhon Doe</td>
												<td>Jhon Doe</td>
												<td>1234</td>
												<td class="center">user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Helena</td>
												<td>Fox</td>
												<td>456</td>
												<td class="center">Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Aishmen</td>
												<td>Samuel</td>
												<td>435</td>
												<td class="center">super Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>dream</td>
												<td>Land</td>
												<td>562</td>
												<td class="center">normal user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>babson</td>
												<td>milan</td>
												<td>567</td>
												<td class="center">nothing</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Waren</td>
												<td>gufet</td>
												<td>622</td>
												<td class="center">author</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
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
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate.js"></script>

	<script src="bs3/js/bootstrap.min.js"></script>
	<!-- <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script> -->
	<!-- <script src="js/jquery.scrollTo.min.js"></script> -->
	<!-- <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script> -->
	<!-- <script src="js/jquery.nicescroll.js"></script> -->
	<!--Easy Pie Chart-->
	<!-- <script src="js/easypiechart/jquery.easypiechart.js"></script> -->
	<!--Sparkline Chart-->
	<!-- <script src="js/sparkline/jquery.sparkline.js"></script> -->
	<!--jQuery Flot Chart-->
	<!-- <script src="js/flot-chart/jquery.flot.js"></script> -->
	<!-- <script src="js/flot-chart/jquery.flot.tooltip.min.js"></script> -->
	<!-- <script src="js/flot-chart/jquery.flot.resize.js"></script> -->
	<!-- <script src="js/flot-chart/jquery.flot.pie.resize.js"></script> -->

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->
	<!-- <script src="js/scripts.js"></script> -->

	<!--script for this page only-->
	<script src="js/table-editable.js"></script>

	<!-- END JAVASCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			EditableTable.init();
		});
	</script>

</body>
</html>