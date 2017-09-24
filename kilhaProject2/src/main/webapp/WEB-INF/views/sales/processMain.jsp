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
<link rel="shortcut icon" href="images/favicon.png">

<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta http-equiv="X-UA-Compatible" content="IE=9">

<title>Blank page</title>

<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

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


<!--dynamic table-->
<link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<!--iron slider-->
<link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.css"
	rel="stylesheet" />
<link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />

<style type="text/css">
#loginForm {
	width: "250px";
	float: right;
}

#chartdiv {
	width: 100%;
	height: 500px;
}
</style>
<!-- Resources -->

<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>

<script src="https://www.amcharts.com/lib/3/serial.js"></script>

<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>

<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />

<script src="https://www.amcharts.com/lib/3/themes/patterns.js"></script>
<script language="javascript"
	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=8eea4abd-531c-3ca0-b3de-daa4dcc5878e"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!--jQuery Flot Chart-->
<script src="js/flot-chart/jquery.flot.js"></script>
<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
<script src="js/flot-chart/jquery.flot.resize.js"></script>
<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
<script type="text/javascript">
	$(function() {
		processInitialize();
		$('.panel .tools .fa-chevron-up').parents(".panel").children(
				".panel-body").slideUp(200);
		$('#전체').on('click', function() {
			$('.current').removeClass("current");
			$('#전체 >a').addClass("current");
			processInitialize();
		});
		$('#견적').on('click', function() {
			$('.current').removeClass("current");
			$('#견적 >a').addClass("current");
			processInitialize();
		});
		$('#수주').on('click', function() {
			$('.current').removeClass("current");
			$('#수주 >a').addClass("current");
			processInitialize();
		});
		$('#출고').on('click', function() {
			$('.current').removeClass("current");
			$('#출고 >a').addClass("current");
			processInitialize();
		});
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
								class="fa fa-truck"></i> <span>Logistics</span>
						</a>
							<ul class="sub">
								<li><a href="first">log-01, 02, 07</a></li>
								<li><a href="second">log-03, 11</a></li>
								<li><a href="third">log-04</a></li>
								<li><a href="fourth">log-05, 12</a></li>
								<li><a href="fifth">log-06(List)</a></li>
								<li><a href="sixth">log-06(Timetable)</a></li>
								<li><a href="seventh">log-08,13</a></li>
								<li><a href="eighth">log-09, 10</a></li>
								<li><a href="nineth">log-13</a></li>
							</ul></li>

						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-laptop"></i> <span>영업부서</span>
						</a>
							<ul class="sub">
								<li><a href="salesMain">영업 메인 페이지</a></li>
								<li><a href="processMain">영업 상황 조회</a></li>
								<li><a href="compareMain">영업 비교 페이지</a></li>
								<li><a href="productMain">상품 비교 페이지</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!-- page start-->
				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<header class="panel-heading">
								General Table <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a>
								</span>
							</header>
							<div class="row">
								<div class="col-md-12">
									<ul class="breadcrumbs-alt">
										<li id="전체" data-processName=""><a class="current">전체</a>
										<li id="견적" data-processName="견적"><a class="">견적</a></li>
										<li id="수주" data-processName="수주"><a class="">수주</a></li>
										<li id="출고" data-processName="출고"><a class="">출고</a></li>
									</ul>
								</div>
							</div>
							<div id="chartdiv"></div>
						</section>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<section class="panel">
							<header class="panel-heading">
								General Table <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a>
								</span>
							</header>
							<div class="panel-body" id="processListForm"></div>
						</section>
					</div>
					<div class="col-sm-6">
						<section class="panel">
							<header class="panel-heading">
								상세보기 <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-up"></a>
								</span>
							</header>
							<div class="panel-body processSearchForm"></div>
						</section>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
	</section>
	<script type="text/javascript">
		function processCodeClick(resp) {
			$('#processListForm tr')
					.on(
							'click',
							function() {
								var index = 0;
								var processCode = $(this).attr('id');
								for (var i = 0; i < resp.length; i++) {
									if (resp[i].processCode == processCode) {
										index = i;
										break;
									}
								}
								var processPrintText = '<div class="row">'
										+ '<div class="col-lg-12">'
										+ '<section class="panel">';
								if (resp[index].processCode.substring(0, 2) == 'em') {
									processPrintText += '<div class="panel-body invoice">'
											+ '<div class="invoice-header">'
											+ '<div class="invoice-title col-md-3 col-xs-2">'
											+ '<h3>estimate</h3>';
								} else if (resp[index].processCode.substring(0,
										2) == 'co') {
									processPrintText += '<div class="panel-body invoice">'
											+ '<div class="invoice-header">'
											+ '<div class="invoice-title col-md-3 col-xs-2">'
											+ '<h3>contract</h3>';
								} else if (resp[index].processCode.substring(0,
										2) == 're') {
									processPrintText += '<div class="panel-body invoice">'
											+ '<div class="invoice-header">'
											+ '<div class="invoice-title col-md-3 col-xs-2">'
											+ '<h3>release</h3>';
								}
								processPrintText += '</div>'
										+ '<div class="invoice-info col-md-9 col-xs-10">'
										+ '<div class="pull-right">'
										+ '<div class="col-md-6 col-sm-6 pull-left">'
										+ '<p>121 King Street, Melbourne <br>'
										+ 'Victoria 3000 Australia</p>'
										+ '</div>'
										+ '<div class="col-md-6 col-sm-6 pull-right">'
										+ '<p>Phone: +61 3 8376 6284 <br>'
										+ 'Email : info@envato.com</p>'
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '<div class="row invoice-to">'
										+ '<div class="col-md-4 col-sm-4 pull-left">'
										+ '<h4>Invoice To:</h4>' + '<h2>'
										+ resp[index].shopName + '</h2><br>'
										+ '<p>' + resp[index].addressDetail1
										+ ' ' + resp[index].addressDetail2
										+ '<br>' + resp[index].addressDetail3
										+ ' ';
								if (resp.shopDetail4 != null) {
									processPrintText += resp[index].addressDetail4
								}
								processPrintText += '<br>'
										+ resp[index].shopTel
										+ '<br>'
										+ '</p>'
										+ '</div>'
										+ '<div class="col-md-4 col-sm-5 pull-right">'
										+ '<div class="row">'
										+ '<div class="col-md-4 col-sm-5 inv-label"></div>'
										+ '<div class="col-md-8 col-sm-7"></div>'
										+ '</div>'
										+ '<div class="row">'
										+ '<div class="col-md-4 col-sm-5 inv-label">입력날짜</div>'
										+ '<div class="col-md-8 col-sm-7">'
										+ resp[index].processInsertDate
										+ '</div>'
										+ '</div>'
										+ '<br>'
										+ '<div class="row">'
										+ '<div class="col-md-4 col-sm-5 inv-label">마감날짜</div>'
										+ '<div class="col-md-8 col-sm-7">'
										+ resp[index].processTerm
										+ '</div>'
										+ '</div>'
										+ '<br>'
										+ '<div class="row">'
										+ '<div class="col-md-12 inv-label">'
										+ '<h3>납품종료일 #</h3>'
										+ '</div>'
										+ '<div class="col-md-12">'
										+ '<h4 class="amnt-value">'
										+ resp[index].processEndDate
										+ '</h4>'
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '<table class="table table-invoice" >'
										+ '<thead>'
										+ '<tr>'
										+ '<th>#</th>'
										+ '<th>Item Description</th>'
										+ '<th class="text-center">Unit Cost</th>'
										+ '<th class="text-center">Total</th>'
										+ '<th class="text-center">Quantity</th>'
										+ '</tr>' + '</thead>' + '<tbody>';
								$
										.each(
												resp[index].supplyList,
												function(i, item) {
													processPrintText += '<tr>'
															+ '<td>'
															+ i
															+ '</td>'
															+ '<td>'
															+ '<h4>'
															+ item.productName
															+ '</h4>'
															+ '<p>단위 : '
															+ item.productUnit
															+ '</p>'
															+ '</td>'
															+ '<td class="text-center">'
															+ item.supplyPrice
															+ '</td>'
															+ '<td class="text-center">'
															+ item.supplyVolume
															+ '</td>'
															+ '<td class="text-center">'
															+ item.supplyPrice
															* item.supplyVolume
															+ '</td>' + '</tr>'
												});
								+'</tbody>'
										+ '</table>'
										+ '<div class="row">'
										+ '<div class="col-md-8 col-xs-7 payment-method">'
										+ '<h3 class="inv-label itatic">Thank you for your business</h3>'
										+ '</div>'
										+ '<div class="col-md-4 col-xs-5 invoice-block pull-right">'
										+ '<ul class="unstyled amounts">'
										+ '<li class="grand-total">Grand Total : $7145</li>'
										+ '</ul>'
										+ '</div>'
										+ '</div>'
										+ '<div class="text-center invoice-btn">'
										+ '</div>' + '</div>' + '</section>'
										+ '</div>' + '</div>';
								$('.processSearchForm').html(processPrintText);
							});
		}

		function processInitializeFunction(resp) {
			var salAmount = 0;
			var processLocationText = '<div class="adv-table">'
					+ '<table class="dynamic-table display table table-bordered table-striped">'
					+ '<thead><tr><th>주문번호</th><th>거래처명</th><th>담당자</th><th>납입기한</th><th>금액</th><th>종결여부</th></tr>	</thead>'
					+ '<tbody>';
			for (var i = 0; i < resp.length; i++) {
				processLocationText += '<tr id="'+resp[i].processCode+'">';
				processLocationText += '<td>'
				processLocationText += resp[i].processCode;
				processLocationText += '</td>'
				processLocationText += '<td class="hidden-phone">'
				processLocationText += resp[i].shopName;
				processLocationText += '</td>'
				processLocationText += '<td>'
				processLocationText += resp[i].staffName;
				processLocationText += '</td>';
				processLocationText += '<td>';
				processLocationText += resp[i].processTerm
				processLocationText += '</td>';
				for (var j = 0; j < resp[i].supplyList.length; j++) {
					salAmount = salAmount
							+ (resp[i].supplyList[j].supplyVolume * resp[i].supplyList[j].supplyPrice);
				}
				processLocationText += '<td>';
				processLocationText += salAmount;
				processLocationText += '</td>'
				processLocationText += '<td>';
				if (resp[i].processState == 0) {
					processLocationText += '진행중';
				} else {
					processLocationText += '종료';
				}
				processLocationText += '</td>';
				processLocationText += '</tr></a>';
			}
			processLocationText += '</tbody></table></div>';

			$('#processListForm').html(processLocationText);
			$('.dynamic-table').dataTable({
				"aaSorting" : [ [ 4, "desc" ] ]
			});

			processCodeClick(resp);
		}

		function processInitialize() {
			var processText = $('.current').parents().attr('data-processName');
			var processInitializeJson = {
				'shopName' : '',
				'processName' : processText
			}

			$.ajax({
				url : "processInitialize",
				method : "get",
				data : processInitializeJson,
				dataType : "json",
				success : processInitializeFunction,
				error : function() {
					alert('에러입니다.');
				}
			});
		}
	</script>
	<!-- Chart code -->
	<script>
		var chartData = generateChartData();

		var chart = AmCharts.makeChart("chartdiv", {
			"type" : "serial",
			"theme" : "light",
			"legend" : {
				"useGraphSettings" : true
			},
			"dataProvider" : chartData,
			"synchronizeGrid" : true,
			"valueAxes" : [ {
				"id" : "v1",
				"axisColor" : "#FF6600",
				"axisThickness" : 2,
				"axisAlpha" : 1,
				"position" : "left"
			}, {
				"id" : "v2",
				"axisColor" : "#FCD202",
				"axisThickness" : 2,
				"axisAlpha" : 1,
				"position" : "right"
			}, {
				"id" : "v3",
				"axisColor" : "#B0DE09",
				"axisThickness" : 2,
				"gridAlpha" : 0,
				"offset" : 50,
				"axisAlpha" : 1,
				"position" : "left"
			} ],
			"graphs" : [ {
				"valueAxis" : "v1",
				"lineColor" : "#FF6600",
				"bullet" : "round",
				"bulletBorderThickness" : 1,
				"hideBulletsCount" : 30,
				"title" : "red line",
				"valueField" : "visits",
				"fillAlphas" : 0
			}, {
				"valueAxis" : "v2",
				"lineColor" : "#FCD202",
				"bullet" : "square",
				"bulletBorderThickness" : 1,
				"hideBulletsCount" : 30,
				"title" : "yellow line",
				"valueField" : "hits",
				"fillAlphas" : 0
			}, {
				"valueAxis" : "v3",
				"lineColor" : "#B0DE09",
				"bullet" : "triangleUp",
				"bulletBorderThickness" : 1,
				"hideBulletsCount" : 30,
				"title" : "green line",
				"valueField" : "views",
				"fillAlphas" : 0
			} ],
			"chartScrollbar" : {},
			"chartCursor" : {
				"cursorPosition" : "mouse"
			},
			"categoryField" : "date",
			"categoryAxis" : {
				"parseDates" : true,
				"axisColor" : "#DADADA",
				"minorGridEnabled" : true
			},
			"export" : {
				"enabled" : true,
				"position" : "bottom-right"
			}
		});

		chart.addListener("dataUpdated", zoomChart);
		zoomChart();

		// generate some random data, quite different range
		function generateChartData() {
			var chartData = [];
			var firstDate = new Date();
			firstDate.setDate(firstDate.getDate() - 100);

			var visits = 1600;
			var hits = 2900;
			var views = 8700;

			for (var i = 0; i < 100; i++) {
				// we create date objects here. In your data, you can have date strings
				// and then set format of your dates using chart.dataDateFormat property,
				// however when possible, use date objects, as this will speed up chart rendering.
				var newDate = new Date(firstDate);
				newDate.setDate(newDate.getDate() + i);

				visits += Math.round((Math.random() < 0.5 ? 1 : -1)
						* Math.random() * 10);
				hits += Math.round((Math.random() < 0.5 ? 1 : -1)
						* Math.random() * 10);
				views += Math.round((Math.random() < 0.5 ? 1 : -1)
						* Math.random() * 10);

				chartData.push({
					date : newDate,
					visits : visits,
					hits : hits,
					views : views
				});
			}
			return chartData;
		}

		function zoomChart() {
			chart.zoomToIndexes(chart.dataProvider.length - 20,
					chart.dataProvider.length - 1);
		}
	</script>
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<script src="js/bootstrap-switch.js"></script>

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

	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<!--Sparkline Chart-->
	<script src="js/sparkline/jquery.sparkline.js"></script>

	<script src="js/iCheck/jquery.icheck.js"></script>

	<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

	<!--dynamic table-->
	<script type="text/javascript" language="javascript"
		src="js/advanced-datatable/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<script
		src="js/ion.rangeSlider-1.8.2/js/ion-rangeSlider/ion.rangeSlider.min.js"
		type="text/javascript"></script>

	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>
	<script src="js/toggle-init.js"></script>
	<script src="js/advanced-form.js"></script>

	<!--icheck init -->
	<script src="js/icheck-init.js"></script>

	<!--dynamic table initialization -->
	<script src="js/dynamic_table_init.js?version=1"></script>

</body>
</html>
