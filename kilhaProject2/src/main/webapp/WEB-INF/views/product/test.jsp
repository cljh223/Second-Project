<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">

<meta http-equiv=”X-UA-Compatible” content=”IE=EmulateIE9”>
<meta http-equiv=”X-UA-Compatible” content=”IE=9”>

<style>
#chartdiv{
  width: 100%;
  height: 500px;
}

.amcharts-graph-g2 .amcharts-graph-stroke {
  stroke-dasharray: 3px 3px;
  stroke-linejoin: round;
  stroke-linecap: round;
  -webkit-animation: am-moving-dashes 1s linear infinite;
  animation: am-moving-dashes 1s linear infinite;
}

@-webkit-keyframes am-moving-dashes {
  100% {
    stroke-dashoffset: -31px;
  }
}
@keyframes am-moving-dashes {
  100% {
    stroke-dashoffset: -31px;
  }
}


.lastBullet {
  -webkit-animation: am-pulsating 1s ease-out infinite;
  animation: am-pulsating 1s ease-out infinite;
}
@-webkit-keyframes am-pulsating {
  0% {
    stroke-opacity: 1;
    stroke-width: 0px;
  }
  100% {
    stroke-opacity: 0;
    stroke-width: 50px;
  }
}
@keyframes am-pulsating {
  0% {
    stroke-opacity: 1;
    stroke-width: 0px;
  }
  100% {
    stroke-opacity: 0;
    stroke-width: 50px;
  }
}

.amcharts-graph-column-front {
  -webkit-transition: all .3s .3s ease-out;
  transition: all .3s .3s ease-out;
}
.amcharts-graph-column-front:hover {
  fill: #496375;
  stroke: #496375;
  -webkit-transition: all .3s ease-out;
  transition: all .3s ease-out;
}

.amcharts-graph-g3 {
  stroke-linejoin: round;
  stroke-linecap: round;
  stroke-dasharray: 500%;
  stroke-dasharray: 0 /;    /* fixes IE prob */
  stroke-dashoffset: 0 /;   /* fixes IE prob */
  -webkit-animation: am-draw 40s;
  animation: am-draw 40s;
}
@-webkit-keyframes am-draw {
    0% {
        stroke-dashoffset: 500%;
    }
    100% {
        stroke-dashoffset: 0%;
    }
}
@keyframes am-draw {
    0% {
        stroke-dashoffset: 500%;
    }
    100% {
        stroke-dashoffset: 0%;
    }
}
/* OVERWRITE OUR MAIN STYLE */
.demo-flipper-front.demo-panel-white, body {
  background-color: white;
}									
</style>

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
<!--clock css-->
<link href="js/css3clock/css/style.css" rel="stylesheet">
<!--Morris Chart CSS -->
<link rel="stylesheet" href="js/morris-chart/morris.css">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet"
	href="https://cdn.anychart.com/css/7.14.3/anychart-ui.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://cdn.anychart.com/js/7.14.3/anychart-bundle.min.js"></script>
<script src="http://www.google.com/jsapi?ext.js"></script>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>


