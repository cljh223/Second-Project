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
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<script language="javascript"
	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=8eea4abd-531c-3ca0-b3de-daa4dcc5878e"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!--jQuery Flot Chart-->
<script src="js/flot-chart/jquery.flot.js"></script>
<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
<script src="js/flot-chart/jquery.flot.resize.js"></script>
<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

<!-- Chart code -->
<script>
	var shopCode;
	var shop1Date;
	var shop2Date;
	var chart = AmCharts.makeChart("chartdiv", {
		"type" : "serial",
		"theme" : "light",
		"rotate" : true,
		"marginBottom" : 50,
		"dataProvider" : [ {
			"age" : "45-49",
			"male" : -2.8,
			"female" : 3.0
		}, {
			"age" : "40-44",
			"male" : -3.4,
			"female" : 3.6
		}, {
			"age" : "35-39",
			"male" : -4.2,
			"female" : 4.1
		}, {
			"age" : "30-34",
			"male" : -5.2,
			"female" : 4.8
		}, {
			"age" : "25-29",
			"male" : -5.6,
			"female" : 5.1
		}, {
			"age" : "20-24",
			"male" : -5.1,
			"female" : 5.1
		}, {
			"age" : "15-19",
			"male" : -3.8,
			"female" : 3.8
		}, {
			"age" : "10-14",
			"male" : -3.2,
			"female" : 3.4
		}, {
			"age" : "5-9",
			"male" : -4.4,
			"female" : 4.1
		}, {
			"age" : "0-4",
			"male" : -5.0,
			"female" : 4.8
		} ],
		"startDuration" : 1,
		"graphs" : [
				{
					"fillAlphas" : 0.8,
					"lineAlpha" : 0.2,
					"type" : "column",
					"valueField" : "male",
					"title" : "Male",
					"labelText" : "[[value]]",
					"clustered" : false,
					"labelFunction" : function(item) {
						return Math.abs(item.values.value);
					},
					"balloonFunction" : function(item) {
						return item.category + ": "
								+ Math.abs(item.values.value) + "%";
					}
				},
				{
					"fillAlphas" : 0.8,
					"lineAlpha" : 0.2,
					"type" : "column",
					"valueField" : "female",
					"title" : "Female",
					"labelText" : "[[value]]",
					"clustered" : false,
					"labelFunction" : function(item) {
						return Math.abs(item.values.value);
					},
					"balloonFunction" : function(item) {
						return item.category + ": "
								+ Math.abs(item.values.value) + "%";
					}
				} ],
		"categoryField" : "age",
		"categoryAxis" : {
			"gridPosition" : "start",
			"gridAlpha" : 0.2,
			"axisAlpha" : 0
		},
		"valueAxes" : [ {
			"gridAlpha" : 0,
			"ignoreAxisWidth" : true,
			"labelFunction" : function(value) {
				return Math.abs(value) + '%';
			},
			"guides" : [ {
				"value" : 0,
				"lineAlpha" : 0.2
			} ]
		} ],
		"balloon" : {
			"fixedPosition" : true
		},
		"chartCursor" : {
			"valueBalloonsEnabled" : false,
			"cursorAlpha" : 0.05,
			"fullWidth" : true
		},
		"allLabels" : [ {
			"text" : "Male",
			"x" : "28%",
			"y" : "97%",
			"bold" : true,
			"align" : "middle"
		}, {
			"text" : "Female",
			"x" : "75%",
			"y" : "97%",
			"bold" : true,
			"align" : "middle"
		} ],
		"export" : {
			"enabled" : true
		}

	});
</script>
<script type="text/javascript">
	var map, markerLayer;

	// 티맵 레이어를 만드는 메소드
	function addMarkerLayer() {
		markerLayer = new Tmap.Layer.Markers("marker");
		map.addLayer(markerLayer);
	};

	// 티맵에 마커를 표시하는 메소드
	function makeMarker(lonList, latList, shopCodeList, shopStateList) {
		map.setCenter(new Tmap.LonLat(lonList[0], latList[0]), 16);
		addMarkerLayer();
		var icon;
		for (var i = 0; i < lonList.length; i++) {
			var lonlat = new Tmap.LonLat(lonList[i], latList[i]);
			var size = new Tmap.Size(12, 19);
			var offset = new Tmap.Pixel(-(size.w / 2), -size.h);
			if (shopCodeList[i] == 0) {
				icon = new Tmap.IconHtml(
						'<img alt="" src="images/sales/견적마커.png">', size,
						offset);
			} else {
				icon = new Tmap.IconHtml(
						'<img alt="" src="images/sales/수주마커.png" data-type = "marker" data-source="'+shopCodeList[i]+'">',
						size, offset);
			}
			var marker = new Tmap.Markers(lonlat, icon);
			markerLayer.addMarker(marker);
		}
		chan();
	}

	function initialize() {
		map = new Tmap.Map({
			div : "map",
			width : '100%',
			height : '600px'
		});
		map.addControl(new Tmap.Control.MousePosition());
		var lonList = new Array();
		var latList = new Array();
		var shopCodeList = new Array();
		var shopStateList = new Array();
		<c:forEach items="${addressList}" var="item">
		lonList.push("${item.lon}");
		latList.push("${item.lat}");
		</c:forEach>
		<c:forEach items="${shopCodeList}" var="item">
		shopCodeList.push("${item}");
		</c:forEach>
		<c:forEach items="${shopStateList}" var="item">
		shopStateList.push("${item}");
		</c:forEach>
		makeMarker(lonList, latList, shopCodeList, shopStateList);
	}

	$(function() {
		initialize();
		$('.panel .tools .fa-chevron-up').parents(".panel").children(
				".panel-body").slideUp(200);
	});
