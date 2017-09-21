<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="images/favicon.png">

<title>BucketAdmin</title>
<!--Core CSS -->
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-datepicker/css/datepicker.css" />


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

#modalT{
	width : "450px";
	float : center;
	margin : 0 auto;
	text-align : center;
}

td .num{
	width : "100px";
}

td .goods{

}

td .quantity{

}

td .shop_name{

}

td .address{

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
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> Shipping Form </header>
							<div class="panel-body">
							<form class="form-horizontal bucket-form">
									<div class="form-group">
										<label class="col-sm-3 control-label">요청부서</label>
										<div class="col-sm-6">
											<div id="deptPart"></div>
										</div>

									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">직원번호</label>
										<div class="col-sm-6">
											<div id="staff_codePart"></div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">상품</label>
										<div class="col-sm-6">
											<div id="goodsPart"></div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">수량 (BOX)</label>
                                        <div id="quantityPart"></div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">배송지</label>
										<div class="col-sm-6">
											<div id="shopList"></div>
											<div id="shop_namePart"></div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">배송일</label>
										<div class="col-md-4" id="deliveryDate">
											<div id="deliverydatePart"></div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">배송트럭</label>
										<section class="panel">
											<div class="panel-body">
												<div class="col-sm-1" id="truck">
													<a class="btn btn-success" data-toggle="modal"
														href="#myModal2" id="truckClick"> 재선택 </a>
												</div>
													<div id="truckMsg"></div>
													<!-- Modal -->
												<div class="modal fade" id="myModal2" tabindex="-1"
													role="dialog" aria-labelledby="myModalLabel"
													aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
																<h4 class="modal-title">배차 선택</h4>
															</div>
															<div class="modal-body">
																<div id="setNum"></div>
																<div id="truckA"></div>
																<div id="truckB"></div>
																<div id="truckC"></div>
															</div>
															<div class="modal-footer">
																<button data-dismiss="modal" class="btn btn-default"
																	type="button">Close</button>
															</div>
														</div>
													</div>
												</div>
												<!-- modal -->
											</div>
										</section>
									</div>
									<center>
									<input type="button" id="updateBtn" class="btn btn-round btn-primary"value="수정">
									
									<a href="${pageContext.request.contextPath}/nineth">
									<input type="button" id="checkBtn" class="btn btn-round btn-success" value="확인"></center>
									</a>
								<br>
								</form>
							</div>
						</section>
					</div>
				</div>
			</section>
		</section>
		<!-- </form> -->

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
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/fuelux/js/spinner.min.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script type="text/javascript"
		src="js/jquery-multi-select/js/jquery.multi-select.js"></script>
	<!-- 코어 끝 -->
	<script>
		$(function() {
			$("#truckClick").on('click', printModalList);
			$("#updateBtn").on('click', updateOrder);
			$.ajax({
				url : "selectOne"
				, method : "GET"
				, data : "num=${num}"
				, success : detailInfo
			})
			
			var setNum ='<input type="hidden" id="num" value="'+${num}+'">';
			$("#setNum").html(setNum);
		})
		
		function detailInfo(resp){
			console.log(resp);
			var temp0 = '<input type="text" class="form-control" value="'+resp.DEPT+'" readonly>';
				temp0 += '<input type="hidden" id="dept1" value="'+resp.DEPT+'">';
			$("#deptPart").html(temp0);
			
			var temp1 = '<input type="text" class="form-control" value="'+resp.STAFF_CODE+'" readonly>';
				temp1 += '<input type="hidden" id="staff_code1" value="'+resp.STAFF_CODE+'">';
			$("#staff_codePart").html(temp1);
			
			var temp2 = '<select class="form-control m-bot15" name="goods" id="goods" value="'+resp.GOODS+'">';
				temp2 += '<option value="제품1">제품1</option>';
				temp2 += '<option value="제품2">제품2</option>';
				temp2 += '<option value="제품3">제품3</option>';
				temp2 += '<option value="제품4">제품4</option>';
				temp2 += '</select>';
				temp2 += '<input type="hidden" id="quantity123" value="'+resp.QUANTITY+'">';
			$("#goodsPart").html(temp2);
			
			
			var q = $("#quantity123").val()
	 		var numOfq = parseInt(q);
                            
			var temp3 = '<div id="spinner4">';
				temp3 +='<div class="input-group" style="width: 150px;">';
				temp3 +='<div class="spinner-buttons input-group-btn">';
				temp3 +='<button type="button" class="btn spinner-up btn-primary">';
				temp3 +='<i class="fa fa-plus"></i>';
				temp3 +='</button></div>';
				temp3 +='<input type="number" class="spinner-input form-control"';
				temp3 +='name="quantity" id="quantity" maxlength="3" readonly>';
				temp3 +='<div class="spinner-buttons input-group-btn">';
				temp3 +='<button type="button" class="btn spinner-down btn-warning">';
				temp3 +='<i class="fa fa-minus"></i>';
				temp3 +='</button></div>';  
		 	$("#quantityPart").html(temp3); 
		 	
		 	// init spinner
		 	$('#spinner4').spinner({value:numOfq, step: 5, min: 0, max: 200});
		 	
		 
				
			var temp4 ='<div data-date-viewmode="years" data-date-format="yyyy-mm-dd"';
				temp4 +='data-date="2017-09-01" class="input-append date dpYears">';
				temp4 +='<input type="text" readonly="" value="'+resp.DELIVERYDATE+'" size="16"';
				temp4 +='class="form-control" name="deliverydate" id="deliveryDate1">';
				temp4 +='<span class="input-group-btn add-on">';
				temp4 +='<button class="btn btn-primary" type="button">';
				temp4 +='<i class="fa fa-calendar"></i>';
				temp4 +='</button></span></div>';
				
			$("#deliverydatePart").html(temp4);

			var temp5 = '<input type="hidden" id="shop_namePartV" value="'+resp.SHOP_NAME+'">';
			$("#shop_namePart").html(temp5);
			
			var temp6 = '<p>"' +resp.TRUCK_CODE+ '"으로 배송 예정입니다.</p>';
				temp6 +='<input type="hidden" id="truck_code1" value="'+resp.TRUCK_CODE+'">';
			$("#truckMsg").html(temp6);
			
 			$.ajax({
				url : "getShopList",
				method : "GET",
				success : printShopList
			}) 
		}
		
		function printShopList(resp) {
			var defaultV = $("#shop_namePartV").val();
			var temp = '<select class="form-control m-bot15" name="office" id="shop_code">';
			
			$.each(resp, function(index, item) {
				if (item.SHOP_NAME == defaultV) {
					temp += '<option value="'+item.SHOP_CODE+'" selected>' + item.SHOP_NAME + '</option>';
				} else if (item.SHOP_NAME != defaultV) {
					temp += '<option value="'+item.SHOP_CODE+'">' + item.SHOP_NAME + '</option>';
				}
			})
			temp += "</select>";
			$("#shopList").html(temp);
		}
		
		function printModalList() {
			var deliveryDate = $("#deliveryDate1").val();
			var shop_code = document.getElementById('shop_code').value;
			var temp = '<input type="text" display="none" value="'+deliveryDate+'">';
			temp = '<input type="text" display="none" value="'+shop_code+'">';
			temp = '<label>배차 가능 트럭</label>';
			$("#truckA").html(temp);

			$.ajax({
				url : "getTruckList",
				method : "GET",
				success : modalTruckList
			})
		}
		
		function modalTruckList() {
			$.ajax({
				url : "getTruckList",
				method : "GET",
				success : function(resp) {

				var temp = '<div class = "col-sm-3" id="office_name">';
					temp += '<select class="form-control m-bot15" name="truck_code" id="truck_code">';
				
					$.each(resp, function(index, item) {
					temp += '<option value="'+item+'">' + item+ '</option>';
					})
							
					temp += '</select></div>';
					temp += '<button type="button" id="truck_option_btn" class="btn btn-primary">확인</button>&nbsp';
					temp += '<button type="button" id="truck_reserve_btn" class="btn btn-success">예약</button><br><br>';
					$("#truckB").html(temp);
					$("#truck_option_btn").on('click', reserveTruckList);
					$("#truck_reserve_btn").on('click',truckReserveConfirm);
				}
			})
		}
		
		function reserveTruckList() {
			var dDate = $("#deliveryDate1").val();
			var office = $("#shop_code").val();
			var truck = $("#truck_code").val();
			var map = {
				"dDate" : dDate,
				"office" : office,
				"truck" : truck
			};

			$.ajax({
					url : "reserveTruckList",
					method : "GET",
					data : map,
					success : function(resp) {
						if (resp.length == 0) {
							var temp = '<br><center><h3>배차 내역이 없습니다.</h3></center>';
							$("#truckC").html(temp);
						}

						else if (resp.length > 0) {
							var temp = '<table id="modalT"><tr>';
								temp += '<th class="num">번호</th>';
								temp += '<th class="goods">물품</th>';
								temp += '<th class="quantity">수량</th>';
								temp += '<th class="shop_name">배송지</th>';
								temp += '<th class="address">배송지 주소</th></tr>';

							$.each(resp, function(index, item) {
								temp += '<tr><td class="num">' + (index + 1) + '</td>';
								temp += '<td class="goods">' + item.GOODS + '</td>';
								temp += '<td class="quantity">' + item.QUANTITY + '</td>';
								temp += '<td class="shop_name">' + item.SHOP_NAME + '</td>';
								temp += '<td class="address">' + item.ADDRESS_POST
										+ item.ADDRESS_DETAIL1
										+ item.ADDRESS_DETAIL2
										+ item.ADDRESS_DETAIL3
										+ item.ADDRESS_DETAIL4 + '</td>';
								temp += '</tr></table>';
								})
							$("#truckC").html(temp);
							}
						}
					});
		};

		function truckReserveConfirm() {
			var quantity = $("#quantity").val();
			var truck_code = $("#truck_code").val();
			
			$.ajax({
				url : "truckCapacity",
				method : "GET",
				data : {"quantity" : quantity, "truck_code" : truck_code},
				success : function(resp){
					if (resp == true) {// 배송수량 부피 > 트럭 부피
						var truck = $("#truck_code").val();
						var temp = '<p>"' + truck + '"으로 배송</p>';
						$("#truckMsg").html(temp);
						$("#myModal2").modal('hide');
					} else if (resp == false) {
						alert("선적 용량 초과하였습니다.");
					}
				}
			})
		}
		
  		function updateOrder(){
  			var num = $("#num").val();
			var goods = $("#goods").val();
			var quantity = $("#quantity").val();
			var shop_code = document.getElementById('shop_code').value;
			var deliverydate = $("#deliveryDate1").val();
			var truck_code = $("#truck_code1").val();
			
			var temp = "updateShipping?orderNum=" + num
			+ "&goods=" + goods
			+ "&quantity=" + quantity
			+ "&deliverydate=" + deliverydate
			+ "&shop_code=" + shop_code
			+ "&truck_code=" + truck_code;
			
			console.log(temp);
			
			location.href = temp;
			
		} 
 
	</script>
	<script src="js/advanced-form.js"></script>
</body>
</html>