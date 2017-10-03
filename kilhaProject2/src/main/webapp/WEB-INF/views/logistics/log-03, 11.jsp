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

				<img src="images/logobrain_original.png"alt="" style="width:200px; height: 200px; position:absolute; top: -60px; left: 15px;">
				
				<div class="sidebar-toggle-box">
					<div class="fa fa-bars"></div>
				</div>
			</div>
			<!--logo end-->

			
			<div class="top-nav clearfix">
				<!--search & user info start-->
				<table id="loginForm" >
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
                <li>
                    <a class="active">
                        <i class="fa fa-caret-down"></i>
                        <span>전체메뉴</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-credit-card"></i>
                        <span>구매부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="Pur_inform">원자재 정보</a></li>
                        <li><a href="Pur_chart">원자재 거래</a></li>
                        <li><a href="Pur_orderform1">원자재 주문하기</a></li>
                        <li><a href="Pur_orders">원자재 주문내역</a></li>
                        <li><a href="Pur_profitloss">원자재 거래내역</a></li>
                        <li><a href="Pur_store">원자재재고량</a></li>
                    </ul>
                </li>
                <li class="sub-menu"><a href="javascript:;"> <i
                        class="fa fa-wrench"></i> <span>생산 부문</span>
                     </a>
                     <ul class="sub">
                        <li><a href="pro_Fac?f_num=1&r_num=p01_1&line_num=A1&f_name=1st Factory">제 1공장 정보</a></li>
                        <li><a href="pro_Fac?f_num=2&r_num=p04_1&line_num=D1&f_name=2nd Factory">제 2공장 정보</a></li>
                        <li><a href="pro_Gradient">예측 분석</a></li>
                        <li><a href="pro_RegistForm">생산정보입력</a></li>
                     </ul></li>
            
            <li class="sub-menu"><a href="javascript:;"> <i
                        class="fa fa-truck"></i> <span>물류부서</span>
                  </a>
                     <ul class="sub">
                        <li><a href="w_status?w_num=1">제 1물류창고 정보</a></li>
                        <li><a href="w_status?w_num=2">제 2물류창고 정보</a></li>
                        <li><a href="w_status?w_num=3">제 3물류창고 정보</a></li>
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
                        <li><a href="productMain">상품 비교 페이지</a></li>
                     </ul></li>         
        
                
            </ul>            </div>
        <!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

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
								<div class="col-md-6" style="height: 182px;">
									<div class="prd-img" style="width: 260px;">
									<c:if test="${w_num == 1}">
									<br>
									<br>
									<img src="images/logistics/wp1.jpg" alt="">
									</c:if>
									<br>
									<br>
									<c:if test="${w_num == 2}">
										<img src="images/logistics/wp2.jpg" alt="">
									</c:if>
									<br>
									<br>
									<c:if test="${w_num == 3}">
										<img src="images/logistics/wp3.jpg" alt="">
									</c:if>
									</div>
								</div>
								<div class="col-md-6">
									<h1>${w_name}</h1>
									<input type="hidden" class="w_num" value= "${w_num}">
									<p class="normal">${w_address}</p>
									<p>TEL : ${w_tel}</p>
									<div class="price">
										<div>
											<h1>적정재고 달성율: ${rate}%</h1>
										</div>
										<c:if test="${rate >= 90 }">
											<p class="terques">Total Warehouse status: GOOD</p><br>
											<p class="terques">모든 재고 정보는 어제를 기준으로 합니다</p>
										</c:if>
										<c:if test="${rate <90 }">
											<p class="terques">Total Warehouse status: NORMAL</p>
											<p class="terques">모든  재고 정보는 어제를 기준으로 합니다</p>
										</c:if>
									</div>
								</div>


							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-6">
					<section class="panel">
						<div class="panel-body">
							<div class="slimScrollDiv" style="overflow: auto; height: 182px;">
								<table class="table table-hover general-table">
									<thead>
										<tr>
											<th style="text-align: center">상품명</th>
											<th class="hidden-phone" style="text-align: center">적재구역</th>
											<th style="text-align: center">총 재고량</th>
											<th style="text-align: center">상태</th>
											<th style="text-align: center">적정재고 달성률</th>
										</tr>
									</thead>
									<tbody>
									<!--1공장인 경우 해당 데이터 출력  -->
									<c:if test="${w_num == 1}">
										<c:forEach var="item" items="${ramenList}">
											<tr>
												<td style="text-align: center"><a href="w_status?w_num=${w_num}&r_num=${item.r_name}&f_name=1st Factory&line_num=${item.line_num}">${item.r_name}</a></td>
												<td class="hidden-phone" style="text-align: center">${item.sec_name}</td>
												<td style="text-align: center">${item.quantity}</td>
												<c:if test="${item.quantity /410*100 > 85}">
													<td><span class="label label-success label-mini">Good</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-success"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/410*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if
													test="${item.quantity /410*100 <= 85 && item.quantity /410*100 >= 50}">
													<td><span class="label label-info label-mini">Normal</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-info"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/410*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if test="${item.quantity /410*100 < 50}">
													<td><span class="label label-warning label-mini">Bad</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-warning"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/410*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
											</tr>
										</c:forEach>
										</c:if>
										
										<!--2물류창고인 경우 해당 데이터 출력  -->
										<c:if test="${w_num == 2}">
										<c:forEach var="item" items="${ramenList}">
											<tr>
												<td style="text-align: center"><a href="pro_Fac?f_num=${f_num}&r_num=${item.r_num}&f_name=2nd Factory&line_num=${item.line_num}">${item.r_name}</a></td>
												<td class="hidden-phone" style="text-align: center">${item.line_num}</td>
												<td style="text-align: center">${item.recentAmount}</td>
												<c:if test="${item.quantity /352*100 > 85}">
													<td><span class="label label-success label-mini">Good</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-success"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/352*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if
													test="${item.quantity /352*100 <= 85 && item.quantity /352*100 >= 50}">
													<td><span class="label label-info label-mini">Normal</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-info"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/352*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if test="${item.quantity /352*100 < 50}">
													<td><span class="label label-warning label-mini">Bad</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-warning"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/352*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
											</tr>
										</c:forEach>
										</c:if>
										
										<!--3물류창고인 경우 해당 데이터 출력  -->
										<c:if test="${w_num == 3}">
											<c:forEach var="item" items="${ramenList}">
												<tr>
													<td style="text-align: center"><a href="pro_Fac?f_num=${f_num}&r_num=${item.r_num}&f_name=1st Factory&line_num=${item.line_num}">${item.r_name}</a></td>
													<td class="hidden-phone" style="text-align: center">${item.line_num}</td>
													<td style="text-align: center">${item.recentAmount}</td>
													<c:if test="${item.quantity /527*100 > 85}">
													<td><span class="label label-success label-mini">Good</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-success"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/527*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if
													test="${item.quantity /527*100 <= 85 && item.quantity /527*100 >= 50}">
													<td><span class="label label-info label-mini">Normal</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-info"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/527*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if test="${item.quantity /527*100 < 50}">
													<td><span class="label label-warning label-mini">Bad</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-warning"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.quantity/527*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												</tr>
											</c:forEach>
											</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</section>
				</div>
			</div>
			<div class="row" style="width: 100%;">
				<div id="PPart"></div>
			</div>
			
			<div class="row" style="width: 100%;">
				<div class="col-lg-8" style="width: 70%;">
					<section class="panel">
						<div class="panel-body">
						<c:if test="${w_num == 1}">
							<div id="imgPart" class="warehouseP" style="position: relative;">
								<img src="images/logistics/warehouse1.jpg" class="warehouseP" id="img1">
							</div>
						</c:if>
						
						<c:if test="${w_num == 2}">
							<div id="imgPart" class="warehouseP" style="position: relative;">
								<img src="images/logistics/warehouse2.jpg" class="warehouseP" id="img1">
							</div>
						</c:if>
						
						<c:if test="${w_num == 3}">
							<div id="imgPart" class="warehouseP" style="position: relative;">
								<img src="images/logistics/warehouse3.jpg" class="warehouseP" id="img1">
							</div>
						</c:if>
						</div>
					</section>
				</div>
				<div class="col-lg-2" style="width: 30%;">
					<section class="panel" style="height: 560px;">
						<div class="panel-body">
						<div id="detailPart"></div>
						</div>
					</section>
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
		var w_num = $(".w_num").val();
		var r_code;
		
		$(function(){
			$(".warehouseP").css('z-index', 1);
			getOriginImg();
			firstSecionInfo();
			ramenStock();
		})		
		
		function ramenStock(){
			if (w_num == 1) {
				var section1 = "1";
				var section2 = "2";
				var section3 = "3";
				var section4 = "4";
				var section5 = "5";
				
				$.ajax({
					url : "sectionP",
					method : "GET",
					data : {"w_num": w_num, "section1": section1, "section2": section2, "section3": section3, "section4": section4, "section5": section5},
					success : printRamenStock
				})
			} else if (w_num == 2) {
				var section1 = "6";
				var section2 = "7";
				var section3 = "8";
				var section4 = "9";
				var section5 = "10";
				
				$.ajax({
					url : "sectionP",
					method : "GET",
					data : {"w_num": w_num, "section1": section1, "section2": section2, "section3": section3, "section4": section4, "section5": section5},
					success : printRamenStock
				})	
			} else if (w_num == 3) {
				var section1 = "11";
				var section2 = "12";
				var section3 = "13";
				var section4 = "14";
				var section5 = "15";
				
				$.ajax({
					url : "sectionP",
					method : "GET",
					data : {"w_num": w_num, "section1": section1, "section2": section2, "section3": section3, "section4": section4, "section5": section5},
					success : printRamenStock
				})
			}
		}
		
		function printRamenStock(resp){
			var temp = '<div class="col-md-2"><div class="mini-stat clearfix">';
				temp += '<div class="mini-stat-info" style="height: 60px;"><span>';
			$.each(resp, function(index, item){
					console.log(resp);
					console.log(index+" / "+ item);
					console.log(item.section1);
					
					/* section1 */
					if (index == 0) {
					console.log("들어옴");
					temp += '<img src="images/workeff1.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">';
					 if (item.section1 >= 90) {
						temp += '<button data-original-title="A구역 재고 적재율" data-content="현재 재고관리 상태 [우수]: 현재 재고 적재율 유지가 중요합니다."'; 
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section1+'%</button>';
						} else if (75<= item.section1 < 90) {
						temp += '<button data-original-title="A구역 재고 적재율" data-content="현재 재고관리 상태 [양호]: 수요분석과 적재계획을 개선한다면 더 높은 효율이 기대됩니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section1+'%</button>';
						} else if (item.section1 < 75) {
						temp += '<button data-original-title="A구역 재고 적재율" data-content="현재 재고관리 상태 [불량]: 수요분석과 적재계획을 반드시 개선해야합니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section1+'%</button>';
						} 
						temp += '</span><p style="margin-left: 20px; ">A구역</p></div></div></div>';  
					} 
					
					/* section2 */
					else if (index == 1) {
					temp += '<img src="images/totaleff1.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">';	
					if (item.section2 >= 90) {
						temp += '<button data-original-title="B구역 재고 적재율" data-content="현재 재고관리 상태 [우수]: 현재 재고 적재율 유지가 중요합니다."'; 
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section2+'%</button>';
						} else if (75<=item.section2 < 90) {
						temp += '<button data-original-title="B구역 재고 적재율" data-content="현재 재고관리 상태 [양호]: 수요분석과 적재계획을 개선한다면 더 높은 효율이 기대됩니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section2+'%</button>';
						} else if (item.section2 < 75) {
						temp += '<button data-original-title="B구역 재고 적재율" data-content="현재 재고관리 상태 [불량]: 수요분석과 적재계획을 반드시 개선해야합니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section2+'%</button>';
						} 
						temp += '</span><p style="margin-left: 20px; ">B구역</p></div></div></div>';
					} 
					
					/* section3 */
					else if (index == 2) {
					temp += '<img src="images/timeeff1.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">';
					if (item.section3 >= 90) {
						temp += '<button data-original-title="C구역 재고 적재율" data-content="현재 재고관리 상태 [우수]: 현재 재고 적재율 유지가 중요합니다."'; 
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section3+'%</button>';
						} else if (75<=item.section1 < 90) {
						temp += '<button data-original-title="C구역 재고 적재율" data-content="현재 재고관리 상태 [양호]: 수요분석과 적재계획을 개선한다면 더 높은 효율이 기대됩니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section3+'%</button>';
						} else if (item.section1 < 75) {
						temp += '<button data-original-title="C구역 재고 적재율" data-content="현재 재고관리 상태 [불량]: 수요분석과 적재계획을 반드시 개선해야합니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section3+'%</button>';
						} 
						temp += '</span><p style="margin-left: 20px; ">C구역</p></div></div></div>';
					} 
					
					/* section4 */
					else if (index == 3) {
					temp += '<img src="images/performeff1.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">';	
					if (item.section4 >= 90) {
						temp += '<button data-original-title="D구역 재고 적재율" data-content="현재 재고관리 상태 [우수]: 현재 재고 적재율 유지가 중요합니다."'; 
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section4+'%</button>';
						} else if (75<=item.section4 < 90) {
						temp += '<button data-original-title="D구역 재고 적재율" data-content="현재 재고관리 상태 [양호]: 수요분석과 적재계획을 개선한다면 더 높은 효율이 기대됩니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section4+'%</button>';
						} else if (item.section4 < 75) {
						temp += '<button data-original-title="D구역 재고 적재율" data-content="현재 재고관리 상태 [불량]: 수요분석과 적재계획을 반드시 개선해야합니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section4+'%</button>';
						} 
						temp += '</span><p style="margin-left: 20px; ">D구역</p></div></div></div>';
					} 
					
					/* section5 */
					else if (index == 4) {
					temp += '<img src="images/performeff1.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">';	
					if (90 <= item.section5 <100 ) {
						temp += '<button data-original-title="E구역 재고 적재율" data-content="현재 재고관리 상태 [우수]: 현재 재고 적재율 유지가 중요합니다."'; 
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section5+'%</button>';
						} else if (75<=item.section5 < 90) {
						temp += '<button data-original-title="E구역 재고 적재율" data-content="현재 재고관리 상태 [양호]: 수요분석과 적재계획을 개선한다면 더 높은 효율이 기대됩니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section5+'%</button>';
						} else if (item.section5 < 75) {
						temp += '<button data-original-title="E구역 재고 적재율" data-content="현재 재고관리 상태 [불량]: 수요분석과 적재계획을 반드시 개선해야합니다."';
						temp += 'data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">'+item.section5+'%</button>';
						} 
						temp += '</span><p style="margin-left: 20px; ">E구역</p></div></div></div>';
					}   
			})
			
			$("#PPart").html(temp); 
		}
		
		function firstSecionInfo(){
			var index = 0;
			if (w_num == 2) {
				index = 6;
			} else if (w_num == 3) {
				index = 13;
			}  
			
			$.ajax({
				url : "sectionInfo",
				method : "GET",
				data : {"index" : index},
				success : detailInfo
			})
		}
		
		function getOriginImg() {
			$.ajax({
				url : "getOriginImg",
				method : "GET",
				data : {"w_num": w_num},
				success : function(resp) {
					originImg = resp;
					$(window).resize(calLocation());
				}
			})
		}
		
		function calLocation() {
			//좌표 계산
			var rate = $(".warehouseP").width() / 1000;

			var imgPart = $("#imgPart");
			// 이미지 좌표를 새롭게 계산하여 둔다
			$.each(originImg, function(index, item) {
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

				var section_name = item.sec_name;
				var colors = [ '#E67A77', '#D9DD81', '#79D1CF', '#95D7BB',
					'DARKGRAY' ];
				div.hover(function() {
					div.css('background-color', colors[index]);
					div.text(section_name);
				});

				div.mouseleave(function() {
					div.css('background-color', '');
					div.text("");
				});
				imgPart.append(div);
			})
			if (w_num == 1) {
				$("#section0").on('click', sectionInfo);
				$("#section1").on('click', sectionInfo);
				$("#section2").on('click', sectionInfo);
				$("#section3").on('click', sectionInfo);
				$("#section4").on('click', sectionInfo);
			} else if (w_num == 2) {
				$("#section5").on('click', sectionInfo);
				$("#section6").on('click', sectionInfo);
				$("#section7").on('click', sectionInfo);
				$("#section8").on('click', sectionInfo);
				$("#section9").on('click', sectionInfo);
			} else{
				$("#section10").on('click', sectionInfo);
				$("#section11").on('click', sectionInfo);
				$("#section12").on('click', sectionInfo);
				$("#section13").on('click', sectionInfo);
				$("#section14").on('click', sectionInfo);
			}
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
				data : {"index" : index},
				success : detailInfo
			})
		}
		
		function detailInfo(resp) {
			var temp = '<div class="carousel-inner"><div style="text-align: center">';
				temp += '<h5>Product Information</h5>';
				temp += '<img src="'+resp.IMG+'" style="width: 200px; height: 200px;"></div>';
				temp += '<table class="table table-striped"><thead><tr><th>Factor</th>';
				temp += '<th>Detail</th></tr></thead><tbody><tr>';
				temp += '<td>상품 이름</td><td>'+resp.R_NAME+'</td></tr>';
				temp += '<tr><td>적재구역</td><td>'+resp.SEC_NAME+' / '+resp.TOTALAREA+'㎢</td></tr>';
				temp += '<tr><td>창고 이용률</td><td>'+resp.USAGE+'%</td></tr>';
				temp += '<tr><td>재고 수량</td><td>'+resp.QUANTITY+'개</td></tr></tbody></table>';
				temp += '<div class="col-lg-3">';
				temp += '<ul class="clearfix location-earning-stats" style="text-align: left; width: 300px;">';
				temp += '<li class="stat-divider" style="text-align: center;"><span class="first-city">Stock Status</span>';
				if ((resp.QUANTITY/resp.TOTALQ*0.7) > 85) {
				temp += '<img alt="" src="images/sun.png" style="width: 50px; heigh: 30px;">&nbsp;&nbsp;GOOD</li>'; 
				temp += '<li><span class="third-city">Comment</span>출하 수요 대비<br>재고적재량: 최적</li></ul></div>';
				} else if (50 <=(resp.QUANTITY/resp.TOTALQ*0.7) <= 85) {
					temp += '<img alt="" src="images/cloudy-day.png" style="width: 50px; heigh: 30px;">&nbsp;&nbsp;NORMAL</li>';
					temp += '<li><span class="third-city">Comment</span>출하 수요 대비<br>재고적재량: 보통</li></ul></div>';
				} else if((resp.QUANTITY/resp.TOTALQ*0.7) < 50) {
					temp += '<img alt="" src="images/rain.png" style="width: 50px; heigh: 30px;">&nbsp;&nbsp;BAD</li>';
					temp += '<li><span class="third-city">Comment</span>출하 수요 대비<br>재고적재량: 부족</li></ul></div>';
				}
				
				temp += '</div>';
				
				$("#detailPart").html(temp);	
							
		}
		
		
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
		<script src="js/scripts.js"></script>
		<script src="js/flot-chart/jquery.flot.js"></script>
		<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
		<script src="js/flot-chart/jquery.flot.resize.js"></script>
		<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
		<script src="js/flot-chart/jquery.flot.animator.min.js"></script>
		<script src="js/flot-chart/jquery.flot.growraf.js"></script>
		<script src="js/dashboard.js"></script>
		<script src="js/jquery.customSelect.min.js"></script>
		<!--common script init for all pages-->
		
		<!--script for this page-->
</body>
</html>