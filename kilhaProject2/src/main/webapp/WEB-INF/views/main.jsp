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

<link rel="shortcut icon" href="images/favicon.png">
<title>BucketAdmin</title>
<!--Core CSS -->

<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="js/jquery-ui/jquery-ui-1.10.1.custom.min.css"
	rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="js/jvector-map/jquery-jvectormap-2.0.3.css" rel="stylesheet">
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
<script src="js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$('#editable-sample tr')
				.on(
						'click',
						function() {
							var processCode = $(this).attr('id');
							$
									.ajax({
										url : 'popupNowEstimate',
										method : 'post',
										data : {
											"processCode" : processCode
										},
										dataType : 'json',
										success : function(resp) {
											var temp = 0;
											var text = '<li><i class="fa fa-check"></i>영업소 이름 : '
													+ resp.shopName
													+ '</li>'
													+ '<li><i class="fa fa-check"></i>영업소 주소 : '
													+ resp.addressDetail1
													+ ' '
													+ resp.addressDetail2
													+ ' '
													+ resp.addressDetail3 + ' '
											if (resp.addressDetail4 != null) {
												+resp.addressDetail4
											}
											text += '</li>'
													+ '<li><i class="fa fa-check"></i>납품 품목 : '
													+ resp.supplyList[0].productName
													+ ' 외 '
													+ resp.supplyList.length
													+ '품목'
													+ '</li>'
													+ '<li><i class="fa fa-check"></i>총 매출액 : '
											for (var i = 0; i < resp.supplyList.length; i++) {
												temp += (resp.supplyList[i].supplyVolume)
														* (resp.supplyList[i].supplyPrice);
											}
											text += '' + AddComma(temp)
													+ '</li>'
											$('#salesList').html(text);

											var warehouseCode = resp.warehouseCode;
											$
													.ajax({
														url : 'warehouseDetail',
														method : 'post',
														data : {
															'warehouseCode' : warehouseCode
														},
														dataType : 'json',
														success : function(
																respp) {
															var warehouseText = '<li><i class="fa fa-check"></i>물류창고 이름: '
																	+ respp.warehouse.warehouseName
																	+ '</li>'
																	+ '<li><i class="fa fa-check"></i>물류창고 주소 : '
																	+ respp.warehouse.addressSet[0].addressDetail1
																	+ ' '
																	+ respp.warehouse.addressSet[0].addressDetail2
																	+ ' '
																	+ respp.warehouse.addressSet[0].addressDetail3
																	+ ' '
															if (respp.warehouse.addressSet[0].addressDetail4 != null) {
																+respp.warehouse.addressSet[0].addressDetail4
															}
															warehouseText += '</li>'
																	+ '<li><i class="fa fa-check"></i>보관 상품 : '
																	+ respp.warehouse.stockSet[0].goods
																	+ ' 외 '
																	+ respp.warehouse.stockSet.length
																	+ '품목'
																	+ '</li>'
																	+ '<li><i class="fa fa-check"></i>창고 사용률 : '
																	+ ''
																	+ Math
																			.ceil(respp.usage)
																	+ '%</li>'
															$('#warehouseList')
																	.html(
																			warehouseText);

														}
													});
											$('#processForm').removeAttr(
													'style');
											fnMove('#processForm');
										}
									});
						});
	});
