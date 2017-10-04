<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">

<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta http-equiv="X-UA-Compatible" content="IE=9">

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

<!-- search tool -->
<link rel="stylesheet" href="css/bootstrap-switch.css" />

<link rel="stylesheet" type="text/css"
	href="js/bootstrap-fileupload/bootstrap-fileupload.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />

<link rel="stylesheet" type="text/css"
	href="js/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-timepicker/css/timepicker.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-colorpicker/css/colorpicker.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-datetimepicker/css/datetimepicker.css" />

<link rel="stylesheet" type="text/css"
	href="js/jquery-multi-select/css/multi-select.css" />
<link rel="stylesheet" type="text/css"
	href="js/jquery-tags-input/jquery.tagsinput.css" />

<link rel="stylesheet" type="text/css" href="js/select2/select2.css" />




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
<script src="js/bootstrap-bootpopup/bootpopup.js"></script>

<script src="js/jquery-3.2.1.min.js"></script>
<script language="javascript"
	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=8eea4abd-531c-3ca0-b3de-daa4dcc5878e"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
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
                <li><a class="active">
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
                        <li><a href="orderCheck">출고서 확인</a></li>
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
        
                
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">

				<!--mini statistics start-->
				<div class="row">

					<div class="col-md-9">
						<section class="panel">
						<header class="panel-heading">
								재료정보 <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body profile-information">
								<div class="col-md-3">
									<div class="profile-pic text-center">
										<img src="images/searchani.gif" id="rmImage" alt="" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="profile-desk">
										
									<a data-toggle="modal" href="#myModal2">
										<h1 id="rmType">
											<span id="rmTypeSpan" style="position:relative; top: 75px;">재료검색</span> &nbsp;
											<img src="images/search.png"
												id="SearchImg" style="width: 70px; height: 70px; position:relative; top: 75px;">
										</h1>
									</a>	
										<br>
										<p><br><br></p> 
										<br>
									</div>
								</div>

								<div class="profile-statistics">
									<h1><span id="RMstock"></span>kg</h1>
									<p>현재보유량</p>
									<h1><span id="RMneedstock"></span>kg</h1>
									<p>필요주문량</p>

									<br> <a href="#" class="btn btn-primary" id="buybutton">구매</a> <a
										href="#" class="btn btn-primary" id="sellbutton">판매</a>


								</div>

							</div>


							<!--earning graph start-->


							<div class="panel-body" style="height: 422px;">
								<div class="adv-table editable-table ">
									<div class="clearfix">

										
									</div>
									<div class="space15"></div>
									<table class="table table-striped table-hover table-bordered"
										id="editable-sample">
										<thead>
											<tr>
												<th>요청 코드</th>
												<th>요청 품목</th>
												<th>요청수량</th>
												<th>신청일</th>
												<th>처리상태</th>
												<th>상세보기</th>
											</tr>
										</thead>
										<tbody id="selectedrmorders">

										</tbody>
									</table>
								</div>
							</div>

							<!--earning graph end-->

							
							
							<div class="panel-body">
                        
                        <!-- Modal -->
                        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" id="modalclose2" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">재료정보</h4>
                                    </div>
                                    
                                    
                                    
                                    <div class="modal-body">
                                        
                                    </div>

                                    <div class="modal-footer">
                                        <button data-dismiss="modal" class="btn btn-default" id="modalclose1" type="button">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- modal -->
                    </div>


						</section>
					</div>
					<div class="col-md-3">
						<!--widget graph start-->
						<section class="panel">
						<header class="panel-heading">
								주문량 대비 재고량 <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
						<div class="slimScrollDiv" style="overflow: auto; height: 663px;">
							<div class="prf-box">
								<h3 class="prf-border-head"></h3>
							
                            <c:forEach items="${ordertorm}" var="order" varStatus="stat">
                            <fmt:parseNumber var = "nuum" type = "number" value = "${order[1]}" />
                            
                            	 <c:if test="${nuum<=50 && nuum != 100}">
									<div class=" wk-progress">
									<div class="col-md-5">${order[0]}</div>
									<div class="col-md-5">
										<div class="progress ">
											<div style="width: ${order[1]}%" aria-valuemax="100" aria-valuemin="0"
												aria-valuenow="40" role="progressbar"
												class="progress-bar progress-bar-success">
												<span class="sr-only">57% Complete (success)</span>
											</div>
										</div>
									</div>
									<div class="col-md-2">${order[1]}%</div>
								</div>                           	
                            	</c:if>
                            	
                            	<c:if test="${nuum >50 && nuum != 100}">
                            		<div class=" wk-progress">
									<div class="col-md-5">${order[0]}</div>
									<div class="col-md-5">
										<div class="progress ">
											<div style="width: ${order[1]}%" aria-valuemax="100" aria-valuemin="0"
												aria-valuenow="40" role="progressbar"
												class="progress-bar progress-bar-warning">
												<span class="sr-only">30% Complete (success)</span>
											</div>
										</div>
									</div>
									<div class="col-md-2">${order[1]}%</div>
								</div>
                            	</c:if>
                            	
                            	<c:if test="${nuum == 100 }">

                            		<div class=" wk-progress">
									<div class="col-md-5">${order[0]}</div>
									<div class="col-md-5">
										<div class="progress  ">
											<div style="width: 100%" aria-valuemax="100" aria-valuemin="0"
												aria-valuenow="40" role="progressbar"
												class="progress-bar progress-bar-danger">
												<span class="sr-only">70% Complete (success)</span>
											</div>
										</div>
									</div>
									<div class="col-md-2">!</div>
								</div>
                            	</c:if> 
                            	
           	
                            	
                            </c:forEach>
							</div>
							</div>
							
						</section>

					</div>

					<!--mini statistics end-->



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
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
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
	<script src="js/jquery-migrate.js"></script>

	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
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

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>

	<!--script for this page only-->
	<script src="js/table-editable.js"></script>

	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/bootstrap-switch.js"></script>
	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<!--Sparkline Chart-->
	<script src="js/sparkline/jquery.sparkline.js"></script>
	<!--jQuery Flot Chart-->
	<script src="js/flot-chart/jquery.flot.js"></script>
	<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot-chart/jquery.flot.resize.js"></script>
	<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

	<!-- search -->
	<script type="text/javascript" src="js/fuelux/js/spinner.min.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-fileupload/bootstrap-fileupload.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

	<script type="text/javascript"
		src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>

	<script type="text/javascript"
		src="js/jquery-multi-select/js/jquery.multi-select.js"></script>
	<script type="text/javascript"
		src="js/jquery-multi-select/js/jquery.quicksearch.js"></script>

	<script type="text/javascript"
		src="js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>

	<script src="js/jquery-tags-input/jquery.tagsinput.js"></script>

	<script src="js/select2/select2.js"></script>
	<script src="js/select-init.js"></script>


	<!--common script init for all pages-->

	<script src="js/toggle-init.js"></script>

	<script src="js/advanced-form.js"></script>
	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<!--Sparkline Chart-->
	<script src="js/sparkline/jquery.sparkline.js"></script>
	<!--jQuery Flot Chart-->
	<script src="js/flot-chart/jquery.flot.js"></script>
	<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot-chart/jquery.flot.resize.js"></script>
	<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>



	<!-- END JAVASCRIPTS -->
	<script type="text/javascript"> 
    
	
	jQuery(document).ready(function() {
        EditableTable.init();
    });
    
	//버튼클릭시 발생하는 이벤트
	$(function() {
		   
		   $('#SearchImg').on('click', RMBootFunction);
		   $('#buybutton').on('click', buyFunction);
		   $('#sellbutton').on('click', sellFunction);
   
		});
	//구매버튼클릭
	function buyFunction(){
	var rmname = $('#rmTypeSpan').text();
	location.href = 'chartdata?rmname='+rmname+'&dealtype=buy';	
	
	
	}	    
 	//판매버튼클릭
	function sellFunction(){
	var rmname = $('#rmTypeSpan').text();
	location.href = 'chartdata?rmname='+rmname+'&dealtype=sell';		
		
	}	
	
	

	// 디비에서 재료 정보를 가져오는 메소드
	function RMBootFunction() {
	   $.ajax({
	      url : 'RMinform',
	      method : 'POST',
	      dataType : 'json',
	      success : RMBootString,
	      error : function() {
	         alert('에러입니다.');
	      }
	   });
	}
	

	// 재료테이블 전체를 팝업창에 띄우는 메소드. 검색창에 입력할 때 마다 테이블의 내용을 불러온다.
	function RMBootString(resp) {	
	   var rmInform = '<form><div class="row">'
	         + '<div class="col-lg-6">'
	         + '<div class="dataTables_filter" id="editable-sample_filter">'
	         + '<label>Search: <input type="text" id = "searchText1"'
	         +'aria-controls="editable-sample"'
	         +'class="form-control medium"></label>'
	         + '</div>'
	         + '</div>'
	         + '</div><div class="col-sm-12">'
	         + '<section class="panel">'
	         + '<div class="panel-body">'
	         + '<table id = "searchTable" class="table  table-hover general-table">'
	         + '<thead><tr>'
	         + '<th>재료코드</th><th class="hidden-phone">재료명</th>'
	         + '<th>재고수량</th></tr>'
	         + '</thead><tbody id = "rmTable">'
	         + RMStringFunction(resp);
	   $('.modal-body').html(rmInform);
	   
	     $('#searchText1').on('keyup', function() {
	      var rmname = $('#searchText1').val();
	      var searchText = {
	         'searchText' : rmname
	      }
	      $.ajax({
	         url : 'popupRMsearch',
	         method : 'get',
	         data : searchText,
	         dataType : 'json',
	         success : function(respp) {
	            var searchResult = RMStringFunction(respp);
	            $('#rmTable').html(searchResult);
	            trRMFunction();
	         },
	         error : function() {
	            alert('에러입니다.');
	         }
	      });
	   });
	   trRMFunction();  
	}
	
	function trRMFunction() {
		   $('tr').on('click', function() {
		      var rmname = $(this).attr('id');
		      var rmstock = $(':nth-child(3)',this).text();
		      $('#RMstock').text(rmstock);
		      $('#rmTypeSpan').text(rmname);
		      $("#rmImage").attr("src","images/"+rmname+".jpg");	     
		     
		      
		      var searchText5 = {
		 	         'searchText5' : rmname
		 	      }
		      
		      
		      //목록뽑기
		      $.ajax({
			         url : 'inform_orderlist',
			         method : 'get',
			         data : searchText5,
			         dataType : 'json',
			         success : function(ressp) {
     
			            var olString = '';
			            var totalrmneed = 0;
			            for (var i = 0; i < ressp.length; i++) {
			            	olString += '<tr>';
			            	olString += '<td style="width: 200px;">';
			            	olString += ressp[i][0];
			            	olString += '</td>';
			            	olString += '<td>';
			            	olString += ressp[i][1];
			            	olString += '</td>';
			            	olString += '<td>';
			            	olString += ressp[i][2];
			            	olString += '</td>';
			            	olString += '<td>';
			            	olString += ressp[i][3];
			            	olString += '</td>';
			            	olString += '<td>';
			            	olString += ressp[i][4];
			            	olString += '</td>';
			            	olString += '<td>';
			            	olString += '<a href="invoicedetails?taskcode='+ressp[i][0]+'">';
			            	olString += '상세보기';
			            	olString += '</td>';
			            	olString += '</tr>';
			            }
			                       
						$('#selectedrmorders').html(olString);
						
						for(var i = 0; i< ressp.length; i++){
							totalrmneed += parseInt(ressp[i][2]);
						}
						
						
						 $('#RMneedstock').text(totalrmneed);
			            
			         },
			         
			         
			         
			         
			         error : function() {
			            alert('구매목록가져오기에러입니다.');
			         }
			      });
		      
  
		      
		      $('#modalclose1').trigger("click");
		      $('#modalclose2').trigger("click");
		      
		      
		   });
		}
	


// 재료테이블의 내용을 만드는 메소드
function RMStringFunction(resp) {
   var RMString = '';
   for (var i = 0; i < resp.length; i++) {
	   RMString += '<tr id="'+resp[i].rmname+'">';
	   RMString += '<td><a href="#">'
	   RMString += resp[i].rmcode;
	   RMString += '</a></td>'
	   RMString += '<td>'
	   RMString += resp[i].rmname;
	   RMString += '</td>';
	   RMString += '<td value="'+resp[i].rmstock+'">';
	   RMString += resp[i].rmstock;
	   RMString += '</td>';
	   RMString += '<td><span class="label label-info label-mini">Due</span></td>';
	   RMString += '<td>';
	   RMString += '<div class="progress progress-striped progress-xs">';
	   RMString += '<div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">';
	   RMString += '<span class="sr-only">40% Complete (success)</span>';
	   RMString += '</div>' + '</div>' + '</td>';
	   RMString += '</tr>';
   }
   RMString += '</tbody>' + '</thead>';
   RMString += '</div>' + '</section>';
   RMString += '</div></form>';

   return RMString;
}


	
</script>



	<!--script for this page-->
</body>
</html>