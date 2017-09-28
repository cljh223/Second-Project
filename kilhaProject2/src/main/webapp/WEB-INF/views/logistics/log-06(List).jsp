<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="images/favicon.png">

<title>Flot Chart</title>

<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
		<aside>
			<div id="sidebar" class="nav-collapse">
				<!-- sidebar menu start-->
				<div class="leftside-navigation">
					<ul class="sidebar-menu" id="nav-accordion">
						<li><a class="active" href="index.html"> <i
								class="fa fa-dashboard"></i> <span>Dashboard</span>
						</a></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-laptop"></i> <span>구매부서</span>
						</a>
							<ul class="sub">
								<li><a href="Pur_main">구매메인화면</a></li>
								<li><a href="Pur_inform">상품디테일</a></li>
								<li><a href="Pur_chart">상품구매(구매부직원만)</a></li>
								<li><a href="Pur_orders">주문내역</a></li>
								<li><a href="Pur_orderform1">invoice작성</a></li>
								<li><a href="Pur_profitloss">구매부 실적(거래내역)</a></li>
								<li><a href="Pur_store">상품재고</a></li>
							</ul></li>

						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-laptop"></i> <span>생산 부문</span>
						</a>
							<ul class="sub">
								<li><a href="pro_Fac1">제 1공장 정보</a></li>
								<li><a href="pro_Fac2">제 2공장 정보</a></li>
								<li><a href="pro_Gradient">선형회귀분석</a></li>
								<li><a href="">생산정보입력</a></li>
							</ul></li>

						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-truck"></i> <span>물류부서</span>
						</a>
							<ul class="sub">
								<li><a href="first">관리자 페이지</a></li>
								<li><a href="second">물류창고 도면도/도표</a></li>
								<li><a href="third">트럭별 물류 배송순서</a></li>
								<li><a href="fourth">선적신청</a></li>
								<li><a href="fifth">log-06(List)</a></li>
								<li><a href="sixth">log-06(Timetable)</a></li>
								<li><a href="seventh">선적내용 확인,수정페이지</a></li>
								<li><a href="eighth">log-09, 10</a></li>
								<li><a href="nineth">개인 신청 내역</a></li>
							</ul></li>

						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-laptop"></i> <span>영업부서</span>
						</a>
							<ul class="sub">
								<li><a href="salesMain">영업 메인 페이지</a></li>
								<li><a href="processMain">영업 상황 조회</a></li>
								<li><a href="language_switch.html">Language Switch Bar</a></li>
							</ul></li>
					</ul>
					<!-- sidebar menu end-->
				</div>
		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!-- page start-->
				<div class="container">
					<h2>Stacked Progress Bars</h2>
					<p>Create a stacked progress bar by placing multiple bars into
						the same div with class .progress:</p>
					<div class="progress">
						<div class="progress-bar progress-bar-success" role="progressbar"
							style="width: 40%">Free Space</div>
						<div class="progress-bar progress-bar-warning" role="progressbar"
							style="width: 10%">Warning</div>
						<div class="progress-bar progress-bar-danger" role="progressbar"
							style="width: 20%">Danger</div>
					</div>
				</div>


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
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="js/jquery.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script>
		/* var data7_1 = [
		 [1354586000000, 253],
		 [1354587000000, 465],
		 [1354588000000, 498],
		 [1354589000000, 383],
		 [1354590000000, 280],
		 [1354591000000, 108],
		 [1354592000000, 120],
		 [1354593000000, 474],
		 [1354594000000, 623],
		 [1354595000000, 479],
		 [1354596000000, 788],
		 [1354597000000, 836]
		 ];
		 var data7_2 = [
		 [1354586000000, 253],
		 [1354587000000, 465],
		 [1354588000000, 498],
		 [1354589000000, 383],
		 [1354590000000, 280],
		 [1354591000000, 108],
		 [1354592000000, 120],
		 [1354593000000, 474],
		 [1354594000000, 623],
		 [1354595000000, 479],
		 [1354596000000, 788],
		 [1354597000000, 836]
		 ]; */
		/* $(function() {
		 $.plot($("#visitors-chart #visitors-container"), [{
		 data: data7_1,
		 label: "Page View",
		 lines: {
		 fill: true
		 }
		 }, {
		 data: data7_2,
		 label: "Online User",

		 points: {
		 show: true
		 },
		 lines: {
		 show: true
		 },
		 yaxis: 2
		 }
		 ],
		 {
		 series: {
		 lines: {
		 show: true,
		 fill: false
		 },
		 points: {
		 show: true,
		 lineWidth: 2,
		 fill: true,
		 fillColor: "#ffffff",
		 symbol: "circle",
		 radius: 5
		 },
		 shadowSize: 0
		 },
		 grid: {
		 hoverable: true,
		 clickable: true,
		 tickColor: "#f9f9f9",
		 borderWidth: 1,
		 borderColor: "#eeeeee"
		 },
		 colors: ["#79D1CF", "#E67A77"],
		 tooltip: true,
		 tooltipOpts: {
		 defaultTheme: false
		 },
		 xaxis: {
		 mode: "time"


		 },
		 yaxes: [{
		 /* First y axis */
		/*             }, {
		 /* Second y axis */
		/*                 position: "right" /* left or right */
		/*             }]
		 }
		 );
		 }); */

		/* $(function() {
		    var data1 = [];
		    var totalPoints = 300;
		    function GetData() {
		    data1.shift();
		    while (data1.length < totalPoints) {
		    var prev = data1.length > 0 ? data1[data1.length - 1] : 50;
		    var y = prev + Math.random() * 10 - 5;
		    y = y < 0 ? 0 : (y > 100 ? 100 : y);
		    data1.push(y);
		    }
		var result = [];
		for (var i = 0; i < data1.length; ++i) {
		    result.push([i, data1[i]])
		    }
		return result;
		}
		var updateInterval = 100;
		var plot = $.plot($("#reatltime-chart #reatltime-chartContainer"), [
		        GetData()], {
		        series: {
		            lines: {
		                show: true,
		                fill: true
		            },
		            shadowSize: 0
		        },
		        yaxis: {
		            min: 0,
		            max: 100,
		            ticks: 10
		        },
		        xaxis: {
		            show: false
		        },
		        grid: {
		            hoverable: true,
		            clickable: true,
		            tickColor: "#f9f9f9",
		            borderWidth: 1,
		            borderColor: "#eeeeee"
		        },
		        colors: ["#79D1CF"],
		        tooltip: true,
		        tooltipOpts: {
		            defaultTheme: false
		        }
		    });
		    function update() {
		        plot.setData([GetData()]);
		        plot.draw();
		        setTimeout(update, updateInterval);
		    }
		    update();
		}); */

		/*     $(function() {
		 var data = [{
		 label: "Paid Signup",
		 data: 60
		 }, {
		 label: "Free Signup",
		 data: 30
		 }, {
		 label: "Guest Signup",
		 data: 10
		 }];
		 var options = {
		 series: {
		 pie: {
		 show: true
		 }
		 },
		 legend: {
		 show: true
		 },
		 grid: {
		 hoverable: true,
		 clickable: true
		 },
		 colors: ["#79D1CF", "#D9DD81", "#E67A77"],
		 tooltip: true,
		 tooltipOpts: {
		 defaultTheme: false
		 }
		 };
		 $.plot($("#pie-chart #pie-chartContainer"), data, options);
		 }); */

		/*     $(function() {
		 var data = [{
		 label: "Premium Member",
		 data: 40
		 }, {
		 label: "Gold Member",
		 data: 20
		 }, {
		 label: "Platinum Member",
		 data: 10
		 }, {
		 label: "Silver Member",
		 data: 30
		 }];
		 var options = {
		 series: {
		 pie: {
		 show: true,
		 innerRadius: 0.5,
		 show: true
		 }
		 },
		 legend: {
		 show: true
		 },
		 grid: {
		 hoverable: true,
		 clickable: true
		 },
		 colors: ["#79D1CF", "#D9DD81", "#E67A77","#9972B5"],
		 tooltip: true,
		 tooltipOpts: {
		 defaultTheme: false
		 }
		 };
		 $.plot($("#pie-chart-donut #pie-donutContainer"), data, options); 
		 }); */

		$(function() {
			var data24Hours = [ [ 0, 601 ], [ 1, 520 ], [ 2, 337 ], [ 3, 261 ],
					[ 4, 157 ], [ 5, 78 ], [ 6, 58 ], [ 7, 48 ], [ 8, 54 ],
					[ 9, 38 ], [ 10, 88 ], [ 11, 214 ], [ 12, 364 ],
					[ 13, 449 ], [ 14, 558 ], [ 15, 282 ], [ 16, 379 ],
					[ 17, 429 ], [ 18, 518 ], [ 19, 470 ], [ 20, 330 ],
					[ 21, 245 ], [ 22, 358 ], [ 23, 74 ] ];
			var data48Hours = [ [ 0, 445 ], [ 1, 592 ], [ 2, 738 ], [ 3, 532 ],
					[ 4, 234 ], [ 5, 143 ], [ 6, 147 ], [ 7, 63 ], [ 8, 64 ],
					[ 9, 43 ], [ 10, 86 ], [ 11, 201 ], [ 12, 315 ],
					[ 13, 397 ], [ 14, 512 ], [ 15, 281 ], [ 16, 360 ],
					[ 17, 479 ], [ 18, 425 ], [ 19, 453 ], [ 20, 422 ],
					[ 21, 355 ], [ 22, 340 ], [ 23, 801 ] ];
			var dataDifference = [ [ 23, 727 ], [ 22, 18 ], [ 21, 110 ],
					[ 20, 92 ], [ 19, 17 ], [ 18, 93 ], [ 17, 50 ], [ 16, 19 ],
					[ 15, 1 ], [ 14, 46 ], [ 13, 52 ], [ 12, 49 ], [ 11, 13 ],
					[ 10, 2 ], [ 9, 5 ], [ 8, 10 ], [ 7, 15 ], [ 6, 89 ],
					[ 5, 65 ], [ 4, 77 ], [ 3, 271 ], [ 2, 401 ], [ 1, 72 ],
					[ 0, 156 ] ];
			var ticks = [ [ 0, "22일" ], [ 1, "" ], [ 2, "00h" ], [ 3, "" ],
					[ 4, "02h" ], [ 5, "" ], [ 6, "04h" ], [ 7, "" ],
					[ 8, "06h" ], [ 9, "" ], [ 10, "08h" ], [ 11, "" ],
					[ 12, "10h" ], [ 13, "" ], [ 14, "12h" ], [ 15, "" ],
					[ 16, "14h" ], [ 17, "" ], [ 18, "16h" ], [ 19, "" ],
					[ 20, "18h" ], [ 21, "" ], [ 22, "20h" ], [ 23, "" ] ];
			var data = [ {
				label : "Last 24 Hours",
				data : data24Hours,
				lines : {
					show : true,
					fill : true
				},
				points : {
					show : true
				}
			}, {
				label : "Last 48 Hours",
				data : data48Hours,
				lines : {
					show : true
				},
				points : {
					show : true
				}
			}, {
				label : "Difference",
				data : dataDifference,
				bars : {
					show : true
				}
			} ];
			var options = {
				xaxis : {
					ticks : ticks
				},
				series : {
					shadowSize : 0
				},
				grid : {
					hoverable : true,
					clickable : true,
					tickColor : "#f9f9f9",
					borderWidth : 1,
					borderColor : "#eeeeee"
				},
				colors : [ "#79D1CF", "#E67A77" ],
				tooltip : true,
				tooltipOpts : {
					defaultTheme : false
				},
				legend : {
					labelBoxBorderColor : "#000000",
					container : $("#legendcontainer26"),
					noColumns : 0
				}
			};
			var plot = $.plot($("#combine-chart #combine-chartContainer"),
					data, options);
		});

		/* $(function() {
		    var data1 = GenerateSeries(0);
		    var data2 = GenerateSeries(100);
		    var data3 = GenerateSeries(200);
		    var dataset = [data1, data2, data3];
		    function GenerateSeries(added) {
		        var data = [];
		        var start = 100 + added;
		        var end = 200 + added;
		        for (i = 1; i <= 100; i++) {
		            var d = Math.floor(Math.random() * (end - start + 1) + start);
		            data.push([i, d]);
		            start++;
		            end++;
		        }
		        return data;
		    }
		    var options = {
		        series: {
		            stack: true,
		            shadowSize: 0
		        },
		        grid: {
		            hoverable: true,
		            clickable: true,
		            tickColor: "#f9f9f9",
		            borderWidth: 1,
		            borderColor: "#eeeeee"
		        },
		        legend: {
		            position: 'nw',
		            labelBoxBorderColor: "#000000",
		container: $("#bar-chart #legendPlaceholder20"),
		            noColumns: 0
		        }
		    };
		    var plot;
		    function ToggleSeries() {
		        var d = [];
		        $("#toggle-chart input[type='checkbox']").each(function() {
		    if ($(this).is(":checked")) {
		    var seqence = $(this).attr("id").replace("cbdata", "");
		    d.push({
		    label: "data" + seqence,
		    data: dataset[seqence - 1]
		    });
		}
		});
		options.series.lines = {};
		options.series.bars = {};
		$("#toggle-chart input[type='radio']").each(function() {
		    if ($(this).is(":checked")) {
		    if ($(this).val() == "line") {
		    options.series.lines = {
		    fill: true
		    };
		} else {
		    options.series.bars = {
		        show: true
		    };
		}
		}
		});
		$.plot($("#toggle-chart #toggle-chartContainer"), d, options);
		    }
		    $("#toggle-chart input").change(function() {
		        ToggleSeries();
		    });
		    ToggleSeries();
		});
		 */
	</script>
	<!-- Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<!-- Sparkline Chart-->
	<script src="js/sparkline/jquery.sparkline.js"></script>
	<!-- jQuery Flot Chart-->
	<script src="js/flot-chart/jquery.flot.js"></script>
	<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot-chart/jquery.flot.resize.js"></script>
	<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
	<script src="js/flot-chart/jquery.flot.selection.js"></script>
	<script src="js/flot-chart/jquery.flot.stack.js"></script>
	<script src="js/flot-chart/jquery.flot.time.js"></script>
	<script src="js/flot.chart.init.js"></script>
	<!-- Common script init for all pages-->
	<script src="js/scripts.js"></script>


</body>
</html>