<script>
	var chartData = [ {
		"date" : "2012-01-01",
		"distance" : 227,
		"townName" : "New York",
		"townName2" : "New York",
		"townSize" : 25,
		"latitude" : 40.71,
		"duration" : 408
	}, {
		"date" : "2012-01-02",
		"distance" : 371,
		"townName" : "Washington",
		"townSize" : 14,
		"latitude" : 38.89,
		"duration" : 482
	}, {
		"date" : "2012-01-03",
		"distance" : 433,
		"townName" : "Wilmington",
		"townSize" : 6,
		"latitude" : 34.22,
		"duration" : 562
	}, {
		"date" : "2012-01-04",
		"distance" : 345,
		"townName" : "Jacksonville",
		"townSize" : 7,
		"latitude" : 30.35,
		"duration" : 379
	}, {
		"date" : "2012-01-05",
		"distance" : 480,
		"townName" : "Miami",
		"townName2" : "Miami",
		"townSize" : 10,
		"latitude" : 25.83,
		"duration" : 501
	}, {
		"date" : "2012-01-06",
		"distance" : 386,
		"townName" : "Tallahassee",
		"townSize" : 7,
		"latitude" : 30.46,
		"duration" : 443
	}, {
		"date" : "2012-01-07",
		"distance" : 348,
		"townName" : "New Orleans",
		"townSize" : 10,
		"latitude" : 29.94,
		"duration" : 405
	}, {
		"date" : "2012-01-08",
		"distance" : 238,
		"townName" : "Houston",
		"townName2" : "Houston",
		"townSize" : 16,
		"latitude" : 29.76,
		"duration" : 309
	}, {
		"date" : "2012-01-09",
		"distance" : 218,
		"townName" : "Dalas",
		"townSize" : 17,
		"latitude" : 32.8,
		"duration" : 287
	}, {
		"date" : "2012-01-10",
		"distance" : 349,
		"townName" : "Oklahoma City",
		"townSize" : 11,
		"latitude" : 35.49,
		"duration" : 485
	}, {
		"date" : "2012-01-11",
		"distance" : 603,
		"townName" : "Kansas City",
		"townSize" : 10,
		"latitude" : 39.1,
		"duration" : 890
	}, {
		"date" : "2012-01-12",
		"distance" : 534,
		"townName" : "Denver",
		"townName2" : "Denver",
		"townSize" : 18,
		"latitude" : 39.74,
		"duration" : 810
	}, {
		"date" : "2012-01-13",
		"townName" : "Salt Lake City",
		"townSize" : 12,
		"distance" : 425,
		"duration" : 670,
		"latitude" : 40.75,
		"alpha" : 0.4
	}, {
		"date" : "2012-01-14",
		"latitude" : 36.1,
		"duration" : 470,
		"townName" : "Las Vegas",
		"townName2" : "Las Vegas",
		"bulletClass" : "lastBullet"
	}, {
		"date" : "2012-01-15"
	}, {
		"date" : "2012-01-16"
	}, {
		"date" : "2012-01-17"
	}, {
		"date" : "2012-01-18"
	}, {
		"date" : "2012-01-19"
	} ];
	var chart = AmCharts.makeChart("chartdiv", {
		"type" : "serial",
		"theme" : "light",

		"dataDateFormat" : "YYYY-MM-DD",
		"dataProvider" : chartData,

		"addClassNames" : true,
		"startDuration" : 1,
		//"color": "#FFFFFF",
		"marginLeft" : 0,

		"categoryField" : "date",
		"categoryAxis" : {
			"parseDates" : true,
			"minPeriod" : "DD",
			"autoGridCount" : false,
			"gridCount" : 50,
			"gridAlpha" : 0.1,
			"gridColor" : "#FFFFFF",
			"axisColor" : "#555555",
			"dateFormats" : [ {
				"period" : 'DD',
				"format" : 'DD'
			}, {
				"period" : 'WW',
				"format" : 'MMM DD'
			}, {
				"period" : 'MM',
				"format" : 'MMM'
			}, {
				"period" : 'YYYY',
				"format" : 'YYYY'
			} ]
		},

		"valueAxes" : [ {
			"id" : "a1",
			"title" : "distance",
			"gridAlpha" : 0,
			"axisAlpha" : 0
		}, {
			"id" : "a2",
			"position" : "right",
			"gridAlpha" : 0,
			"axisAlpha" : 0,
			"labelsEnabled" : false
		}, {
			"id" : "a3",
			"title" : "duration",
			"position" : "right",
			"gridAlpha" : 0,
			"axisAlpha" : 0,
			"inside" : true,
			"duration" : "mm",
			"durationUnits" : {
				"DD" : "d. ",
				"hh" : "h ",
				"mm" : "min",
				"ss" : ""
			}
		} ],
		"graphs" : [ {
			"id" : "g1",
			"valueField" : "distance",
			"title" : "distance",
			"type" : "column",
			"fillAlphas" : 0.9,
			"valueAxis" : "a1",
			"balloonText" : "[[value]] miles",
			"legendValueText" : "[[value]] mi",
			"legendPeriodValueText" : "total: [[value.sum]] mi",
			"lineColor" : "#263138",
			"alphaField" : "alpha"
		}, {
			"id" : "g2",
			"valueField" : "latitude",
			"classNameField" : "bulletClass",
			"title" : "latitude/city",
			"type" : "line",
			"valueAxis" : "a2",
			"lineColor" : "#786c56",
			"lineThickness" : 1,
			"legendValueText" : "[[value]]/[[description]]",
			"descriptionField" : "townName",
			"bullet" : "round",
			"bulletSizeField" : "townSize",
			"bulletBorderColor" : "#786c56",
			"bulletBorderAlpha" : 1,
			"bulletBorderThickness" : 2,
			"bulletColor" : "#000000",
			"labelText" : "[[townName2]]",
			"labelPosition" : "right",
			"balloonText" : "latitude:[[value]]",
			"showBalloon" : true,
			"animationPlayed" : true
		}, {
			"id" : "g3",
			"title" : "duration",
			"valueField" : "duration",
			"type" : "line",
			"valueAxis" : "a3",
			"lineColor" : "#ff5755",
			"balloonText" : "[[value]]",
			"lineThickness" : 1,
			"legendValueText" : "[[value]]",
			"bullet" : "square",
			"bulletBorderColor" : "#ff5755",
			"bulletBorderThickness" : 1,
			"bulletBorderAlpha" : 1,
			"dashLengthField" : "dashLength",
			"animationPlayed" : true
		} ],

		"chartCursor" : {
			"zoomable" : false,
			"categoryBalloonDateFormat" : "DD",
			"cursorAlpha" : 0,
			"valueBalloonsEnabled" : false
		},
		"legend" : {
			"bulletType" : "round",
			"equalWidths" : false,
			"valueWidth" : 120,
			"useGraphSettings" : true,
		//"color": "#FFFFFF"
		}
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
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-laptop"></i> <span>Production</span>
						</a>
							<ul class="sub">
								<li><a href="fac1">1st factory</a></li>
								<li><a href="fac2">2nd factory</a></li>
								<li><a href="test1">prediction</a></li>
								<li><a href="">register</a></li>
							</ul></li>
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

	<!--메인은 여기다가 추가 후 사용!  -->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-sm-6">
					<section class="panel">
						<!--   <header class="panel-heading">
                        Factory Information
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header> -->
						<div class="panel-body">
							<div class="row prd-row">
								<div class="col-md-6">
									<div class="prd-img" style="width: 260px;">
										<img src="images/fac1.jpg" alt="">
									</div>
								</div>
								<div class="col-md-6">
									<h1>${factory.fac_name}</h1>
									<p class="normal">${factory.fac_address}</p>
									<p>TEL : ${factory.fac_tel}</p>
									<div class="price">
										<div><h1>현재 가동률: ${operating}%</h1></div>
										<p class="terques">전체 생산 상태 : 양호</p>
									</div>
								</div>


							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-6">
					<section class="panel">

						<div class="panel-body">
							<table class="table  table-hover general-table">
								<thead>
									<tr>
										<th>Product</th>
										<th class="hidden-phone">Line number</th>
										<th>Amount</th>
										<th>Status</th>
										<th>Operating ratio</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">Product Vol.1</a></td>
										<td class="hidden-phone">f1111</td>
										<td>1320.00</td>
										<td><span class="label label-info label-mini">Good</span></td>
										<td>
											<div class="progress progress-striped active progress-sm">
												<div class="progress-bar progress-bar-success"
													role="progressbar" aria-valuenow="80" aria-valuemin="0"
													aria-valuemax="100" style="width: 80%">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td><a href="#"> Product Vol.2 </a></td>
										<td class="hidden-phone">f1112</td>
										<td>556.00</td>
										<td><span class="label label-warning label-mini">Normal</span></td>
										<td>
											<div class="progress progress-striped active progress-sm">
												<div class="progress-bar progress-bar-success"
													role="progressbar" aria-valuenow="60" aria-valuemin="0"
													aria-valuemax="100" style="width: 60%">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td><a href="#"> Product Vol.2 </a></td>
										<td class="hidden-phone">f1113</td>
										<td>13240.00</td>
										<td><span class="label label-success label-mini">
												Bad </span></td>
										<td>
											<div class="progress progress-striped active progress-sm">
												<div class="progress-bar progress-bar-success"
													role="progressbar" aria-valuenow="45" aria-valuemin="0"
													aria-valuemax="100" style="width: 45%">
													<span class="sr-only">45% Complete</span>
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
			<div class="row">
				<div class="col-lg-3">
					<section class="panel" style="height: 550px;">
						<div id="c-slide" class="carousel slide auto panel-body">
							<ol class="carousel-indicators out">
								<li class="active" data-slide-to="0" data-target="#c-slide"></li>
								<li class="" data-slide-to="1" data-target="#c-slide"></li>
								<li class="" data-slide-to="2" data-target="#c-slide"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item text-center active">
									<h5 style="text-align: center;">Product Information</h5>
									<img alt="" src="images/product_sample.jpg">
									<h3>Bucket Admin is an Awesome Dashboard</h3>
									<p>Awesome admin template</p>
									<!--widget weather start-->
									<section class="weather-widget clearfix">
										<div class="pull-left weather-icon">
											<canvas id="icon1" width="60" height="60"></canvas>
										</div>
										<div>
											<ul class="weather-info">
												<li class="weather-city">현재 공정 상태</li>
												<li class="weather-cent"><span>BAD</span></li>
												<li class="weather-status">2.3sigma</li>
											</ul>
										</div>
									</section>
									<!--widget weather end-->
								</div>
								<div class="item text-center">
									<h5 style="text-align: center;">Product Information</h5>
									<img alt="" src="images/product_sample1.jpg">
									<h3>Bucket Admin is an Awesome Dashboard</h3>
									<p>Awesome admin template</p>
									<!--widget weather start-->
									<section class="weather-widget clearfix">
										<div class="pull-left weather-icon">
											<canvas id="icon1" width="60" height="60"></canvas>
										</div>
										<div>
											<ul class="weather-info">
												<li class="weather-city">현재 공정 상태</li>
												<li class="weather-cent"><span>BAD</span></li>
												<li class="weather-stsatus">2.3sigma</li>
											</ul>
										</div>
									</section>
									<!--widget weather end-->
								</div>
								<div class="item text-center">
									<h5 style="text-align: center;">Product Information</h5>
									<img alt="" src="images/product_sample2.jpg">
									<h3>Bucket Admin is an Awesome Dashboard</h3>
									<p>Awesome admin template</p>
									<!--widget weather start-->
									<section class="weather-widget clearfix">
										<div class="pull-left weather-icon">
											<canvas id="icon1" width="60" height="60"></canvas>
										</div>
										<div>
											<ul class="weather-info">
												<li class="weather-city">현재 공정 상태</li>
												<li class="weather-cent"><span>BAD</span></li>
												<li class="weather-status">2.3sigma</li>
											</ul>
										</div>
									</section>
									<!--widget weather end-->
								</div>
							</div>
							<a data-slide="prev" href="#c-slide"
								class="left carousel-control"> <i class="fa fa-angle-left"></i>
							</a> <a data-slide="next" href="#c-slide"
								class="right carousel-control"> <i class="fa fa-angle-right"></i>
							</a>
						</div>
					</section>
				</div>
				<div class="col-lg-8">
					<!--earning graph start-->
					<section class="panel" style="width: 930px; height: 550px">
						<div class="panel-body">
							<!--여기에 정규분포 그래프  -->
							<h5 style="text-align: center;">Normal Distribution</h5>
							<div id="chartdiv"></div>
						</div>
					</section>
					<!--earning graph end-->
				</div>

			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span>
						<div class="mini-stat-info">
							<span>320</span> 작업 효율
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<span class="mini-stat-icon tar"><i class="fa fa-tag"></i></span>
						<div class="mini-stat-info">
							<span>22,450</span> 종합 설비 가동률
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<span class="mini-stat-icon pink"><i class="fa fa-money"></i></span>
						<div class="mini-stat-info">
							<span>34,320</span> 시간 가동률
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<span class="mini-stat-icon green"><i class="fa fa-eye"></i></span>
						<div class="mini-stat-info">
							<span>32720</span> 성능 가동률
						</div>
					</div>
				</div>
			</div>
			<!--mini statistics end-->
		</section>
	</section>


	<!-- Placed js at the end of the document so the pages load faster -->
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->

	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="js/gauge/gauge.js"></script>
	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>



	<!--Morris Chart-->
	<script src="js/morris-chart/morris.js"></script>
	<script src="js/morris-chart/raphael-min.js"></script>
	<!--jQuery Flot Chart-->
	<script src="js/dashboard.js?version=1"></script>
	<script src="js/jquery.customSelect.min.js?version=1"></script>
	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>
	<!--script for this page-->

</body>
</html>