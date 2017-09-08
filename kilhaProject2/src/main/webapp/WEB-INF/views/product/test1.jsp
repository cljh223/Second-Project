<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">

<meta http-equiv=”X-UA-Compatible” content=”IE=EmulateIE9”>
<meta http-equiv=”X-UA-Compatible” content=”IE=9”>

<link rel="shortcut icon" href="images/favicon.png">
<title>BucketAdmin</title>
<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="js/jquery-ui/jquery-ui-1.10.1.custom.min.css"
	rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="js/jvector-map/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<link href="css/clndr.css" rel="stylesheet">

<!--icheck-->
<link href="js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
<link href="js/iCheck/skins/minimal/red.css" rel="stylesheet">
<link href="js/iCheck/skins/minimal/green.css" rel="stylesheet">
<link href="js/iCheck/skins/minimal/blue.css" rel="stylesheet">
<link href="js/iCheck/skins/minimal/yellow.css" rel="stylesheet">
<link href="js/iCheck/skins/minimal/purple.css" rel="stylesheet">

<link href="js/iCheck/skins/square/square.css" rel="stylesheet">
<link href="js/iCheck/skins/square/red.css" rel="stylesheet">
<link href="js/iCheck/skins/square/green.css" rel="stylesheet">
<link href="js/iCheck/skins/square/blue.css" rel="stylesheet">
<link href="js/iCheck/skins/square/yellow.css" rel="stylesheet">
<link href="js/iCheck/skins/square/purple.css" rel="stylesheet">

<link href="js/iCheck/skins/flat/grey.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/red.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/green.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/blue.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/yellow.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/purple.css" rel="stylesheet">

<script src="https://cdn.anychart.com/js/7.14.3/anychart-bundle.min.js"></script>
<script
	src="https://cdn.anychart.com/samples-data/scatter-charts/combination-of-line-and-marker-charts/data.js"></script>
<link rel="stylesheet"
	href="https://cdn.anychart.com/css/7.14.3/anychart-ui.min.css" />

<!--dynamic table-->
    <link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<!-- Custom styles for this template -->
<link href="css/style.css?version=4" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<style>
#gradient {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>

