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

<title>Chartjs</title>

<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<style>
#loginForm {
	width: "250px";
	float: right;
}

#imgDiv {
	width: "400px";
	height: "300px";
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
				</div>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<section id="main-content">
			<section class="wrapper">
				<div>
					<center>
					<button type="button" class="btn btn-primary" id="imgBtn1">
						<i class="fa fa-building-o "></i> 물류창고 1
					</button>&nbsp;&nbsp;
					<button type="button" class="btn btn-success" id="imgBtn2">
						<i class="fa fa-building-o "></i> 물류창고 2
					</button>&nbsp;&nbsp;
					<button type="button" class="btn btn-info" id="imgBtn3">
						<i class="fa fa-building-o "></i> 물류창고 3
					</button>&nbsp;&nbsp;
					</center>
				</div>
				<br>
				<div class="col-lg-8">
					<section class="panel">
						<div class="panel-body">

							<div id="imgPart"></div>
						</div>
					</section>
				</div>
				<div class="col-lg-4">
					<section class="panel">
						<div class="panel-body">
							<div class="col-sm-3">
								<section class="panel">
									<header class="panel-heading"> Donut Chart </header>
									<div class="panel-body">
										<div id="graph-donut"></div>
									</div>
								</section>
							</div>
							<div class="col-sm-3">
								<section class="panel">
									<header class="panel-heading"> Donut Chart </header>
									<div class="panel-body">
										<div id="graph-donut"></div>
									</div>
								</section>
							</div>
						</div>
					</section>
				</div>
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
												<div style="width: 50%" aria-valuemax="100"
													aria-valuemin="0" aria-valuenow="20" role="progressbar"
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
		<!--Core js-->
		<script src="js/jquery.js"></script>
		<script src="bs3/js/bootstrap.min.js"></script>
		<script class="include" type="text/javascript"
			src="js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="js/jquery.scrollTo.min.js"></script>
		<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
		<script src="js/jquery.nicescroll.js"></script>
		<script>
			$(function() {
				var temp = '<img src="images/logistics/logWare1.png">';
				$("#imgPart").html(temp);

				$("#imgBtn1").on('click', function() {
					var temp = '<img src="images/logistics/noName.jpg">';
					$("#imgPart").html(temp);
				})

				$("#imgBtn2").on('click', function() {
					var temp = '<img src="images/logistics/logWare2.png">';
					$("#imgPart").html(temp);
				})

				$("#imgBtn3").on('click', function() {
					var temp = '<img src="images/logistics/logWare3.png">';
					$("#imgPart").html(temp);
				})

			})
		</script>
		<!--Easy Pie Chart-->
		<script src="js/easypiechart/jquery.easypiechart.js"></script>
		<!--Sparkline Chart-->
		<script src="js/sparkline/jquery.sparkline.js"></script>
		<!--jQuery Flot Chart-->
		<script src="js/flot-chart/jquery.flot.js"></script>
		<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
		<script src="js/flot-chart/jquery.flot.resize.js"></script>
		<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
		<!--Chart JS-->
		<script src="js/chart-js/Chart.js"></script>
		<script src="js/chartjs.init.js"></script>
		<!--common script init for all pages-->
		<script src="js/scripts.js"></script>
</body>
</html>