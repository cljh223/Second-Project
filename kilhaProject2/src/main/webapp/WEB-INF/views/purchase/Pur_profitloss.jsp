<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
<link href="js/jvector-map/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<link href="css/clndr.css" rel="stylesheet">
<!--clock css-->
<link href="js/css3clock/css/style.css" rel="stylesheet">
<!--Morris Chart CSS -->
<link rel="stylesheet" href="js/morris-chart/morris.css">
 <!--iron slider-->
    <link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.css" rel="stylesheet" />
    <link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.skinFlat.css" rel="stylesheet"/>

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<!-- Edittable Style css -->
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
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
				
				<a href="main">
				<img src="images/logobrain_original.png" alt=""
					style="width: 200px; height: 200px; position: absolute; top: -60px; left: 15px;">

				</a>
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
        		<li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-wrench"></i>
                        <span>생산부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="pro_Fac?f_num=1&r_num=p01_1&line_num=A1&f_name=1st Factory">제 1공장 정보</a></li>
								<li><a href="pro_Fac?f_num=2&r_num=p04_1&line_num=D1&f_name=2nd Factory">제 2공장 정보</a></li>
								<li><a href="pro_Gradient">예측 분석</a></li>
								<li><a href="pro_RegistForm">생산정보입력</a></li>
                    </ul>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-truck"></i>
                        <span>물류부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="second">물류창고 현황</a></li>
								<li><a href="junseok">출고서 확인</a></li>
								<li><a href="third">배차경로 확인</a></li>
                    </ul>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-users"></i>
                        <span>영업부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="salesMain">영업 메인 페이지</a></li>
								<li><a href="processMain">영업 상황 조회</a></li>
								<li><a href="compareMain">영업 비교 페이지</a></li>
                    </ul>
                </li>
                
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
		
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">

				<!--mini statistics start-->

				<!--mini statistics end-->
				<div class="row">
					<div class="col-md-12">
						<!--earning graph start-->
						<section class="panel">
							<header class="panel-heading">
								원자재 거래내역 <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="adv-table editable-table ">
									<div class="clearfix">
										<!-- <div class="form-group">
											<label class="control-label col-md-3">Date Range</label>
											<div class="col-md-4">
												<div class="input-group input-large" data-date="13/07/2013"
													data-date-format="mm/dd/yyyy">
													<input type="text" class="form-control dpd1" name="from">
													<span class="input-group-addon">To</span> <input
														type="text" class="form-control dpd2" name="to">
												</div>
												<span class="help-block">검색기간설정</span>
											</div>
										</div> -->
										
									</div>
									<div class="space15"></div>
									<table class="table table-striped table-hover table-bordered"
										id="editable-sample">
										<thead>
											<tr>
												<th>거래일</th>
												<th>상품코드</th>
												<th>상품명</th>
												<th>매매타입</th>
												<th>수량</th>
												<th>단가</th>
												<th>총액</th>
												<th>수익금</th>
												<th>수익률</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach var="traderecords" items="${trList}" varStatus="stat">
										<fmt:parseNumber var = "nuum" type = "number" value = "${traderecords.profits}" />
										
										
										<tr>
										<td>${traderecords.dealdate}</td>
										<td>${traderecords.rmcode}</td>
										<td>${traderecords.rmname}</td>
										<c:if test="${traderecords.dealtype == 'BUY'}">
										<td style="color: red;">${traderecords.dealtype}</td>
										</c:if>
										<c:if test="${traderecords.dealtype == 'SELL'}">
										<td style="color: blue;">${traderecords.dealtype}</td>
										</c:if>
										<c:if test="${traderecords.dealtype == '생산부'}">
										<td style="color: green;">${traderecords.dealtype}</td>
										</c:if>
										<c:if test="${traderecords.dealtype == '영업부'}">
										<td style="color: orange;">${traderecords.dealtype}</td>
										</c:if>
										<c:if test="${traderecords.dealtype == '물류부'}">
										<td style="color: purple;">${traderecords.dealtype}</td>
										</c:if>
										<td><fmt:formatNumber value="${traderecords.quantity}" pattern="#,###" /></td>
										<td><fmt:formatNumber value="${traderecords.price}" pattern="#,###" /></td>
										<td><fmt:formatNumber value="${traderecords.totalprice}" pattern="#,###" /></td>
										<c:if test="${nuum<0}">
										<td style="color: blue;"><fmt:formatNumber value="${traderecords.profits}" pattern="#,###" /></td>
										<td style="color: blue;">${traderecords.profitrates}</td>
										</c:if>
										<c:if test="${nuum>0}">
										<td style="color: red;"><fmt:formatNumber value="${traderecords.profits}" pattern="#,###" /></td>
										<td style="color: red;">${traderecords.profitrates}</td>
										</c:if>
										<c:if test="${nuum==0}">
										<td>${traderecords.profits}</td>
										<td>${traderecords.profitrates}</td>
										</c:if>
										</tr>
										</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</section>
						<!--earning graph end-->
					</div>


			<!-- <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        누적수익률
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                    <div class="panel-body">

                        <table class="table slider-table">
                            <tbody><tr>
                                <td>
                                    <span class="irs irs-with-grid" id="irs-1"><span class="irs"><span class="irs-line"><span class="irs-line-left"></span><span class="irs-line-mid"></span><span class="irs-line-right"></span></span>
                                    <span class="irs-min" style="display: block;">0</span>
                                    <span class="irs-max" style="display: block;">0</span>
                                    <span class="irs-from" style="left: 229.6px; display: block;">-100%</span>
                                    <span class="irs-to" style="left: 951.4px; display: block;">+100%</span>
                                    <span class="irs-single" style="left: 568.5px; display: none;">$1000 — $4000</span>
                                    <span class="irs-diapason" style="left: 248.6px; width: 721.8px;"></span>
                                    <span class="irs-slider from last" style="left: 241px;">
                                    </span><span class="irs-slider to" style="left: 962px;">
                                    </span></span><span class="irs-grid"><span class="irs-grid-pol small" style="left: 0px;"></span>
                                    <span class="irs-grid-pol small" style="left: 60px;"></span>
                                    <span class="irs-grid-pol small" style="left: 121px;"></span>
                                    <span class="irs-grid-pol small" style="left: 182px;"></span>
                                    <span class="irs-grid-pol small" style="left: 243px;"></span>
                                    <span class="irs-grid-pol small" style="left: 304px;"></span>
                                    <span class="irs-grid-pol small" style="left: 365px;"></span>
                                    <span class="irs-grid-pol small" style="left: 426px;"></span>
                                    <span class="irs-grid-pol small" style="left: 487px;"></span>
                                    <span class="irs-grid-pol small" style="left: 548px;"></span>
                                    <span class="irs-grid-pol small" style="left: 609px;"></span>
                                    <span class="irs-grid-pol small" style="left: 670px;"></span>
                                    <span class="irs-grid-pol small" style="left: 731px;"></span>
                                    <span class="irs-grid-pol small" style="left: 792px;"></span>
                                    <span class="irs-grid-pol small" style="left: 853px;"></span>
                                    <span class="irs-grid-pol small" style="left: 914px;"></span>
                                    <span class="irs-grid-pol small" style="left: 975px;"></span>
                                    <span class="irs-grid-pol small" style="left: 1036px;"></span>
                                    <span class="irs-grid-pol small" style="left: 1097px;"></span>
                                    <span class="irs-grid-pol small" style="left: 1158px;"></span>
                                    <span class="irs-grid-pol small" style="left: 1218px;"></span>
                                    <span class="irs-grid-pol" style="left: 0px;"></span>
                                    <span class="irs-grid-text" style="left: 0px; text-align: left;">0</span>
                                    <span class="irs-grid-pol" style="left: 304px;"></span>
                                    <span class="irs-grid-text" style="left: 254px;">1250</span>
                                    <span class="irs-grid-pol" style="left: 609px;"></span>
                                    <span class="irs-grid-text" style="left: 559px;">2500</span>
                                    <span class="irs-grid-pol" style="left: 914px;"></span>
                                    <span class="irs-grid-text" style="left: 864px;">3750</span>
                                    <span class="irs-grid-pol" style="left: 1218px;"></span>
                                    <span class="irs-grid-text" style="left: 1118px; text-align: right;">5000</span></span></span>
                                    <input id="range_1" type="text" name="range_1" value="1000;4000" style="display: none;">
                                </td>
                            </tr>
                            
                        </tbody></table>


                    </div>
                </section>
            </div> -->
				


				</div>
				<!--mini statistics start-->

				<!--mini statistics end-->






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
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
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
	

	<!-- Editable_ -->
	<!--Core js-->
	
	<script src="js/jquery-1.10.2.min.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<!--Easy Pie Chart-->
	<!--Sparkline Chart-->
	<!--jQuery Flot Chart-->

	<script src="js/ion.rangeSlider-1.8.2/js/ion-rangeSlider/ion.rangeSlider.min.js" type="text/javascript"></script>
	

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->

	<!--script for this page only-->
	<script src="js/table-editable.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery-migrate.js"></script>
	<!--Easy Pie Chart-->
	<!--Sparkline Chart-->
	<!--jQuery Flot Chart-->

	<!-- END JAVASCRIPTS -->
	<script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
    

    $(document).ready(function(){
        $("#range_1").ionRangeSlider({
        min: 0,
        max: 5000,
        from: 1000,
        to: 4000,
        type: 'double',
        step: 1,
        prefix: "$",
        prettify: false,
        hasGrid: true
    });
        $("#range_2").ionRangeSlider();

        $("#range_5").ionRangeSlider({
        min: 0,
        max: 10,
        type: 'single',
        step: 0.1,
        postfix: " mm",
        prettify: false,
        hasGrid: true
    });
        $("#range_6").ionRangeSlider({
        min: -50,
        max: 50,
        from: 0,
        type: 'single',
        step: 1,
        postfix: "°",
        prettify: false,
        hasGrid: true
    });

        $("#range_4").ionRangeSlider({
        type: "single",
        step: 100,
        postfix: " light years",
        from: 55000,
        hideMinMax: true,
        hideFromTo: false
    });
        $("#range_3").ionRangeSlider({
        type: "double",
        postfix: " miles",
        step: 10000,
        from: 25000000,
        to: 35000000,
        onChange: function(obj){
            var t = "";
            for(var prop in obj) {
                t += prop + ": " + obj[prop] + "\r\n";
            }
            $("#result").html(t);
        },
        onLoad: function(obj) {
            //
        }
    });

        $("#updateLast").on("click", function(){

        $("#range_3").ionRangeSlider("update", {
            min: Math.round(10000 + Math.random() * 40000),
            max: Math.round(200000 + Math.random() * 100000),
            step: 1,
            from: Math.round(40000 + Math.random() * 40000),
            to: Math.round(150000 + Math.random() * 80000)
        });

    });
    });
</script>




	<!--script for this page-->
</body>
</html>