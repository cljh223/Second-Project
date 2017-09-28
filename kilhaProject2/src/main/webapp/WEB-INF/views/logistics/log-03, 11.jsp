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
<!--clock css-->
<link href="js/css3clock/css/style.css" rel="stylesheet">
<!--Morris Chart CSS -->
<link rel="stylesheet" href="js/morris-chart/morris.css">
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

.warehouseP {
	width: 100%;
}

#myProgress {
	width: 100%;
	background-color: #ddd;
}

#myBar {
	width: 0%;
	height: 30px;
	background-color: #4CAF50;
	text-align: center;
	line-height: 30px;
	color: white;
}

#wareIcon {
	width: 25%;
}

#ramenImg {
	width: 45%;
	position: "absolute";
	top: "30px";
	left: "30px";
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
						</button>
						&nbsp;&nbsp;
						<button type="button" class="btn btn-success" id="imgBtn2">
							<i class="fa fa-building-o "></i> 물류창고 2
						</button>
						&nbsp;&nbsp;
						<button type="button" class="btn btn-info" id="imgBtn3">
							<i class="fa fa-building-o "></i> 물류창고 3
						</button>
						&nbsp;&nbsp;
					</center>
				</div>
				<br>
				<div style="width: 100%;">
					<div class="col-lg-8" style="width: 70%;">
						<section class="panel">
							<div class="panel-body">
								<div id="imgPart" class="warehouseP" style="position: relative;"></div>
							</div>
						</section>
					</div>


					<div id="warehouse_usage" class="col-lg-4"
						style="width: 30%; float: left;">
						<section class="panel">
							<div class="panel-body">
								<h4 class="widget-h">물류 창고 사용률</h4>
								<img src="images/logistics/warehouse.JPG" id="wareIcon">
								<div id="myProgress">
									<div id="myBar">0%</div>
								</div>
							</div>
						</section>
					</div>
					<div id="detailInfo"></div>

					<div class="col-lg-4" id="donutPart"
						style="width: 30%; float: left; height: 200px;">
						<section class="panel">
							<div class="panel-body">
								<div id="graph-donut" style="height: 300px;"></div>
							</div>
						</section>
						<br>
					</div>
					<div id="graphValue1"></div>
					<div id="graphValue2"></div>
					<div id="stockGraph"></div>
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
		<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
		<script src="bs3/js/bootstrap.min.js"></script>
		<script src="js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="js/jquery.scrollTo.min.js"></script>
		<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
		<script src="js/jquery.nicescroll.js"></script>
		<script>
			var originImg;
			var imgValue;
			var r_code;

			function getOriginImg() {
				$.ajax({
					url : "getOriginImg",
					method : "GET",
					success : function(resp) {
						originImg = resp;
						$(window).resize(calLocation());
					}
				})
			}

			var color = [];

			function calLocation() {
				//좌표 계산
				var rate = $("#img1").width() / 1000;

				var imgPart = $("#imgPart");
				/* $('#imgPart div').remove(); */
				// 이미지 좌표를 새롭게 계산하여 둔다
				$.each(originImg, function(index, item) {
					if (imgValue == 1 && item.warehouse_code == 1) {
						var locationX1 = item.locationX1 * rate;
						var locationX2 = item.locationX2 * rate;
						var locationY1 = item.locationY1 * rate;
						var locationY2 = item.locationY2 * rate;

						var div = $('<div></div>');
						div.attr('id', 'section' + index);
						div.css('position', 'absolute');
						div.css('top', locationY1 + 'px');
						div.css('left', locationX1 + 'px');
						div.css('z-index', 9);
						div.width(locationX2 - locationX1);
						div.height(locationY2 - locationY1);
						console.log(div);

						var section_name = item.sec_name;
						div.hover(function() {
							div.css('background-color', 'red');
							div.text(section_name);
						});

						div.mouseleave(function() {
							div.css('background-color', '');
							div.text("");
						});
						imgPart.append(div);

					}
					$("#imgBtn1").on('click', function() {
						if (imgValue == item.warehouse_code) {
							var locationX1 = item.locationX1 * rate;
							var locationX2 = item.locationX2 * rate;
							var locationY1 = item.locationY1 * rate;
							var locationY2 = item.locationY2 * rate;

							var div = $('<div></div>');
							div.attr('id', 'section' + index);
							div.attr('value', index);
							div.css('position', 'absolute');
							div.css('top', locationY1 + 'px');
							div.css('left', locationX1 + 'px');
							div.width(locationX2 - locationX1);
							div.height(locationY2 - locationY1);
							console.log(div);
							var section_name = item.sec_name
							div.hover(function() {
								div.css('background-color', 'red');
								div.text(section_name);
							});

							div.mouseleave(function() {
								div.css('background-color', '');
								div.text("");
							});
							imgPart.append(div);
						}

						$("#section0").on('click', sectionInfo);
						$("#section1").on('click', sectionInfo);
						$("#section2").on('click', sectionInfo);
						$("#section3").on('click', sectionInfo);
						$("#section4").on('click', sectionInfo);
					})

					$("#imgBtn2").on('click', function() {
						if (imgValue == item.warehouse_code) {
							var locationX1 = item.locationX1 * rate;
							var locationX2 = item.locationX2 * rate;
							var locationY1 = item.locationY1 * rate;
							var locationY2 = item.locationY2 * rate;

							var div = $('<div></div>');
							div.attr('id', 'section' + index);
							div.attr('value', index);
							div.css('position', 'absolute');
							div.css('top', locationY1 + 'px');
							div.css('left', locationX1 + 'px');
							div.width(locationX2 - locationX1);
							div.height(locationY2 - locationY1);
							console.log(div);
							var section_name = item.sec_name
							div.hover(function() {
								div.css('background-color', 'red');
								div.text(section_name);
							});

							div.mouseleave(function() {
								div.css('background-color', '');
								div.text("");
							});
							imgPart.append(div);
						}

						$("#section5").on('click', sectionInfo);
						$("#section6").on('click', sectionInfo);
						$("#section7").on('click', sectionInfo);
						$("#section8").on('click', sectionInfo);
						$("#section9").on('click', sectionInfo);
					})

					$("#imgBtn3").on('click', function() {
						if (imgValue == item.warehouse_code) {
							var locationX1 = item.locationX1 * rate;
							var locationX2 = item.locationX2 * rate;
							var locationY1 = item.locationY1 * rate;
							var locationY2 = item.locationY2 * rate;

							var div = $('<div></div>');
							div.attr('id', 'section' + index);
							div.attr('value', index);
							div.css('position', 'absolute');
							div.css('top', locationY1 + 'px');
							div.css('left', locationX1 + 'px');
							div.width(locationX2 - locationX1);
							div.height(locationY2 - locationY1);
							console.log(div);
							var section_name = item.sec_name
							div.hover(function() {
								div.css('background-color', 'red');
								div.text(section_name);
							});

							div.mouseleave(function() {
								div.css('background-color', '');
								div.text("");
							});
							imgPart.append(div);
						}

						$("#section10").on('click', sectionInfo);
						$("#section11").on('click', sectionInfo);
						$("#section12").on('click', sectionInfo);
						$("#section13").on('click', sectionInfo);
						$("#section14").on('click', sectionInfo);
					})

					$("#section0").on('click', sectionInfo);
					$("#section1").on('click', sectionInfo);
					$("#section2").on('click', sectionInfo);
					$("#section3").on('click', sectionInfo);
					$("#section4").on('click', sectionInfo);
				});
			}

			function sectionInfo() {
				var id = $(this).attr('id');
				var index = 0;
				if (id.length == 8) {
					index = id.charAt(7);
				} else {
					index = id.substring(7, id.length + 1);
				}

				$.ajax({
					url : "sectionInfo",
					method : "GET",
					data : {
						"index" : index
					},
					success : detailInfo
				})
			}

			function detailInfo(resp) {
				$("div").remove("#donutPart");

				var temp = '<div class="col-lg-4" style="width: 30%; float: left;">';
				temp += '<section class="panel">';
				temp += '<div class="panel-body">';
				temp += '<center><h4>' + resp.WAREHOUSE_NAME + ' '
						+ resp.SEC_NAME + '</h4></center>';
				temp += '<center><img id="ramenImg" src="images/pro0.jpg"></center>';
				temp += '<p>제품 : ' + resp.R_NAME + '</p>';
				temp += '<p>총수량 : ' + resp.QUANTITY + ' 박스</p>';
				temp += '<p>총면적 : ' + resp.TOTALAREA + '㎡</p>';
				temp += '<p>창고 사용률 :' + resp.USAGE + '%</p>';
				temp += '<input type="hidden" id="section_code111" value="'+resp.SEC_CODE+'">';

				$("#detailInfo").html(temp);
				stockGraph();
			}

			function stockGraph() {
				$("div").remove("#warehouse_usage");
				
				var sec_code = $("#section_code111").val();
				var option = 1;
				$.ajax({
					url : "safeStock",
					method : "GET",
					data : {"sec_code": sec_code, "option": option},
					success : function (resp){
						 var temp = '<input type="hidden" id="safe_Quantity" value="'+resp.safe_Quantity+'">';
							temp += '<input type="hidden" id="safe_Rate" value="'+resp.safe_Rate+'">';
							$("#graphValue1").html(temp); 
							ssQauntity();
					}
				})
			}
			
			function ssQauntity(){
				var sec_code = $("#section_code111").val();
				$.ajax({
					url : "SSQuantity",
					method : "GET",
					data : {"sec_code": sec_code}, 
					success : function(resp){
						var temp1 = '<input type="hidden" id="real_Quantity" value="'+resp.real_Quantity+'">';
							temp1 += '<input type="hidden" id="real_Rate" value="'+resp.real_Rate+'">';
						$("#graphValue2").html(temp1);
						drawStockGraph();
					}
				})
			}
			

			function drawStockGraph() {
				var sq = $("#safe_Quantity").val(); 
				var sr = $("#safe_Rate").val();
				var rq = $("#real_Quantity").val(); 
				var rr = $("#real_Rate").val();
				
				var rr2 = (sr-rr)/2;
				
				console.log(sq +" / "+ sr +" / "+ rq +" / "+ rr +" / "+ rr2);
				
				var temp = '<div class="col-lg-4" style="width: 30%; float: left; height: 200px;">';
				temp += '<section class="panel">';
				temp += '<div class="panel-body">';
				temp += '<div class="container">';
				temp += '<div class="progress" style="width: 25%; float: left">';
				/* if (rq <= sq*0.9) {
					console.log("1");
					temp += '<div id="safe11" class="progress-bar progress-bar-success" role="progressbar" style="width:'+rr+'%">';
					temp += '양호</div>';
				} else if (sq*0.9 < rq <= sq*1.1) {
					console.log("2");
					temp += '<div id="safe11" class="progress-bar progress-bar-success" role="progressbar" style="width:'+(rr-rr2)+'%">';
					temp += '양호</div>';
					temp += '<div id="warn11" class="progress-bar progress-bar-warning" role="progressbar" style="width:'+(sr-rr)+'%">';
					temp += '경고</div>';
				} else if (rq < sq*0.9) {
					console.log("3");
					temp += '<div id="warn11" class="progress-bar progress-bar-danger" role="progressbar" style="width:'+rr+'%">';
					temp += '경고</div>';
				} else if (rq > sq*1.1) {
					console.log("4");
					temp += '<div id="safe11" class="progress-bar progress-bar-success" role="progressbar" style="width:40%">';
					temp += '양호</div>';
					temp += '<div id="warn11" class="progress-bar progress-bar-warning" role="progressbar" style="width:10%">';
					temp += '경고</div>';
					temp += '<div id="danger11" class="progress-bar progress-bar-danger" role="progressbar" style="width:20%">';
					temp += '위험</div></div></div>';
				} else if (sq <= rq ) {
					temp += '<div id="safe11" class="progress-bar progress-bar-success" role="progressbar" style="width:'+rr+'%">';
					temp += '양호</div>';
				} */
				temp += '<p>현재 재고량 : </p>';
				temp += '<div id="safe11" class="progress-bar progress-bar-success" role="progressbar" style="width:'+rr+'%">'+rq+'개</p>';
				temp += '<p>적정재고량 : </p>';
				temp += '<div id="warn11" class="progress-bar progress-bar-warning" role="progressbar" style="width:'+sr+'%">'+sq+'개</p>';
				temp += '<p>상태 :</p>';
 				temp += '</div></section></div>';

 
				$("#stockGraph").html(temp);
	
			}
				
		
			$(function() {
				var temp = '<img src="images/logistics/warehouse1.jpg" class="warehouseP" id="img1">';
				$("#img1").css('z-index', 1);
				$("#imgPart").html(temp);
				getOriginImg();
				imgValue = 1;
				r_code = {
					"warehouse_code" : "1",
					"ramen1" : "p01_1",
					"ramen2" : "p02_1",
					"ramen3" : "p03_1",
					"ramen4" : "p04_1",
					"ramen5" : "p05_1"
				};
				ramenDonut(r_code);
				warehouseUsage();

				$("#imgBtn1")
						.on(
								'click',
								function() {
									imgValue = 1;
									var temp = '<img src="images/logistics/warehouse1.jpg" class="warehouseP" id="img1">';
									$("#img1").css('z-index', 1);
									$("#imgPart").html(temp);
									ramenDonut(r_code);
									warehouseUsage();
									r_code = {
										"warehouse_code" : "1",
										"ramen1" : "p01_1",
										"ramen2" : "p02_1",
										"ramen3" : "p03_1",
										"ramen4" : "p04_1",
										"ramen5" : "p05_1"
									};
								});

				$("#imgBtn2")
						.on(
								'click',
								function() {
									imgValue = 2;
									var temp = '<img src="images/logistics/warehouse2.jpg" class="warehouseP" id="img2">';
									$("#imgPart").html(temp);
									ramenDonut(r_code);
									warehouseUsage();
									r_code = {
										"warehouse_code" : "2",
										"ramen1" : "p01_2",
										"ramen2" : "p02_2",
										"ramen3" : "p03_2",
										"ramen4" : "p04_2",
										"ramen5" : "p05_2"
									};
								});

				$("#imgBtn3")
						.on(
								'click',
								function() {
									imgValue = 3
									var temp = '<img src="images/logistics/warehouse3.jpg" class="warehouseP" id="img3">';
									$("#imgPart").html(temp);
									ramenDonut(r_code);
									warehouseUsage();
									r_code = {
										"warehouse_code" : "3",
										"ramen1" : "p01_1",
										"ramen2" : "p02_1",
										"ramen3" : "p03_1",
										"ramen4" : "p04_1",
										"ramen5" : "p05_1"
									};
								});

			})


			function ramenDonut(resp) {
				/* 라면 재고량 도넛차트 */
				$.ajax({
					url : "ramenStock",
					method : "GET",
					data : r_code,
					success : printDonut
				});
			}

			function printDonut(resp) {
				Morris.Donut({
					element : 'graph-donut',
					data : [ {
						value : resp.item1,
						label : '라면 종류별 재고량',
						formatted : '안성탕면 ' + resp.item1 + '%'
					}, {
						value : resp.item2,
						label : '라면 종류별 재고량',
						formatted : '신라면 ' + resp.item2 + '%'
					}, {
						value : resp.item3,
						label : '라면 종류별 재고량',
						formatted : '너구리 ' + resp.item3 + '%'
					}, {
						value : resp.item4,
						label : '라면 종류별 재고량',
						formatted : '멸치칼국수라면 ' + resp.item4 + '%'
					}, {
						value : resp.item5,
						label : '라면 종류별 재고량',
						formatted : '사리곰탕 ' + resp.item5 + '%'
					} ],
					backgroundColor : '#fff',
					labelColor : '#1fb5ac',
					colors : [ '#E67A77', '#D9DD81', '#79D1CF', '#95D7BB',
							'RED' ],
					formatter : function(x, data) {
						return data.formatted;
					}
				});
			}

			function warehouseUsage() {
				/* 창고 사용률 */
				$.ajax({
					url : "warehouseUsage",
					method : "GET",
					data : {
						"warehouse_code" : imgValue
					},
					success : function(resp) {
						var elem = document.getElementById("myBar");
						var width = 0;
						var id = setInterval(frame, 10);
						function frame() {
							if (width >= resp) {
								clearInterval(id);
							} else {
								width++;
								elem.style.width = width + '%';
								elem.innerHTML = width * 1 + '%';
							}
						}
					}
				})
			};
		</script>
		<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
		<script src="js/skycons/skycons.js"></script>
		<script src="js/jquery.scrollTo/jquery.scrollTo.js"></script>
		<script
			src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="js/calendar/clndr.js"></script>
		<script
			src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
		<script src="js/calendar/moment-2.2.1.js"></script>
		<script src="js/evnt.calendar.init.js"></script>
		<script src="js/jvector-map/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="js/jvector-map/jquery-jvectormap-us-lcc-en.js"></script>
		<script src="js/gauge/gauge.js"></script>
		<!--clock init-->
		<script src="js/css3clock/js/css3clock.js"></script>
		<!--Easy Pie Chart-->
		<script src="js/easypiechart/jquery.easypiechart.js"></script>
		<!--Sparkline Chart-->
		<script src="js/sparkline/jquery.sparkline.js"></script>
		<!--Morris Chart-->
		<script src="js/morris-chart/morris.js"></script>
		<script src="js/morris-chart/raphael-min.js"></script>
		<!--jQuery Flot Chart-->
		<script src="js/flot-chart/jquery.flot.js"></script>
		<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
		<script src="js/flot-chart/jquery.flot.resize.js"></script>
		<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
		<script src="js/flot-chart/jquery.flot.animator.min.js"></script>
		<script src="js/flot-chart/jquery.flot.growraf.js"></script>
		<script src="js/dashboard.js"></script>
		<script src="js/jquery.customSelect.min.js"></script>
		<!--common script init for all pages-->
		<script src="js/scripts.js"></script>
		<!--script for this page-->
</body>
</html>