</script>
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

				<img src="images/logobrain_original.png" alt=""
					style="width: 200px; height: 200px; position: absolute; top: -60px; left: 15px;">

				<div class="sidebar-toggle-box">
					<div class="fa fa-bars"></div>
				</div>
			</div>
			<!--logo end-->


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
						<li><a class="active"> <i class="fa fa-caret-down"></i> <span>전체메뉴</span>
						</a></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-credit-card"></i> <span>구매부서</span>
						</a>
							<ul class="sub">
								<li><a href="Pur_inform">원자재 정보</a></li>
								<li><a href="Pur_chart">원자재 거래</a></li>
								<li><a href="Pur_orderform1">원자재 주문하기</a></li>
								<li><a href="Pur_orders">원자재 주문내역</a></li>
								<li><a href="Pur_profitloss">원자재 거래내역</a></li>
								<li><a href="Pur_store">원자재재고량</a></li>
							</ul></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-wrench"></i> <span>생산 부문</span>
						</a>
							<ul class="sub">
								<li><a
									href="pro_Fac?f_num=1&r_num=p01_1&line_num=A1&f_name=1st Factory">제
										1공장 정보</a></li>
								<li><a
									href="pro_Fac?f_num=2&r_num=p04_1&line_num=D1&f_name=2nd Factory">제
										2공장 정보</a></li>
								<li><a href="pro_Gradient">예측 분석</a></li>
								<li><a href="pro_RegistForm">생산정보입력</a></li>
							</ul></li>

						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-truck"></i> <span>물류부서</span>
						</a>
							<ul class="sub">
								<li><a href="second">물류창고 현황</a></li>
								<li><a href="junseok">출고서 확인</a></li>
								<li><a href="third">배차경로 확인</a></li>
							</ul></li>

						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-users"></i> <span>영업부서</span>
						</a>
							<ul class="sub">
								<li><a href="salesMain">영업 메인 페이지</a></li>
								<li><a href="processMain">영업 상황 조회</a></li>
								<li><a href="compareMain">영업 비교 페이지</a></li>
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
				<!--mini statistics start-->
				<div class="row">
					<div class="col-md-3" style="display: none;">
						<section class="panel">
							<div class="panel-body">
								<div class="top-stats-panel">
									<div class="gauge-canvas">
										<h4 class="widget-h">Monthly Expense</h4>
										<canvas width=160 height=100 id="gauge"></canvas>
									</div>
									<ul class="gauge-meta clearfix">
										<li id="gauge-textfield" class="pull-left gauge-value"></li>
										<li class="pull-right gauge-title">Safe</li>
									</ul>
								</div>
							</div>
						</section>
					</div>
					<div class="col-md-3" style="display: none;">
						<section class="panel">
							<div class="panel-body">
								<div class="top-stats-panel">
									<div class="daily-visit">
										<h4 class="widget-h">Daily Visitors</h4>
										<div id="daily-visit-chart"
											style="width: 100%; height: 100px; display: block"></div>
										<ul class="chart-meta clearfix">
											<li class="pull-left visit-chart-value">3233</li>
											<li class="pull-right visit-chart-title"><i
												class="fa fa-arrow-up"></i> 15%</li>
										</ul>
									</div>
								</div>
							</div>
						</section>
					</div>
					<div class="col-md-3" style="display: none;">
						<section class="panel">
							<div class="panel-body">
								<div class="top-stats-panel">
									<h4 class="widget-h">Top Advertise</h4>
									<div class="sm-pie"></div>
								</div>
							</div>
						</section>
					</div>
					<div class="col-md-3" style="display: none;">
						<section class="panel">
							<div class="panel-body">
								<div class="top-stats-panel">
									<h4 class="widget-h">Daily Sales</h4>
									<div class="bar-stats">
										<ul class="progress-stat-bar clearfix">
											<li data-percent="50%"><span
												class="progress-stat-percent pink"></span></li>
											<li data-percent="90%"><span
												class="progress-stat-percent"></span></li>
											<li data-percent="70%"><span
												class="progress-stat-percent yellow-b"></span></li>
										</ul>
										<ul class="bar-legend">
											<li><span class="bar-legend-pointer pink"></span> New
												York</li>
											<li><span class="bar-legend-pointer green"></span> Los
												Angels</li>
											<li><span class="bar-legend-pointer yellow-b"></span>
												Dallas</li>
										</ul>
										<div class="daily-sales-info">
											<span class="sales-count">1200 </span> <span
												class="sales-label">Products Sold</span>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!--mini statistics end-->
				<div class="row">
					<div class="col-md-6">
						<!-- graph start-->
						<section class="panel">
							<div class="text-center price-head" style="padding-bottom: 0px;">
								<h1 class="color-terques">Location of each department</h1>
								<p>가치 사슬의 핵심 부문의 분포를 지도로 쉽게 확인할 수 있습니다.</p>
							</div>
							<div class="panel-body">
								<div id="graph-area" class="main-chart" style="display: none;">
								</div>

								<div id="world-map" class="vector-stat" style="height: 500px;">
								</div>

								<div id="before_type" style="float: left; width: 33%;"></div>
								<div id="current_type" style="float: left; width: 33%;"></div>
								<div id="after_type" style="float: left; width: 33%;"></div>
								<br> <br> <br>
								<div id="before_name" style="float: left; width: 33%"></div>
								<div id="current_name" style="float: left; width: 33%"></div>
								<div id="after_name" style="float: left; width: 33%"></div>
							</div>
						</section>
						<!--earning graph end-->
					</div>

					<div class="col-md-6">
						<!-- graph start-->
						<section class="panel">
							<div class="text-center price-head" style="padding-bottom: 0px;">
								<h1 class="color-terques">Orders currently in progress</h1>
								<p>진행 중인 견적 내용을 클릭하여 업무 흐름을 파악하세요</p>
							</div>
							<div class="panel-body" style="height: 605px;">
								<div class="panel-body" style="height: 605px;">
									<div class="adv-table editable-table ">
										<table class="table table-striped table-hover table-bordered"
											id="editable-sample">
											<thead>
												<tr>
													<th>영업코드</th>
													<th>매장명</th>
													<th>주소</th>
													<th>총금액</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach items="${supplyList}" var="supplyList"
													varStatus="status">
													<tr id="${supplyList.processCode }">
														<td>${supplyList.processCode }</td>
														<td>${supplyList.shopName }</td>
														<td>${supplyList.addressDetail1 }
															${supplyList.addressDetail2 } ${supplyList.addressDetail3 }
															<c:if test="${supplyList.addressDetail4 != null}">
                					 ${supplyList.addressDetail4 }
                				</c:if>
														</td>
														<td>${sumList[status.index] }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
						</section>
						<!--earning graph end-->
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<!--notification start-->
						<section class="panel">
							<div class="panel-body" id="processForm" style="display: none;">
								<!--price start-->
								<div class="text-center price-head">
									<h1 class="color-terques">Check Value Chain Of Our
										Enterpirse!!</h1>
									<p>해당 주문 정보를 선택하면 자세한 기업 가치사슬을 확인할 수 있습니다.</p>
								</div>
								<div class="col-lg-4 col-sm-4">
									<div class="pricing-table" style="height: 520px;">
										<div class="pricing-head" style="background: white;">
											<img src="images/fac.gif"
												style="width: 300px; height: 170px; z-index: -1;" />
											<h1 style="color: gray;">Step 1: Factory</h1>
										</div>
										<!-- <div class="pricing-quote" style="widht: 300px; height: 100px;">
                        </div> -->
										<ul class="list-unstyled">
											<li><i class="fa fa-check"></i>공장 이름 : 1st Ramen
												Factory, 2nd Ramen Factory</li>
											<li><i class="fa fa-check"></i>주소: 경기도 군포시 당정동, 경기도 안양시
												동안구 평촌동</li>
											<li><i class="fa fa-check"></i>생산 품목:
												<ul style="margin-top: 0px; margin-left: 20px;">
													<li>1st(안성탕면, 신라면, 너구리)</li>
													<li style="padding-top: 0px;">2nd(멸치칼국수라면, 사리곰탕면)</li>
												</ul></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-4 col-sm-4">
									<div class="pricing-table" style="height: 520px;">
										<div class="pricing-head" style="background: white;">
											<img src="images/warehouse.gif"
												style="width: 300px; height: 170px; z-index: -1;" />
											<h1 style="color: gray;">Step 2 : Warehouse</h1>
										</div>
										<ul class="list-unstyled" id="warehouseList">

										</ul>
									</div>
								</div>

								<div class="col-lg-4 col-sm-4">
									<div class="pricing-table" style="height: 520px;">
										<div class="pricing-head" style="background: white;">
											<img src="images/sales.gif"
												style="width: 300px; height: 170px; z-index: -1;" />
											<h1 style="color: gray;">Stpe 3 : Market</h1>
										</div>
										<!-- <div class="pricing-quote" style="widht: 300px; height: 100px;">
                        </div> -->
										<ul class="list-unstyled" id="salesList">
										</ul>

									</div>
								</div>
								<!--price end-->
							</div>
						</section>
					</div>
					<div class="col-md-4" style="display: none;">
						<!--widget graph start-->
						<section class="panel">
							<div class="panel-body">
								<div class="monthly-stats pink">
									<div class="clearfix">
										<h4 class="pull-left">January 2013</h4>
										<!-- Nav tabs -->
										<div class="btn-group pull-right stat-tab">
											<a href="#line-chart" class="btn stat-btn active"
												data-toggle="tab"><i class="ico-stats"></i></a> <a
												href="#bar-chart" class="btn stat-btn" data-toggle="tab"><i
												class="ico-bars"></i></a>
										</div>
									</div>
									<!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane active" id="line-chart">
											<div class="sparkline" data-type="line" data-resize="true"
												data-height="75" data-width="90%" data-line-width="1"
												data-min-spot-color="false" data-max-spot-color="false"
												data-line-color="#ffffff" data-spot-color="#ffffff"
												data-fill-color="" data-highlight-line-color="#ffffff"
												data-highlight-spot-color="#e1b8ff" data-spot-radius="3"
												data-data="[100,200,459,234,600,800,345,987,675,457,765]">
											</div>
										</div>
										<div class="tab-pane" id="bar-chart">
											<div class="sparkline" data-type="bar" data-resize="true"
												data-height="75" data-width="90%" data-bar-color="#d4a7f5"
												data-bar-width="10"
												data-data="[300,200,500,700,654,987,457,300,876,454,788,300,200,500,700,654,987,457,300,876,454,788]"></div>
										</div>
									</div>
								</div>
								<div class="circle-sat">
									<ul>
										<li class="left-stat-label"><span class="sell-percent">60%</span><span>Direct
												Sell</span></li>
										<li><span class="epie-chart" data-percent="45"> <span
												class="percent"></span>
										</span></li>
										<li class="right-stat-label"><span class="sell-percent">40%</span><span>Channel
												Sell</span></li>
									</ul>
								</div>
							</div>
						</section>
						<!--widget graph end-->
						<!--widget graph start-->
						<section class="panel">
							<div class="panel-body">
								<ul class="clearfix prospective-spark-bar">
									<li class="pull-left spark-bar-label"><span
										class="bar-label-value"> $18887</span> <span>Prospective
											Label</span></li>
									<li class="pull-right">
										<div class="sparkline" data-type="bar" data-resize="true"
											data-height="40" data-width="90%" data-bar-color="#f6b0ae"
											data-bar-width="5"
											data-data="[300,200,500,700,654,987,457,300,876,454,788,300,200,500,700,654,987,457,300,876,454,788]"></div>
									</li>
								</ul>
							</div>
						</section>
						<!--widget graph end-->
						<!--widget weather start-->
						<section class="weather-widget clearfix">
							<div class="pull-left weather-icon">
								<canvas id="icon1" width="60" height="60"></canvas>
							</div>
							<div>
								<ul class="weather-info">
									<li class="weather-city">New York <i class="ico-location"></i></li>
									<li class="weather-cent"><span>18</span></li>
									<li class="weather-status">Rainy Day</li>
								</ul>
							</div>
						</section>
						<!--widget weather end-->
					</div>
				</div>
				<!--mini statistics start-->
				<div class="row">
					<div class="col-md-3" style="display: none;">
						<div class="mini-stat clearfix">
							<span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span>
							<div class="mini-stat-info">
								<span>320</span> New Order Received
							</div>
						</div>
					</div>
					<div class="col-md-3" style="display: none;">
						<div class="mini-stat clearfix">
							<span class="mini-stat-icon tar"><i class="fa fa-tag"></i></span>
							<div class="mini-stat-info">
								<span>22,450</span> Copy Sold Today
							</div>
						</div>
					</div>
					<div class="col-md-3" style="display: none;">
						<div class="mini-stat clearfix">
							<span class="mini-stat-icon pink"><i class="fa fa-money"></i></span>
							<div class="mini-stat-info">
								<span>34,320</span> Dollar Profit Today
							</div>
						</div>
					</div>
					<div class="col-md-3" style="display: none;">
						<div class="mini-stat clearfix">
							<span class="mini-stat-icon green"><i class="fa fa-eye"></i></span>
							<div class="mini-stat-info">
								<span>32720</span> Unique Visitors
							</div>
						</div>
					</div>
				</div>
				<!--mini statistics end-->


				<div class="row">
					<div class="col-md-8" style="display: none;">
						<div class="event-calendar clearfix">
							<div class="col-lg-7 calendar-block">
								<div class="cal1 "></div>
							</div>
							<div class="col-lg-5 event-list-block">
								<div class="cal-day">
									<span>Today</span> Friday
								</div>
								<ul class="event-list">
									<li>Lunch with jhon @ 3:30 <a href="#" class="event-close"><i
											class="ico-close2"></i></a></li>
									<li>Coffee meeting with Lisa @ 4:30 <a href="#"
										class="event-close"><i class="ico-close2"></i></a></li>
									<li>Skypee conf with patrick @ 5:45 <a href="#"
										class="event-close"><i class="ico-close2"></i></a></li>
									<li>Gym @ 7:00 <a href="#" class="event-close"><i
											class="ico-close2"></i></a></li>
									<li>Dinner with daniel @ 9:30 <a href="#"
										class="event-close"><i class="ico-close2"></i></a></li>

								</ul>
								<input type="text" class="form-control evnt-input"
									placeholder="NOTES">
							</div>
						</div>
					</div>
					<div class="col-md-4" style="display: none;">
						<!--chat start-->
						<section class="panel">
							<header class="panel-heading">
								Chat <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="chat-conversation">
									<ul class="conversation-list">
										<li class="clearfix">
											<div class="chat-avatar">
												<img src="images/chat-user-thumb.png" alt="male"> <i>10:00</i>
											</div>
											<div class="conversation-text">
												<div class="ctext-wrap">
													<i>John Carry</i>
													<p>Hello!</p>
												</div>
											</div>
										</li>
										<li class="clearfix odd">
											<div class="chat-avatar">
												<img src="images/chat-user-thumb-f.png" alt="female">
												<i>10:00</i>
											</div>
											<div class="conversation-text">
												<div class="ctext-wrap">
													<i>Lisa Peterson</i>
													<p>Hi, How are you? What about our next meeting?</p>
												</div>
											</div>
										</li>
										<li class="clearfix">
											<div class="chat-avatar">
												<img src="images/chat-user-thumb.png" alt="male"> <i>10:00</i>
											</div>
											<div class="conversation-text">
												<div class="ctext-wrap">
													<i>John Carry</i>
													<p>Yeah everything is fine</p>
												</div>
											</div>
										</li>
										<li class="clearfix odd">
											<div class="chat-avatar">
												<img src="images/chat-user-thumb-f.png" alt="female">
												<i>10:00</i>
											</div>
											<div class="conversation-text">
												<div class="ctext-wrap">
													<i>Lisa Peterson</i>
													<p>Wow that's great</p>
												</div>
											</div>
										</li>
									</ul>
									<div class="row">
										<div class="col-xs-9">
											<input type="text" class="form-control chat-input"
												placeholder="Enter your text">
										</div>
										<div class="col-xs-3 chat-send">
											<button type="submit" class="btn btn-default">Send</button>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!--chat end-->
					</div>
				</div>
				<div class="row">
					<div class="col-md-8" style="display: none;">
						<section class="panel">
							<div class="wdgt-row">
								<img src="images/weather_image.jpg" height="243" alt="">
								<div class="wdt-head">weather forecast</div>
								<div class="country-select">
									<select class="styled">
										<option>New York</option>
										<option>London</option>
										<option>Australia</option>
										<option>China</option>
										<option>Canada</option>
									</select>
								</div>
							</div>

							<div class="panel-body">
								<div class="row weather-full-info">
									<div class="col-md-3 today-status">
										<h1>Today</h1>
										<i class=" ico-cloudy "></i>
										<div class="degree">37</div>
									</div>
									<div class="col-md-9">
										<ul>
											<li>
												<h2>Tomorrow</h2> <i class=" ico-cloudy text-primary"></i>
												<div class="statistics">32</div>
											</li>
											<li>
												<h2>Mon</h2> <i class=" ico-rainy2 text-danger"></i>
												<div class="statistics">40</div>
											</li>
											<li>
												<h2>Tue</h2> <i class=" ico-lightning3 text-info"></i>
												<div class="statistics">25</div>
											</li>
											<li>
												<h2>Wed</h2> <i class=" ico-sun3 text-success"></i>
												<div class="statistics">37</div>
											</li>
											<li>
												<h2>Thu</h2> <i class=" ico-snowy3 text-warning"></i>
												<div class="statistics">15</div>
											</li>
											<li>
												<h2>Fri</h2> <i class=" ico-cloudy "></i>
												<div class="statistics">21</div>
											</li>
										</ul>
									</div>
								</div>
							</div>

						</section>
					</div>

					<div class="col-md-4" style="display: none;">
						<div class="profile-nav alt">
							<section class="panel">
								<div class="user-heading alt clock-row terques-bg">
									<h1>December 14</h1>
									<p class="text-left">2014, Friday</p>
									<p class="text-left">7:53 PM</p>
								</div>
								<ul id="clock">
									<li id="sec"></li>
									<li id="hour"></li>
									<li id="min"></li>
								</ul>

								<ul class="clock-category">
									<li><a href="#" class="active"> <i class="ico-clock2"></i>
											<span>Clock</span>
									</a></li>
									<li><a href="#"> <i class="ico-alarm2 "></i> <span>Alarm</span>
									</a></li>
									<li><a href="#"> <i class="ico-stopwatch"></i> <span>Stop
												watch</span>
									</a></li>
									<li><a href="#"> <i class=" ico-clock2 "></i> <span>Timer</span>
									</a></li>
								</ul>

							</section>

						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="display: none;">
						<!--notification start-->
						<section class="panel">
							<header class="panel-heading">
								Notification <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="alert alert-info clearfix">
									<span class="alert-icon"><i class="fa fa-envelope-o"></i></span>
									<div class="notification-info">
										<ul class="clearfix notification-meta">
											<li class="pull-left notification-sender"><span><a
													href="#">Jonathan Smith</a></span> send you a mail</li>
											<li class="pull-right notification-time">1 min ago</li>
										</ul>
										<p>Urgent meeting for next proposal</p>
									</div>
								</div>
								<div class="alert alert-danger">
									<span class="alert-icon"><i class="fa fa-facebook"></i></span>
									<div class="notification-info">
										<ul class="clearfix notification-meta">
											<li class="pull-left notification-sender"><span><a
													href="#">Jonathan Smith</a></span> mentioned you in a post</li>
											<li class="pull-right notification-time">7 Hours Ago</li>
										</ul>
										<p>Very cool photo jack</p>
									</div>
								</div>
								<div class="alert alert-success ">
									<span class="alert-icon"><i class="fa fa-comments-o"></i></span>
									<div class="notification-info">
										<ul class="clearfix notification-meta">
											<li class="pull-left notification-sender">You have 5
												message unread</li>
											<li class="pull-right notification-time">1 min ago</li>
										</ul>
										<p>
											<a href="#">Anjelina Mewlo, Jack Flip</a> and <a href="#">3
												others</a>
										</p>
									</div>
								</div>
								<div class="alert alert-warning ">
									<span class="alert-icon"><i class="fa fa-bell-o"></i></span>
									<div class="notification-info">
										<ul class="clearfix notification-meta">
											<li class="pull-left notification-sender">Domain Renew
												Deadline 7 days ahead</li>
											<li class="pull-right notification-time">5 Days Ago</li>
										</ul>
										<p>Next 5 July Thursday is the last day</p>
									</div>
								</div>
							</div>
						</section>
						<!--notification end-->
					</div>
					<div class="col-md-6" style="display: none;">
						<!--todolist start-->
						<section class="panel">
							<header class="panel-heading">
								To Do List <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<ul class="to-do-list" id="sortable-todo">
									<li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
										<div class="todo-check pull-left">
											<input type="checkbox" value="None" id="todo-check" /> <label
												for="todo-check"></label>
										</div>
										<p class="todo-title">Donec quam libero, rutrum non
											gravida ut</p>
										<div class="todo-actionlist pull-right clearfix">
											<a href="#" class="todo-done"><i class="fa fa-check"></i></a>
											<a href="#" class="todo-edit"><i class="ico-pencil"></i></a>
											<a href="#" class="todo-remove"><i class="ico-close"></i></a>
										</div></li>
									<li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
										<div class="todo-check pull-left">
											<input type="checkbox" value="None" id="todo-check1" /> <label
												for="todo-check1"></label>
										</div>
										<p class="todo-title">Donec quam libero, rutrum non
											gravida</p>
										<div class="todo-actionlist pull-right clearfix">
											<a href="#" class="todo-done"><i class="fa fa-check"></i></a>
											<a href="#" class="todo-edit"><i class="ico-pencil"></i></a>
											<a href="#" class="todo-remove"><i class="ico-close"></i></a>
										</div></li>
									<li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
										<div class="todo-check pull-left">
											<input type="checkbox" value="None" id="todo-check2" /> <label
												for="todo-check2"></label>
										</div>
										<p class="todo-title">Donec quam libero, rutrum non
											gravida ut</p>
										<div class="todo-actionlist pull-right clearfix">
											<a href="#" class="todo-done"><i class="fa fa-check"></i></a>
											<a href="#" class="todo-edit"><i class="ico-pencil"></i></a>
											<a href="#" class="todo-remove"><i class="ico-close"></i></a>
										</div></li>
									<li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
										<div class="todo-check pull-left">
											<input type="checkbox" value="None" id="todo-check3" /> <label
												for="todo-check3"></label>
										</div>
										<p class="todo-title">Donec quam libero, rutrum non
											gravida ut</p>
										<div class="todo-actionlist pull-right clearfix">
											<a href="#" class="todo-done"><i class="fa fa-check"></i></a>
											<a href="#" class="todo-edit"><i class="ico-pencil"></i></a>
											<a href="#" class="todo-remove"><i class="ico-close"></i></a>
										</div></li>
									<li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
										<div class="todo-check pull-left">
											<input type="checkbox" value="None" id="todo-check4" /> <label
												for="todo-check4"></label>
										</div>
										<p class="todo-title">Donec quam libero, rutrum non
											gravida ut</p>
										<div class="todo-actionlist pull-right clearfix">
											<a href="#" class="todo-done"><i class="fa fa-check"></i></a>
											<a href="#" class="todo-edit"><i class="ico-pencil"></i></a>
											<a href="#" class="todo-remove"><i class="ico-close"></i></a>
										</div></li>
									<li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
										<div class="todo-check pull-left">
											<input type="checkbox" value="None" id="todo-check5" /> <label
												for="todo-check5"></label>
										</div>
										<p class="todo-title">Donec quam libero, rutrum non
											gravida ut</p>
										<div class="todo-actionlist pull-right clearfix">
											<a href="#" class="todo-done"><i class="fa fa-check"></i></a>
											<a href="#" class="todo-edit"><i class="ico-pencil"></i></a>
											<a href="#" class="todo-remove"><i class="ico-close"></i></a>
										</div></li>
									<li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
										<div class="todo-check pull-left">
											<input type="checkbox" value="None" id="todo-check6" /> <label
												for="todo-check6"></label>
										</div>
										<p class="todo-title">Donec quam libero, rutrum non
											gravida ut</p>
										<div class="todo-actionlist pull-right clearfix">
											<a href="#" class="todo-done"><i class="fa fa-check"></i></a>
											<a href="#" class="todo-edit"><i class="ico-pencil"></i></a>
											<a href="#" class="todo-remove"><i class="ico-close"></i></a>
										</div></li>
								</ul>
								<div class="todo-action-bar">
									<div class="row">
										<div class="col-xs-4 btn-todo-select">
											<button type="submit" class="btn btn-default">
												<i class="fa fa-check"></i> Select All
											</button>
										</div>
										<div class="col-xs-4 todo-search-wrap">
											<input type="text"
												class="form-control search todo-search pull-right"
												placeholder=" Search">
										</div>
										<div class="col-xs-4 btn-add-task">
											<button type="submit" class="btn btn-default btn-primary">
												<i class="fa fa-plus"></i> Add Task
											</button>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!--todolist end-->
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
	<script type="text/javascript">
		function AddComma(data_value) {
			return Number(data_value).toLocaleString('en');
		}

		function fnMove(seq) {
			var offset = $(seq).offset();
			$('html, body').animate({
				scrollTop : offset.top
			}, 400);
		}
	</script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="bs3/js/bootstrap.js"></script>
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
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
	<script src="js/jvector-map/jquery-jvectormap-2.0.3.min.js"></script>
	<script src="js/jvector-map/jquery-jvectormap-korea-mill-en.js"></script>
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
	<script src="js/dashboard.js?version=2017"></script>
	<script src="js/jquery.customSelect.min.js"></script>
	<!-- 	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script> -->
	<!-- <script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script> -->

	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>

	<!--script for this page-->
	<script src="js/gritter.js" type="text/javascript"></script>

	<script src="js/jquery-migrate.js"></script>


	<!--script for this page only-->
	<script src="js/table-editable.js"></script>
	<script src="js/jquery-migrate.js"></script>

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>


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