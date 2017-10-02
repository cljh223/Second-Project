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
<style type="text/css">
#load {
   width: 100%;
   height: 100%;
   top: 0;
   left: 0;
   position: fixed;
   display: block;
   opacity: 0.8;
   background: white;
   z-index: 99;
   text-align: center;
}

#load > img {
   position: absolute;
   top: 50%;
   left: 50%;
   z-index: 100;
}
</style>
<script type="text/javascript">
$(window).load(function() {
   $('#load').hide();
});
</script>
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
<div id="load">
      <img src="images/giphy.gif" alt="loading">
   </div>
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
								class="fa fa-wrench"></i> <span>생산부서</span>
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
				<!-- page start-->
				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<header class="panel-heading">
								전체 리스트 <span class="tools pull-right"> <a
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
								전체현황 <span class="tools pull-right"> <a
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
									href="javascript:;" class="fa fa-chevron-up invoice"></a>
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
										+ '<p>서울시 성북구 장위1동<br>'
										+ '장위로 15길</p>'
										+ '</div>'
										+ '<div class="col-md-6 col-sm-6 pull-right">'
										+ '<p>Phone: 010-6634-0223 <br>'
										+ 'Email : cljh223@naver.com</p>'
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '</div>'
										+ '<div class="row invoice-to">'
										+ '<div class="col-md-4 col-sm-4 pull-left">'
										+ '<h4>To:</h4>' + '<h2>'
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
										+ getTimeStamp(resp[index].processInsertDate)
										+ '</div>'
										+ '</div>'
										+ '<br>'
										+ '<div class="row">'
										+ '<div class="col-md-4 col-sm-5 inv-label">마감날짜</div>'
										+ '<div class="col-md-8 col-sm-7">'
										+ getTimeStamp(resp[index].processTerm)
										+ '</div>'
										+ '</div>'
										+ '<br>'
										+ '<div class="row">'
										+ '<div class="col-md-12 inv-label">'
										+ '<h3>납품종료일 #</h3>'
										+ '</div>'
										+ '<div class="col-md-12">'
										+ '<h4 class="amnt-value">'
										+ getTimeStamp(resp[index].processEndDate)
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
										+ '<th class="text-center">Quantity</th>'
										+ '<th class="text-center">Total</th>'
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
															+ AddComma(item.supplyPrice)
															+ '</td>'
															+ '<td class="text-center">'
															+ AddComma(item.supplyVolume)
															+ '</td>'
															+ '<td class="text-center">'
															+ AddComma(item.supplyPrice * item.supplyVolume)
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
								var el = $('.panel .tools .invoice').parents(
										".panel").children(".panel-body");
								if ($('.panel .tools .invoice').hasClass(
										"fa-chevron-up")) {
									$('.panel .tools .invoice').removeClass(
											"fa-chevron-up").addClass(
											"fa-chevron-down");
									el.slideDown(200);
								}

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
				processLocationText += getTimeStamp(resp[i].processTerm)
				processLocationText += '</td>';
				for (var j = 0; j < resp[i].supplyList.length; j++) {
					salAmount = salAmount
							+ (resp[i].supplyList[j].supplyVolume * resp[i].supplyList[j].supplyPrice);
				}
				processLocationText += '<td>';
				processLocationText += AddComma(salAmount);
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
			overviewTextFunction();
		}

		function processInitialize() {
			var processText = $('.current').parents().attr('data-processName');
			var processInitializeJson = {
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
		var chart;
		var chartData = new Array();

		function zoomChart() {
			chart.zoomToIndexes(chart.dataProvider.length - 20,
					chart.dataProvider.length - 1);
		}

		function overviewTextFunction(resp) {
			var processName = $('.current').parents().attr('data-processName');
			$.ajax({
				url : 'chartSelect2',
				method : 'post',
				async : false,
				data : {
					'processName' : processName
				},
				dataType : 'json',
				success : function(resp) {
					var subChartData = [];
					for (var i = 0; i < resp.earnList.length; i++) {
						var newDate = new Date(resp.dateList[i]);

						earnList = resp.earnList[i];
						salesList = resp.salesList[i];
						allEarnSumList = resp.allEarnSumList[i];
						subChartData.push({
							date : newDate,
							earnList : earnList,
							salesList : salesList,
							allEarnSumList : allEarnSumList
						});
					}

					chartData = subChartData
					chart = AmCharts.makeChart("chartdiv", {
						"type" : "serial",
						"theme" : "none",
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
							"title" : "판매량",
							"valueField" : "salesList",
							"fillAlphas" : 0
						}, {
							"valueAxis" : "v2",
							"lineColor" : "#FCD202",
							"bullet" : "square",
							"bulletBorderThickness" : 1,
							"hideBulletsCount" : 30,
							"title" : "매출액",
							"valueField" : "earnList",
							"fillAlphas" : 0
						}, {
							"valueAxis" : "v3",
							"lineColor" : "#B0DE09",
							"bullet" : "triangleUp",
							"bulletBorderThickness" : 1,
							"hideBulletsCount" : 30,
							"title" : "매출 총 이익",
							"valueField" : "allEarnSumList",
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

				},
				error : function() {
					alert('에러입니다.');
				}
			});
		}
	</script>
	<script type="text/javascript">
		function getTimeStamp(resp) {
			var d = new Date(resp);

			var s = leadingZeros(d.getFullYear(), 4) + '-'
					+ leadingZeros(d.getMonth() + 1, 2) + '-'
					+ leadingZeros(d.getDate(), 2) + ' ';

			return s;
		}

		function leadingZeros(n, digits) {
			var zero = '';
			n = n.toString();

			if (n.length < digits) {
				for (i = 0; i < digits - n.length; i++)
					zero += '0';
			}
			return zero + n;

		}
		function AddComma(data_value) {
			return Number(data_value).toLocaleString('en');
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