</script>
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
					<div class="col-sm-6">
						<section class="panel">
							<header class="panel-heading">
								상세보기 <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a>
								</span>
							</header>
							<div class="panel-body processSearchForm" id="map"></div>
						</section>
					</div>
					<div class="col-sm-6">
						<section class="panel">
							<header class="panel-heading">
								General Table <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-up menuForm"></a>
								</span>
							</header>
							<div class="panel-body" id="shopCompareForm"></div>
						</section>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div id="chartdiv"></div>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
	</section>
	<script type="text/javascript">
		// 마커 클릭시 이벤트
		function compareChartDateFunction() {
			$('#shopCompareForm tr').on('click', function() {
				shopCode = $(this).attr('id');
				$.ajax({
					url : 'compareChartDateFunction',
					method : 'post',
					data : {
						'shopCode' : shopCode
					},
					dataType : 'text',
					success : function(resp) {
						shop2Date = resp
					}
				});
			});
		}

		function chan() {
			$('div>img[data-type = "marker"]')
					.on(
							'click',
							function() {
								var el = $('.panel .tools .menuForm').parents(
										".panel").children(".panel-body");
								if ($('.panel .tools .menuForm').hasClass(
										"fa-chevron-up")) {
									$('.panel .tools .menuForm').removeClass(
											"fa-chevron-up").addClass(
											"fa-chevron-down");
									el.slideDown(200);
								}

								shopCode = $(this).attr('data-source');

								$.ajax({
									url : 'compareChartDateFunction',
									method : 'post',
									data : {
										'shopCode' : shopCode
									},
									dataType : 'text',
									success : function(resp) {
										shop1Date = resp;
									},
									error : function() {
										alert('에러입니다.');
									}
								})
								$
										.ajax({
											url : 'shopDetailSelect2',
											method : 'post',
											dataType : 'json',
											success : function(resp) {
												var salAmount = 0;
												var processLocationText = '<div class="adv-table">'
														+ '<table class="dynamic-table display table table-bordered table-striped">'
														+ '<thead><tr><th>매장번호</th><th>매장명</th><th>주소</th><th>대표자</th><th>전화번호</th></tr>	</thead>'
														+ '<tbody>';
												for (var i = 0; i < resp.length; i++) {
													processLocationText += '<tr id="'+resp[i].shopCode+'">';
													processLocationText += '<td>'
													processLocationText += resp[i].shopCode;
													processLocationText += '</td>'
													processLocationText += '<td class="hidden-phone">'
													processLocationText += resp[i].shopName;
													processLocationText += '</td>'
													processLocationText += '<td>'
															+ resp[i].addressSet[0].addressDetail1
															+ ' '
															+ resp[i].addressSet[0].addressDetail2
															+ resp[i].addressSet[0].addressDetail3
															+ ' ';
													if (resp.shopDetail4 != null) {
														processLocationText += resp[i].addressSet[0].addressDetail4
													}
													processLocationText += '</td>';
													processLocationText += '<td>';
													processLocationText += resp[i].shopRep
													processLocationText += '</td>';
													processLocationText += '<td>';
													processLocationText += resp[i].shopTel;
													processLocationText += '</td>'
													processLocationText += '</tr></a>';
												}
												processLocationText += '</tbody></table></div>';

												$('#shopCompareForm').html(
														processLocationText);
												$('.dynamic-table')
														.dataTable(
																{
																	"aaSorting" : [ [
																			4,
																			"desc" ] ]
																});
												compareChartDateFunction();

											},
											error : function() {
												alert('에러입니다.');
											}
										});
							});
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