<script>

	anychart.onDocumentReady(function () {
    chart = anychart.scatter();

    // turn on chart animation
    chart.animation(true);

    // set chart title
    chart.title('System interruptions');

    chart.xScale()
            .minimum(1.5)
            .maximum(5.5)
            .ticks({interval: 1});
    chart.yScale()
            .minimum(40)
            .maximum(100)
            .ticks({interval: 10});

    chart.yAxis().title('Y value');
    chart.xAxis()
            .title('X value')
            .drawFirstLabel(false)
            .drawLastLabel(false);

    chart.interactivity()
            .hoverMode('bySpot')
            .spotRadius(30);

    chart.tooltip().displayMode('union');

    // The data used in this sample can be obtained from the CDN
    // https://cdn.anychart.com/samples-data/scatter-charts/combination-of-line-and-marker-charts/data.js
    var marker = chart.marker(getMarkerData());
    marker.type('triangleup')
            .size(4)
            .hoverSize(7)
            .hoverFill('gold')
            .hoverStroke(anychart.color.darken('gold'));
    marker.tooltip()
            .hAlign('start')
            .format(function () {
                return 'Waiting time: ' + this.value + ' min.\nDuration: ' + this.x + ' min.';
            });

    // The data used in this sample can be obtained from the CDN
    // https://cdn.anychart.com/samples-data/scatter-charts/combination-of-line-and-marker-charts/data.js
    chart.line(getLineData());

    // set container id for the chart
    chart.container('gradient');
    // initiate chart drawing
    chart.draw();
});
    
    </script>
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
				<ul class="nav pull-right top-menu">
					<li><input type="text" class="form-control search"
						placeholder=" Search"></li>
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="images/avatar1_small.jpg"> <span class="username">John
								Doe</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
							<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="login.html"><i class="fa fa-key"></i> Log
									Out</a></li>
						</ul></li>
					<!-- user login dropdown end -->
					<li>
						<div class="toggle-right-box">
							<div class="fa fa-bars"></div>
						</div>
					</li>
				</ul>
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
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-laptop"></i>
                        <span>Production</span>
                    </a>
                    <ul class="sub">
                        <li><a href="test">1st factory</a></li>
                        <li><a href="test">2nd factory</a></li>
                        <li><a href="test1">prediction</a></li>
                        <li><a href="">register</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
            </ul>           
          </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->

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

	<!--main  -->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-4" >
					<div class="feed-box text-center" >
						<section class="panel">
							<div class="panel-body">
								<div class="corner-ribon blue-ribon">
									<i class=""></i>
								</div>
								<a href="#"> <img alt="" src="images/line-chart.png">
								</a>
								<h1>Prediction</h1>
								<p>Gradient Descent for Prediction</p>
								<div style="float: left;">
									<div class="radio single-row" style="float: left; width: 100%">
										<div style="float: left; width: 33%">
											<input type="radio" name="demo-radio">WORK
										</div>
										<div style="float: left; width: 33%">
											<input type="radio" name="demo-radio">COST
										</div>
										<div style="float: left; width: 33%">
											<input type="radio" name="demo-radio">TIME
										</div>
									</div>
									<div>
										<select class="form-control m-bot15" style="width: 350px;">
											<option>select Product</option>
											<option>product1</option>
											<option>product2</option>
											<option>product3</option>
											<option>product4</option>
										</select>
									</div>
									<p></p>
									<div class="input-group m-bot15" style="width: 350px;">
										<input type="text" class="form-control"> <span
											class="input-group-btn">
											<button class="btn btn-success" type="button">Go!</button>
										</span>
									</div>
								</div>
								<div class="region-stats">

									<div class="col-lg-6" style="width:350px;">
										<ul class="clearfix location-earning-stats">
											<li class="stat-divider"><span class="first-city">$734503</span>
												Rocky Mt,NC</li>
											<li class="stat-divider"><span class="second-city">$734503</span>
												Dallas/FW,TX</li>

										</ul>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="col-lg-8">
					<section class="panel">
						<div class="panel-body">
							<div id="gradient" style="height: 370px;"></div>
						</div>
					</section>
				</div>
			</div>
			<div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        DataTables hidden row details example
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                    <div class="panel-body">
                    <div class="adv-table">
                    <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                    <thead>
                    <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th class="hidden-phone">Platform(s)</th>
                        <th class="hidden-phone">Engine version</th>
                        <th class="hidden-phone">CSS grade</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="gradeX">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 4.0</td>
                        <td class="hidden-phone">Win 95+</td>
                        <td class="center hidden-phone">4</td>
                        <td class="center hidden-phone">X</td>
                    </tr>
                    <tr class="gradeC">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 5.0</td>
                        <td class="hidden-phone">Win 95+</td>
                        <td class="center hidden-phone">5</td>
                        <td class="center hidden-phone">C</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 5.5</td>
                        <td class="hidden-phone">Win 95+</td>
                        <td class="center hidden-phone">5.5</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 6</td>
                        <td class="hidden-phone">Win 98+</td>
                        <td class="center hidden-phone">6</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>Internet Explorer 7</td>
                        <td class="hidden-phone">Win XP SP2+</td>
                        <td class="center hidden-phone">7</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>AOL browser (AOL desktop)</td>
                        <td class="hidden-phone">Win XP</td>
                        <td class="center hidden-phone">6</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Firefox 1.0</td>
                        <td class="hidden-phone">Win 98+ / OSX.2+</td>
                        <td class="center hidden-phone">1.7</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Firefox 1.5</td>
                        <td class="hidden-phone">Win 98+ / OSX.2+</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Firefox 2.0</td>
                        <td class="hidden-phone">Win 98+ / OSX.2+</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Firefox 3.0</td>
                        <td class="hidden-phone">Win 2k+ / OSX.3+</td>
                        <td class="center hidden-phone">1.9</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Camino 1.0</td>
                        <td class="hidden-phone">OSX.2+</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Camino 1.5</td>
                        <td class="hidden-phone">OSX.3+</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Netscape 7.2</td>
                        <td class="hidden-phone">Win 95+ / Mac OS 8.6-9.2</td>
                        <td class="center hidden-phone">1.7</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Netscape Browser 8</td>
                        <td class="hidden-phone">Win 98SE+</td>
                        <td class="center hidden-phone">1.7</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Netscape Navigator 9</td>
                        <td class="hidden-phone">Win 98+ / OSX.2+</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.0</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">1</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.1</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">1.1</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.2</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">1.2</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.3</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">1.3</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.4</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">1.4</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.5</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">1.5</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.6</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">1.6</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.7</td>
                        <td class="hidden-phone">Win 98+ / OSX.1+</td>
                        <td class="center hidden-phone">1.7</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Mozilla 1.8</td>
                        <td class="hidden-phone">Win 98+ / OSX.1+</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Seamonkey 1.1</td>
                        <td class="hidden-phone">Win 98+ / OSX.2+</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Epiphany 2.20</td>
                        <td class="hidden-phone">Gnome</td>
                        <td class="center hidden-phone">1.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Webkit</td>
                        <td>Safari 1.2</td>
                        <td class="hidden-phone">OSX.3</td>
                        <td class="center hidden-phone">125.5</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Webkit</td>
                        <td>Safari 1.3</td>
                        <td class="hidden-phone">OSX.3</td>
                        <td class="center hidden-phone">312.8</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Webkit</td>
                        <td>Safari 2.0</td>
                        <td class="hidden-phone">OSX.4+</td>
                        <td class="center hidden-phone">419.3</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Webkit</td>
                        <td>Safari 3.0</td>
                        <td class="hidden-phone">OSX.4+</td>
                        <td class="center hidden-phone">522.1</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Webkit</td>
                        <td>OmniWeb 5.5</td>
                        <td class="hidden-phone">OSX.4+</td>
                        <td class="center hidden-phone">420</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Webkit</td>
                        <td>iPod Touch / iPhone</td>
                        <td class="hidden-phone">iPod</td>
                        <td class="center hidden-phone">420.1</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Webkit</td>
                        <td>S60</td>
                        <td class="hidden-phone">S60</td>
                        <td class="center hidden-phone">413</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera 7.0</td>
                        <td class="hidden-phone">Win 95+ / OSX.1+</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera 7.5</td>
                        <td class="hidden-phone">Win 95+ / OSX.2+</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera 8.0</td>
                        <td class="hidden-phone">Win 95+ / OSX.2+</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera 8.5</td>
                        <td class="hidden-phone">Win 95+ / OSX.2+</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera 9.0</td>
                        <td class="hidden-phone">Win 95+ / OSX.3+</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera 9.2</td>
                        <td class="hidden-phone">Win 88+ / OSX.3+</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera 9.5</td>
                        <td class="hidden-phone">Win 88+ / OSX.3+</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Opera for Wii</td>
                        <td class="hidden-phone">Wii</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Nokia N800</td>
                        <td class="hidden-phone">N800</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Presto</td>
                        <td>Nintendo DS browser</td>
                        <td class="hidden-phone">Nintendo DS</td>
                        <td class="center hidden-phone">8.5</td>
                        <td class="center hidden-phone">C/A<sup>1</sup></td>
                    </tr>
                    <tr class="gradeC">
                        <td>KHTML</td>
                        <td>Konqureror 3.1</td>
                        <td class="hidden-phone">KDE 3.1</td>
                        <td class="center hidden-phone">3.1</td>
                        <td class="center hidden-phone">C</td>
                    </tr>
                    <tr class="gradeA">
                        <td>KHTML</td>
                        <td>Konqureror 3.3</td>
                        <td class="hidden-phone">KDE 3.3</td>
                        <td class="center hidden-phone">3.3</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeA">
                        <td>KHTML</td>
                        <td>Konqureror 3.5</td>
                        <td class="hidden-phone">KDE 3.5</td>
                        <td class="center hidden-phone">3.5</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeX">
                        <td>Tasman</td>
                        <td>Internet Explorer 4.5</td>
                        <td class="hidden-phone">Mac OS 8-9</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">X</td>
                    </tr>
                    <tr class="gradeC">
                        <td>Tasman</td>
                        <td>Internet Explorer 5.1</td>
                        <td class="hidden-phone">Mac OS 7.6-9</td>
                        <td class="center hidden-phone">1</td>
                        <td class="center hidden-phone">C</td>
                    </tr>
                    <tr class="gradeC">
                        <td>Tasman</td>
                        <td>Internet Explorer 5.2</td>
                        <td class="hidden-phone">Mac OS 8-X</td>
                        <td class="center hidden-phone">1</td>
                        <td class="center hidden-phone">C</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Misc</td>
                        <td>NetFront 3.1</td>
                        <td>Embedded devices</td>
                        <td class="center">-</td>
                        <td class="center">C</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Misc</td>
                        <td>NetFront 3.4</td>
                        <td class="hidden-phone">Embedded devices</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">A</td>
                    </tr>
                    <tr class="gradeX">
                        <td>Misc</td>
                        <td>Dillo 0.8</td>
                        <td class="hidden-phone">Embedded devices</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">X</td>
                    </tr>
                    <tr class="gradeX">
                        <td>Misc</td>
                        <td>Links</td>
                        <td class="hidden-phone">Text only</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">X</td>
                    </tr>
                    <tr class="gradeX">
                        <td>Misc</td>
                        <td>Lynx</td>
                        <td class="hidden-phone">Text only</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">X</td>
                    </tr>
                    <tr class="gradeC">
                        <td>Misc</td>
                        <td>IE Mobile</td>
                        <td class="hidden-phone">Windows Mobile 6</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">C</td>
                    </tr>
                    <tr class="gradeC">
                        <td>Misc</td>
                        <td>PSP browser</td>
                        <td class="hidden-phone">PSP</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">C</td>
                    </tr>
                    <tr class="gradeU">
                        <td>Other browsers</td>
                        <td>All others</td>
                        <td class="hidden-phone">-</td>
                        <td class="center hidden-phone">-</td>
                        <td class="center hidden-phone">U</td>
                    </tr>
                    </tbody>
                    </table>

                    </div>
                    </div>
                </section>
            </div>
        </div>

		</section>
	</section>
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<!--Sparkline Chart-->
	<script src="js/sparkline/jquery.sparkline.js"></script>
	<!--jQuery Flot Chart-->
	<script src="js/flot-chart/jquery.flot.js"></script>
	<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot-chart/jquery.flot.resize.js"></script>
	<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

	<script src="js/iCheck/jquery.icheck.js"></script>

	<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
	
	<!--dynamic table-->
	<script type="text/javascript" language="javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>
	
	<!--icheck init -->
	<script src="js/icheck-init.js"></script>
	<!--dynamic table initialization -->
<script src="js/dynamic_table_init.js"></script>
</body>
</html>