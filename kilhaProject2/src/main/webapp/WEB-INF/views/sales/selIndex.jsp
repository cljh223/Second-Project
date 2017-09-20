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
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />
<link href="css/clndr.css" rel="stylesheet">
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
<link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.css"
	rel="stylesheet" />
<link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet" />

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
<script type="text/javascript">
	var map, markerLayer;

	// 티맵 레이어를 만드는 메소드
	function addMarkerLayer() {
		markerLayer = new Tmap.Layer.Markers("marker");
		map.addLayer(markerLayer);
	};

	// 티맵에 마커를 표시하는 메소드
	function makeMarker(lonList, latList, shopCodeList) {
		map.setCenter(new Tmap.LonLat(lonList[0], latList[0]), 16);
		addMarkerLayer();
		for (var i = 0; i < lonList.length; i++) {
			var lonlat = new Tmap.LonLat(lonList[i], latList[i]);
			var size = new Tmap.Size(12, 19);
			var offset = new Tmap.Pixel(-(size.w / 2), -size.h);
			var icon = new Tmap.IconHtml(
					'<button data-type = "marker" data-source="'+shopCodeList[i]+'" class="btn btn-danger" type="button">2</button>',
					size, offset);
			var marker = new Tmap.Markers(lonlat, icon);
			markerLayer.addMarker(marker);
		}
		chan();
	}

	// 창고 테이블을 만드는 메소드
	function warehouseStringFunction(resp) {
		var wareString = '';
		for (var i = 0; i < resp.length; i++) {
			wareString += '<tr id="'+resp[i].warehouseName+'">';
			wareString += '<td><a href="#">'
			wareString += resp[i].warehouseCode;
			wareString += '</a></td>'
			wareString += '<td class="hidden-phone">'
			wareString += resp[i].warehouseName;
			wareString += '</td>'
			wareString += '<td>'
			wareString += resp[i].warehouseType;
			wareString += '</td>';
			wareString += '<td><span class="label label-info label-mini">Due</span></td>';
			wareString += '<td>';
			wareString += '<div class="progress progress-striped progress-xs">';
			wareString += '<div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">';
			wareString += '<span class="sr-only">40% Complete (success)</span>';
			wareString += '</div>' + '</div>' + '</td>';
			wareString += '</tr>';
		}
		wareString += '</tbody>' + '</thead>';
		wareString += '</div>' + '</section>';
		wareString += '</div></form>';

		return wareString;
	}

	// 직원 테이블을 만드는 메소드
	function staffStringFunction(resp) {
		var staffString = '';
		for (var i = 0; i < resp.length; i++) {
			staffString += '<tr id="'+resp[i].staff_name+'">';
			staffString += '<td><a href="#">'
			staffString += resp[i].staff_code;
			staffString += '</a></td>'
			staffString += '<td class="hidden-phone">'
			staffString += resp[i].staff_name;
			staffString += '</td>'
			staffString += '<td>'
			staffString += resp[i].staff_department;
			staffString += '</td>';
			staffString += '<td><span class="label label-info label-mini">Due</span></td>';
			staffString += '<td>';
			staffString += '<div class="progress progress-striped progress-xs">';
			staffString += '<div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">';
			staffString += '<span class="sr-only">40% Complete (success)</span>';
			staffString += '</div>' + '</div>' + '</td>';
			staffString += '</tr>';
		}
		staffString += '</tbody>' + '</thead>';
		staffString += '</div>' + '</section>';
		staffString += '</div></form>';

		return staffString;
	}

	// 상품 테이블을 만드는 메소드
	function productStringFunction(resp) {
		var productString = '';
		for (var i = 0; i < resp.length; i++) {
			productString += '<tr id="'+resp[i].productCode+'">';
			productString += '<td><a href="#">'
			productString += resp[i].productCode;
			productString += '</a></td>'
			productString += '<td class="hidden-phone">'
			productString += resp[i].productName;
			productString += '</td>'
			productString += '<td>'
			productString += resp[i].productUnitPrice;
			productString += '</td>';
			productString += '<td>'
			productString += resp[i].productReleasePrice;
			productString += '</td>';
			productString += '<td>'
			productString += resp[i].productUnit;
			productString += '</td>';
			productString += '</tr>';
		}
		productString += '</tbody>' + '</thead>';
		productString += '</div>' + '</section>';
		productString += '</div></form>';

		return productString;
	}

	// 디비에서 창고 정보를 가져오는 메소드
	function warehouseBootFunction() {

		$.ajax({
			url : 'popupWarehouse',
			method : 'POST',
			dataType : 'json',
			success : warehouseBootString,
			error : function() {
				alert('에러입니다.');
			}
		});
	}

	// 디비에서 직원 정보를 가져오는 메소드
	function staffBootFunction() {
		$.ajax({
			url : 'popupStaff',
			method : 'POST',
			dataType : 'json',
			success : staffBootString,
			error : function() {
				alert('에러입니다.');
			}
		});
	}

	// 디비에서 상품 정보를 가져오는 메소드
	function productBootFunction() {

		$.ajax({
			url : 'popupProduct',
			method : 'POST',
			dataType : 'json',
			success : productBootString,
			error : function() {
				alert('에러입니다.');
			}
		});
	}

	// 창고테이블 전체를 팝업창에 띄우는 메소드. 검색창에 입력할 때 마다 테이블의 내용을 불러온다.
	function warehouseBootString(resp) {
		var warehouseText = '<form><div class="row">'
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
				+ '<th>창고코드</th><th class="hidden-phone">창고명</th>'
				+ '<th>창고종류</th><th>창고상태</th><th>생산률</th></tr>'
				+ '</thead><tbody id = "warehouseTable">'
				+ warehouseStringFunction(resp);
		$('div#myModal2 .modal-body').html(warehouseText);
		$('#searchText1').on('keyup', function() {
			var warehouseName = $('#searchText1').val();
			var searchText = {
				'searchText' : warehouseName
			}
			$.ajax({
				url : 'popupWarehouse',
				method : 'get',
				data : searchText,
				dataType : 'json',
				success : function(respp) {
					var searchResult = warehouseStringFunction(respp);
					$('#warehouseTable').html(searchResult);
					trWarehouseFunction();
				},
				error : function() {
					alert('에러입니다.');
				}
			});
		});
		trWarehouseFunction();
	}

	// 직원테이블 전체를 팝업창에 띄우는 메소드. 검색창에 입력할 때 마다 테이블의 내용을 불러온다.
	function staffBootString(resp) {
		var staffText = '<form><div class="row">'
				+ '<div class="col-lg-6">'
				+ '<div class="dataTables_filter" id="editable-sample_filter">'
				+ '<label>Search: <input type="text" id = "searchText2"'
				+'aria-controls="editable-sample"'
				+'class="form-control medium"></label>'
				+ '</div>'
				+ '</div>'
				+ '</div><div class="col-sm-12">'
				+ '<section class="panel">'
				+ '<div class="panel-body">'
				+ '<table id = "searchTable" class="table  table-hover general-table">'
				+ '<thead><tr><th>직원코드</th>'
				+ '<th class="hidden-phone">직원명</th><th>부서</th>'
				+ '<th>??</th><th>Progress</th></tr></thead>'
				+ '<tbody id="staffTable">' + staffStringFunction(resp);
		$('div#myModal1 .modal-body').html(staffText);
		$('#searchText2').on('keyup', function() {
			var staffName = $('#searchText2').val();
			var searchText = {
				'searchText' : staffName
			}
			$.ajax({
				url : 'popupStaff',
				method : 'get',
				data : searchText,
				dataType : 'json',
				success : function(respp) {
					var searchResult = staffStringFunction(respp);
					$('#staffTable').html(searchResult);
					trStaffFunction();
				},
				error : function() {
					alert('에러입니다.');
				}
			});
		});
		trStaffFunction();
	}

	// 상품테이블 전체를 팝업창에 띄우는 메소드. 검색창에 입력할 때 마다 테이블의 내용을 불러온다.
	function productBootString(resp) {
		var productText = '<form><div class="row">'
				+ '<div class="col-lg-6">'
				+ '<div class="dataTables_filter" id="editable-sample_filter">'
				+ '<label>Search: <input type="text" id = "searchText3"'
				+'aria-controls="editable-sample"'
				+'class="form-control medium"></label>'
				+ '</div>'
				+ '</div>'
				+ '</div><div class="col-sm-12">'
				+ '<section class="panel">'
				+ '<div class="panel-body">'
				+ '<table id = "searchTable" class="table  table-hover general-table">'
				+ '<thead>' + '<tr>' + '<th>상품코드</th>' + '<th>상품명</th>'
				+ '<th>입고단가</th>' + '<th>출고단가</th>' + '<th>판매액</th>' + '</tr>'
				+ '</thead>' + '<tbody id = "productTable">'
				+ productStringFunction(resp);
		$('div#myModal3 .modal-body').html(productText);
		$('#searchText3').on('keyup', function() {
			var productName = $('#searchText3').val();
			var searchText = {
				'searchText' : productName
			}
			$.ajax({
				url : 'popupProduct',
				method : 'get',
				data : searchText,
				dataType : 'json',
				success : function(respp) {
					var searchResult = productStringFunction(respp);
					$('#productTable').html(searchResult);
					trProductFunction(respp);
				},
				error : function() {
					alert('에러입니다.');
				}
			});
		});
		trProductFunction(resp);
	}

	// 현재 프로세스 문서를 팝업창에 띄우는 메소드.
	function NowEstimateBootString(resp) {
		var NowEstimateText = '<div class="row">' + '<div class="col-lg-12">'
				+ '<section class="panel">';
		if (processName == '견적') {
			NowEstimateText += '<div class="panel-body invoice">'
					+ '<div class="invoice-header">'
					+ '<div class="invoice-title col-md-3 col-xs-2">'
					+ '<h3>estimate</h3>';
		} else if (processName == '수주') {
			NowEstimateText += '<div class="panel-body invoice">'
					+ '<div class="invoice-header">'
					+ '<div class="invoice-title col-md-3 col-xs-2">'
					+ '<h3>contract</h3>';
		} else if (processName == '출고') {
			NowEstimateText += '<div class="panel-body invoice">'
					+ '<div class="invoice-header">'
					+ '<div class="invoice-title col-md-3 col-xs-2">'
					+ '<h3>release</h3>';
		}
		NowEstimateText += '</div>'
				+ '<div class="invoice-info col-md-9 col-xs-10">'
				+ '<div class="pull-right">'
				+ '<div class="col-md-6 col-sm-6 pull-left">'
				+ '<p>121 King Street, Melbourne <br>'
				+ 'Victoria 3000 Australia</p>' + '</div>'
				+ '<div class="col-md-6 col-sm-6 pull-right">'
				+ '<p>Phone: +61 3 8376 6284 <br>'
				+ 'Email : info@envato.com</p>' + '</div>' + '</div>'
				+ '</div>' + '</div>' + '<div class="row invoice-to">'
				+ '<div class="col-md-4 col-sm-4 pull-left">'
				+ '<h4>Invoice To:</h4>' + '<h2>' + resp.shopName + '</h2><br>'
				+ '<p>' + resp.addressDetail1 + ' ' + resp.addressDetail2
				+ '<br>' + resp.addressDetail3 + ' ';
		if (resp.shopDetail4 != null) {
			NowEstimateText += resp.addressDetail4
		}
		NowEstimateText += '<br>' + resp.shopTel + '<br>' + '</p>' + '</div>'
				+ '<div class="col-md-4 col-sm-5 pull-right">'
				+ '<div class="row">'
				+ '<div class="col-md-4 col-sm-5 inv-label"></div>'
				+ '<div class="col-md-8 col-sm-7"></div>' + '</div>'
				+ '<div class="row">'
				+ '<div class="col-md-4 col-sm-5 inv-label">입력날짜</div>'
				+ '<div class="col-md-8 col-sm-7">' + resp.processInsertDate
				+ '</div>' + '</div>' + '<br>' + '<div class="row">'
				+ '<div class="col-md-4 col-sm-5 inv-label">마감날짜</div>'
				+ '<div class="col-md-8 col-sm-7">' + resp.processTerm
				+ '</div>' + '</div>' + '<br>' + '<div class="row">'
				+ '<div class="col-md-12 inv-label">' + '<h3>납품종료일 #</h3>'
				+ '</div>' + '<div class="col-md-12">'
				+ '<h4 class="amnt-value">' + resp.processEndDate + '</h4>'
				+ '</div>' + '</div>' + '</div>' + '</div>'
				+ '<table class="table table-invoice" >' + '<thead>' + '<tr>'
				+ '<th>#</th>' + '<th>Item Description</th>'
				+ '<th class="text-center">Unit Cost</th>'
				+ '<th class="text-center">Total</th>'
				+ '<th class="text-center">Quantity</th>' + '</tr>'
				+ '</thead>' + '<tbody>';
		$.each(resp.supplyList, function(index, item) {
			NowEstimateText += '<tr>' + '<td>' + index + '</td>' + '<td>'
					+ '<h4>' + item.productName + '</h4>' + '<p>단위 : '
					+ item.productUnit + '</p>' + '</td>'
					+ '<td class="text-center">' + item.supplyPrice + '</td>'
					+ '<td class="text-center">' + item.supplyVolume + '</td>'
					+ '<td class="text-center">' + item.supplyPrice
					* item.supplyVolume + '</td>' + '</tr>'
		});
		+'</tbody>'
				+ '</table>'
				+ '<div class="row">'
				+ '<div class="col-md-8 col-xs-7 payment-method">'
				+ '<h3 class="inv-label itatic">Thank you for your business</h3>'
				+ '</div>'
				+ '<div class="col-md-4 col-xs-5 invoice-block pull-right">'
				+ '<ul class="unstyled amounts">'
				+ '<li class="grand-total">Grand Total : $7145</li>' + '</ul>'
				+ '</div>' + '</div>' + '<div class="text-center invoice-btn">'
				+ '</div>' + '</div>' + '</section>' + '</div>' + '</div>';
		$('div#myModal4 .modal-body').html(NowEstimateText);
	}

	// 전체 프로세스 문서를 팝업창에 띄우는 메소드.
	function allEstimateViewBootString(resp) {
		var allEstimateViewText = '<div class="row"><div class="col-sm-12">'
				+ '<section class="panel"><div class="panel-body"><div class="adv-table">'
				+ '<table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">'
				+ '<thead><tr><th>No</th><th>매장명</th><th class="hidden-phone">작성날짜</th>'
				+ '<th class="hidden-phone">종료날짜</th><th class="hidden-phone">종결여부</th>'
				+ '</tr></thead><tbody>'
		$.each(resp, function(index, item) {
			allEstimateViewText += '<tr>' + '<td>' + index + '</td>' + '<td>'
					+ '<h4>' + item.shopName + '</h4></td>'
					+ '<td class="text-center">' + item.processInsertDate
					+ '</td>' + '<td class="text-center">'
					+ item.processEndDate + '</td>'
					+ '<td class="text-center">' + item.processState + '</td>'
					+ '</tr>'
		});
		+'</tbody>' + '</table>' + '</div>' + '</div>' + '</section>'
				+ '</div>' + '</div>'

		$('div#myModal5 .modal-body').html(allEstimateViewText);
	}

	function trStaffFunction() {
		$('tr').on('click', function() {
			var staffName = $(this).attr('id');
			$('#button1').on('click', function() {
				$('#staffName').val(staffName);
			});
		});
	}

	function trWarehouseFunction() {
		$('tr').on('click', function() {
			var warehouseName = $(this).attr('id');
			$('#button2').on('click', function() {
				$('#warehouseName').val(warehouseName);
			});
		});
	}

	function trProductFunction(resp) {
		$('tr')
				.on(
						'click',
						function() {
							var productCode = $(this).attr('id');
							for (var i = 0; i < resp.length; i++) {
								if (productCode == resp[i].productCode) {
									index = i;
									break;
								}
							}
							$('#button3')
									.on(
											'click',
											function() {
												var supplyTableString = '<tr>';
												supplyTableString += '<td>';
												supplyTableString += '<input class=" form-control productCode" name="productCode" type="text" value="'+resp[index].productCode+'" readonly = "true" style="width: 100px;"/>';
												supplyTableString += '</td>'
												supplyTableString += '<td class="hidden-phone">'
												supplyTableString += '<input class=" form-control productName" name="productName" type="text" value="'+resp[index].productName+'" readonly = "true" style="width: 100px;"/>';
												supplyTableString += '</td>'
												supplyTableString += '<td class="hidden-phone">'
												supplyTableString += '<input class=" form-control productUnit" name="productUnit" type="text" value="'+resp[index].productUnit+'" style="width: 100px;"/>';
												supplyTableString += '</td>';
												supplyTableString += '<td>'
												supplyTableString += '<input class=" form-control supplyVolume" name="supplyVolume" type="text" value="" style="width: 100px;"/>';
												supplyTableString += '</td>';
												supplyTableString += '<td>'
												supplyTableString += '<input class=" form-control supplyPrice" name="supplyPrice" type="text" value="'+resp[index].productReleasePrice+'" style="width: 100px;"/>';
												supplyTableString += '</td>';
												supplyTableString += '<td>'
												supplyTableString += '<input class=" form-control productUnitPrice" name="productUnitPrice" type="text" value="'+resp[index].productUnitPrice+'" style="width: 100px;"/>';
												supplyTableString += '</td>';
												supplyTableString += '</tr>';
												$('#supplyProductTable')
														.append(
																supplyTableString);
											});
						});
	}

	//영업 메인 초기 화면, 티맵 불러오기
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
		<c:forEach items="${addressList}" var="item">
		lonList.push("${item.lon}");
		latList.push("${item.lat}");
		</c:forEach>
		<c:forEach items="${shopCodelist}" var="item">
		shopCodeList.push("${item}");
		</c:forEach>
		makeMarker(lonList, latList, shopCodeList);
	}

	$(function() {
		initialize();
		$('.contacts').on('click', contactsViewFunction);
		$('.overview').on('click', overviewIntiFunction);
		$('.settings').on('click', processViewFunction);
		$('.job-history').on('click', updateViewFunction);
		$('#staffName').on('click', staffBootFunction);
		$('#warehouseName').on('click', warehouseBootFunction);
		$('#productSelectbutton').on('click', productBootFunction);
		//fa-chevron-up 클래스를 눌렀을때 창을 접어둔다.
		$('.panel .tools .fa-chevron-up').parents(".panel").children(
				".panel-body").slideUp(200);
		$('#processSaveBtn').on('click', processAddFunction);
		$('.nowEstimateSearch').on('click', nowEstimateSearchFunction);
		$('.nowContractSearch').on('click', nowEstimateSearchFunction);
		$('.nowReleaseSearch').on('click', nowEstimateSearchFunction);
		$('.allEstimateView').on('click', allEstimateViewFunction);
		$('.allContractView').on('click', allEstimateViewFunction);
		$('.allReleaseView').on('click', allEstimateViewFunction);
		$('#processFormAddBtn').on('click', estimateAddFunction);
		$('#견적').on('click', function() {
			$('.current').removeClass("current");
			$('#견적 >a').addClass("current");
			processViewFunction();
		});
		$('#수주').on('click', function() {
			$('.current').removeClass("current");
			$('#수주 >a').addClass("current");
			processViewFunction();
		});
		$('#출고').on('click', function() {
			$('.current').removeClass("current");
			$('#출고 >a').addClass("current");
			processViewFunction();
		});
		$(".range_2").ionRangeSlider();
		$('.mtop10').on('click', kpiSettingFunction);

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
				<table id="loginForm">
					<tr>
						<td><input type="text" class="form-control search"
							placeholder=" Search"></td>
						<td>&nbsp</td>
						<!-- user login dropdown start-->
						<td><%@include file="../logistics/login.jsp"%></td>
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
								<li><a href="KPIMain">KPI 조회</a></li>
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
				<div class="row">
					<div class="col-md-8" style="width: 100%; height: 650px";>
						<section class="panel" style="height: 450px">
							<header class="panel-heading">
								Earning Graph <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a>
								</span>
							</header>
							<div class="panel-body" id="map" style="height: 580px"></div>
						</section>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading">
								Dropdowns Button <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-up menuForm"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<section class="panel">
											<div class="panel-body profile-information">
												<div class="col-md-3">
													<div class="profile-pic text-center">
														<img src="images/lock_thumb.jpg" alt="" />
													</div>
												</div>
												<div class="col-md-6">
													<div class="profile-desk"></div>
												</div>
												<div class="col-md-3">
													<div class="profile-statistics"></div>
												</div>
											</div>
										</section>
									</div>
									<div class="col-md-12">
										<section class="panel">
											<header class="panel-heading tab-bg-dark-navy-blue">
												<ul class="nav nav-tabs nav-justified ">
													<li class="contacts"><a data-toggle="tab"
														href="#contacts" class="contact-map"> Contacts </a></li>
													<li class="overview"><a data-toggle="tab"
														href="#overview"> Overview </a></li>
													<li class="settings"><a data-toggle="tab"
														href="#settings"> Settings </a></li>
													<li class="job-history"><a data-toggle="tab"
														href="#job-history"> Job History </a></li>
												</ul>
											</header>
											<div class="panel-body">
												<div class="tab-content tasi-tab ">
													<div id="contacts" class="tab-pane">
														<div class="row">
															<div class="col-md-6">
																<div class="prf-contacts">
																	<h2>
																		<span><i class="fa fa-map-marker"></i></span> location
																	</h2>
																	<div class="location-info"></div>
																	<h2>
																		<span><i class="fa fa-phone"></i></span> contacts
																	</h2>
																	<div class="location-info contact-info"></div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="panel-body" id="map-canvas"></div>
															</div>
														</div>
													</div>
													<div id="overview" class="tab-pane">
														<div class="row">
															<div class="col-lg-12">
																<div class="btn-group">
																	<button data-toggle="dropdown"
																		class="btn btn-default dropdown-toggle" type="button"
																		aria-expanded="false">
																		Date <span class="caret"></span>
																	</button>
																	<ul role="menu" class="dropdown-menu yearMenu">

																	</ul>
																</div>
																<button type="button" class="btn btn-default">Default</button>
															</div>
														</div>
														<div class="row">
															<div class="col-md-4">
																<div class="prf-box prf-kpi">
																	<h3 class="prf-border-head">work in progress</h3>
																	<div class=" wk-progress salesClass"></div>
																	<div class=" wk-progress earnClass">
																		<div class="col-md-5">Graphics River</div>
																		<div class="col-md-5">
																			<div class="progress ">
																				<div style="width: 57%" aria-valuemax="100"
																					aria-valuemin="0" aria-valuenow="40"
																					role="progressbar"
																					class="progress-bar progress-bar-success">
																					<span class="sr-only">57% Complete (success)</span>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-2">57%</div>
																	</div>
																	<div class=" wk-progress realEarnClass">
																		<div class="col-md-5">Code Canyon</div>
																		<div class="col-md-5">
																			<div class="progress ">
																				<div style="width: 20%" aria-valuemax="100"
																					aria-valuemin="0" aria-valuenow="40"
																					role="progressbar"
																					class="progress-bar progress-bar-info">
																					<span class="sr-only">20% Complete (success)</span>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-2">20%</div>
																	</div>
																</div>
																<div class="prf-box">
																	<h3 class="prf-border-head">performance status</h3>
																	<div class=" wk-progress pf-status">
																		<div class="col-md-8 col-xs-8 ">sales</div>
																		<div class="col-md-4 col-xs-4 salesText"></div>
																	</div>
																	<div class=" wk-progress pf-status ">
																		<div class="col-md-8 col-xs-8">earn</div>
																		<div class="col-md-4 col-xs-4 earnText"></div>
																	</div>
																	<div class=" wk-progress pf-status ">
																		<div class="col-md-8 col-xs-8">Total Earn</div>
																		<div class="col-md-4 col-xs-4 allEarnText">
																			<strong>235452344$</strong>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-8">
																<div id="chartdiv"></div>
															</div>

														</div>
													</div>
													<div id="job-history" class="tab-pane ">
														<div class="row">
															<div class="col-sm-6">
																<section class="panel">
																	<header class="panel-heading"> Horizontal
																		Forms </header>
																	<div class="panel-body">
																		<div class="position-center">
																			<form class="form-horizontal" role="form">
																				<div class="form-group">
																					<label for="inputEmail1"
																						class="col-lg-2 col-sm-2 control-label">매장명</label>
																					<div class="col-lg-10">
																						<input type="text" class="form-control"
																							id="shopNameUpdate" value="" placeholder="매장명">
																						<p class="help-block">매장명을 입력하세요</p>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputEmail1"
																						class="col-lg-2 col-sm-2 control-label">사업자등록번호</label>
																					<div class="col-lg-10">
																						<input type="text" class="form-control"
																							id="shopNumberUpdate" value=""
																							placeholder="사업자등록번호">
																						<p class="help-block">사업자등록번호를 입력하세요</p>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputEmail1"
																						class="col-lg-2 col-sm-2 control-label">대표자명</label>
																					<div class="col-lg-10">
																						<input type="text" class="form-control"
																							id="shopRepUpdate" value="" placeholder="대표자명">
																						<p class="help-block">대표자명을 입력하세요</p>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputEmail1"
																						class="col-lg-2 col-sm-2 control-label">전화번호</label>
																					<div class="col-lg-10">
																						<input type="tel" class="form-control"
																							id="shopTelUpdate" value="" placeholder="전화번호">
																						<p class="help-block">전화번호를 입력하세요</p>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputEmail1"
																						class="col-lg-2 col-sm-2 control-label">이메일</label>
																					<div class="col-lg-10">
																						<input type="email" class="form-control"
																							id="shopEmailUpdate" value="" placeholder="이메일">
																						<p class="help-block">이메일을 입력하세요</p>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputEmail1"
																						class="col-lg-2 col-sm-2 control-label">SNS</label>
																					<div class="col-lg-10">
																						<input type="text" class="form-control"
																							id="shopSNSUpdate" value="" placeholder="SNS">
																						<p class="help-block">SNS를 입력하세요</p>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputEmail1"
																						class="col-lg-2 col-sm-2 control-label">주소</label>
																					<div class="col-lg-10">
																						<input type="text" class="form-control"
																							id="addressUpdate" value="" readonly="readonly">
																						<p class="help-block">
																							<input type="button" class="form-control"
																								onClick="goPopup();" value="주소 검색" /> 주소를 검색하세요
																						</p>
																					</div>
																				</div>
																				<button type="submit" class="btn btn-info">Submit</button>
																				<button type="reset" class="btn btn-info">reset</button>
																			</form>
																		</div>
																	</div>
																</section>
															</div>
															<div class="col-sm-6">
																<section class="panel">
																	<header class="panel-heading"> Horizontal
																		Forms </header>
																	<div class="panel-body">
																		<div class="position-center">
																			<select class="form-control m-bot15">
																			</select>
																		</div>
																		<table class="table slider-table">
																			<tr>
																				<td><input id="salesKpi" class="range_2"
																					type="text" name="salesKpi" value="1000;100000"
																					data-type="double" data-step="500"
																					data-postfix=" &euro;" data-from="30000"
																					data-to="90000" data-hasgrid="true" /></td>
																			</tr>
																			<tr>
																				<td><input id="earnKpi" class="range_2"
																					type="text" name="earnKpi" value="1000;100000"
																					data-type="double" data-step="500"
																					data-postfix=" &euro;" data-from="30000"
																					data-to="90000" data-hasgrid="true" /></td>
																			</tr>
																			<tr>
																				<td><input id="AllearnKpi" class="range_2"
																					type="text" name="AllearnKpi" value="1000;100000"
																					data-type="double" data-step="500"
																					data-postfix=" &euro;" data-from="30000"
																					data-to="90000" data-hasgrid="true" /></td>
																			</tr>
																			<tr>
																				<td class="text-center ">
																					<button class="btn btn-info btn-sm mtop10"
																						id="updateLast">Update this slider</button>
																				</td>
																			</tr>
																		</table>
																	</div>
																</section>
															</div>
														</div>
													</div>

													<div id="settings" class="tab-pane ">
														<div class="row">
															<div class="col-md-12">
																<ul class="breadcrumbs-alt">
																	<li id="견적" data-processName="견적"><a
																		class="current">견적</a></li>
																	<li id="수주" data-processName="수주"><a class="">수주</a></li>
																	<li id="출고" data-processName="출고"><a class="">출고</a></li>
																</ul>
															</div>
														</div>
														<div class="row">
															<div class="col-sm-12">
																<section class="panel">
																	<div class="panel-body">
																		<div class="adv-table">
																			<button type="button" id="processFormAddBtn"
																				class="btn btn-round btn-primary">등록</button>
																			<div class="dataTables_filter"
																				id="editable-sample_filter">
																				<label>Search: <input type="text"
																					id="searchText4" aria-controls="editable-sample"
																					class="form-control medium"></label>
																			</div>
																			<table
																				class="display table table-bordered table-striped"
																				id="dynamic-table">
																				<thead>
																					<tr>
																						<th>주문번호</th>
																						<th>거래처명</th>
																						<th>담당자</th>
																						<th>납입기한</th>
																						<th>금액</th>
																						<th>종결여부</th>
																					</tr>
																				</thead>
																				<tbody id="processListForm">

																				</tbody>
																			</table>
																		</div>
																	</div>
																</section>
															</div>
														</div>
													</div>
												</div>
											</div>
										</section>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<form class="cmxform form-horizontal" id="supplyForm" method="POST">
					<div id="processFormDiv" class="row" style="display: none">
						<div class="col-sm-12">
							<section class="panel">
								<header class="panel-heading">
									Advanced Form validations <span class="tools pull-right">
										<a class="fa fa-chevron-up processForm" href="javascript:;"></a>
									</span>
								</header>
								<div class="panel-body">
									<!-- Modal -->
									<div class="modal fade" id="myModal1" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Datepicker in Modal</h4>
												</div>
												<div class="modal-body"></div>
												<div class="modal-footer">
													<button data-dismiss="modal" class="btn btn-default"
														type="button">Close</button>
													<button id="button1" type="button" class="btn btn-primary">OK</button>
												</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="myModal2" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Datepicker in Modal</h4>
												</div>
												<div class="modal-body"></div>
												<div class="modal-footer">
													<button data-dismiss="modal" class="btn btn-default"
														type="button">Close</button>
													<button type="button" id="button2" class="btn btn-primary">OK</button>
												</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="myModal3" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Datepicker in Modal</h4>
												</div>
												<div class="modal-body"></div>
												<div class="modal-footer">
													<button data-dismiss="modal" class="btn btn-default"
														type="button">Close</button>
													<button type="button" id="button3" class="btn btn-primary">OK</button>
												</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="myModal4" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Datepicker in Modal</h4>
												</div>
												<div class="modal-body"></div>
												<div class="modal-footer">
													<button data-dismiss="modal" class="btn btn-default"
														type="button">Close</button>
													<button type="button" id="button3" class="btn btn-primary">OK</button>
												</div>
											</div>
										</div>
									</div>
									<!-- modal -->
									<div class="form">
										<div class="form-group ">
											<label for="shopName" class="control-label col-lg-3">거래처</label>
											<div class="col-lg-6">
												<input class=" form-control" id="shopName" name="shopName"
													type="text" readonly="readonly" style="width: 236px;" />
											</div>
										</div>
										<div class="form-group ">
											<label for="staffName" class="control-label col-lg-3">담당자</label>
											<div class="col-lg-6">
												<a data-toggle="modal" href="#myModal1"><input
													class=" form-control" id="staffName" name="staffName"
													type="text" readonly="readonly" style="width: 236px;" /></a>
											</div>
										</div>
										<div class="form-group ">
											<label for="warehouseName" class="control-label col-lg-3">출하창고</label>
											<div class="col-lg-6">
												<a data-toggle="modal" href="#myModal2"><input
													class="form-control " id="warehouseName"
													name="warehouseName" readonly="readonly" type="text"
													style="width: 236px;" /></a>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3">유효기간</label>
											<div class="col-lg-6 col-xs-11">
												<input id="processTerm" name="processTerm"
													class="form-control form-control-inline input-medium default-date-picker"
													size="16" type="text" readonly="readonly" value=""
													style="width: 236px;" />
											</div>
										</div>
										<div class="form-group ">
											<label class="control-label col-md-3">납품종료일</label>
											<div class="col-lg-6 col-xs-11">
												<input id="processEndDate" name="processEndDate"
													class="form-control form-control-inline input-medium default-date-picker"
													size="16" type="text" readonly="readonly" value=""
													style="width: 236px;" />
											</div>
										</div>
									</div>
									<div class="dataTables_filter" id="editable-sample_filter">
										<a data-toggle="modal" href="#myModal3"><button
												type="button" id="productSelectbutton" class="btn btn-info ">
												<i class="fa fa-refresh"></i> 상품검색
											</button></a>
									</div>
									<table class="table  table-hover general-table">
										<thead>
											<tr>
												<th>상품코드</th>
												<th class="hidden-phone">상품명</th>
												<th>단위</th>
												<th>수량</th>
												<th>단가</th>
												<th>입고액</th>
											</tr>
										</thead>
										<tbody id="supplyProductTable">
										</tbody>
									</table>
									<div class="form-group">
										<div class="col-lg-offset-3 col-lg-6">
											<button id="processSaveBtn" type="button"
												class="btn btn-info popovers">Save</button>
											<button class="btn btn-default" type="button">Cancel</button>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</form>
			</section>
		</section>

		<!--main content end-->

	</section>
	<script type="text/javascript">
		function goPopup() {
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("jusoPopuo", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");

			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
			//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		}
		function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
				roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
				bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm,
				rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
			document.form.roadAddrPart1.value = roadAddrPart1;
			document.form.roadAddrPart2.value = roadAddrPart2;
			document.form.addrDetail.value = addrDetail;
			document.form.zipNo.value = zipNo;
		}

		var shopCode;
		var processName;

		function processViewFunctionSuccess(resp) {
			var salAmount = 0;
			var processLocationText = '';
			for (var i = 0; i < resp.length; i++) {
				processLocationText += '<a data-toggle="modal" href="#myModal4"><tr id="'+resp[i].processCode+'">';
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

			$('#processListForm').html(processLocationText);
			$('#processListForm tr').on('click', nowEstimateSearchFunction);

		}

		//settings 버튼 눌렀을 때 이벤트
		function processViewFunction() {

			var shopCodeText = $('.settings').attr('data-shopCode');
			alert(shopCodeText);
			var processText = $('.current').parents().attr('data-processName');
			var searchText = $('#searchText4').val();
			var processCode = {
				"shopCode" : shopCodeText,
				"processName" : processText,
				"searchText" : searchText
			};

			$.ajax({
				url : 'processViewFunction',
				method : 'get',
				data : processCode,
				dataType : 'json',
				success : processViewFunctionSuccess,
				error : function() {
					alert('에러입니다.');
				}
			});
		}

		function contactsViewFunctionSuccess(resp) {
			var contactsLocationText = '<p>Postal Address<br>'
					+ resp.addressPost + '</p>' + '<p>' + resp.addressDetail1
					+ ' ' + resp.addressDetail2 + ' ' + ' '
					+ resp.addressDetail3;
			if (resp.addressDetail4 != '') {
				contactsLocationText += resp.addressDetail4;
			}
			contactsLocationText += '</p>'

			$('.location-info').html(contactsLocationText);

			var contactsContactText = '<p>Phone : <br>' + resp.shopTel
					+ '<br></p>' + '<p>Email :' + resp.shopEmail + '</br></p>'
					+ '<p>SNS : ' + resp.shopSNS + '</p>'
			$('.contact-info').html(contactsContactText);
		}

		// contacts메뉴 클릭시 이벤트
		function contactsViewFunction() {
			var shopCodeText = $(this).attr('data-shopCode');
			alert(shopCodeText);
			var shopCode = {
				"shopCode" : shopCodeText
			};

			$.ajax({
				url : 'contactsViewFunction',
				method : 'get',
				data : shopCode,
				dataType : 'json',
				success : contactsViewFunctionSuccess,
				error : function() {
					alert('에러입니다.');
				}
			});
		}

		function shopDetailFunction(resp) {
			var shopDetailHearderText = '<h1 id ="shopNameText" data-shopName = "'+resp[0][0].shopName+'">'
					+ resp[0][0].shopName
					+ '</h1>'
					+ '<span class="text-muted">대형마트</span></br>'
					+ '<p>대표 : '
					+ resp[0][0].shopRep
					+ '</p></br>'
					+ '<p>거래상황 : '
					+ resp[0][0].processState
					+ '</p></br>'
					+ '<p>거래기간 : '
					+ resp[1]
					+ '</p></br>'
					+ '<p>최근거래 : '
					+ resp[3]
					+ ' '
					+ resp[2] + '</p></br>';
			$('.profile-desk').html(shopDetailHearderText);

			var shopDetailEarnText = '<h1>' + resp[4] + '</h1>'
					+ '<p>This Month Sales</p>' + '<h1>' + resp[5] + '</h1>'
					+ '<p>This Monthh Earn</p>'
			$('.profile-statistics').html(shopDetailEarnText);
		}

		// 마커 클릭시 이벤트
		function chan() {
			$('div>button[data-type = "marker"]').on(
					'click',
					function() {
						var el = $('.panel .tools .menuForm').parents(".panel")
								.children(".panel-body");
						if ($('.panel .tools .menuForm').hasClass(
								"fa-chevron-up")) {
							$('.panel .tools .menuForm').removeClass(
									"fa-chevron-up")
									.addClass("fa-chevron-down");
							el.slideDown(200);
						}
						shopCode = $(this).attr("data-source");
						$('.overview').attr('data-shopCode', shopCode);
						$('.job-history').attr('data-shopCode', shopCode);
						$('.contacts').attr('data-shopCode', shopCode);
						$('.settings').attr('data-shopCode', shopCode);
						var shopCodeJson = {
							"shopCode" : shopCode
						};
						$.ajax({
							url : 'shopDetailSelect',
							method : 'get',
							data : shopCodeJson,
							dataType : 'json',
							success : shopDetailFunction,
							error : function() {
								alert('에러');
							}
						});
					});
		}

		// 디비에서 견적서 프로세스 문서 정보를 가져오는 메소드
		function nowEstimateSearchFunction() {
			var processCode = $(this).attr('id');
			alert(processCode);
			var estimateJson = {
				"processCode" : processCode
			};
			$.ajax({
				url : 'popupNowEstimate',
				method : 'POST',
				data : estimateJson,
				dataType : 'json',
				success : NowEstimateBootString,
				error : function() {
					alert('에러입니다.');
				}
			});
		}

		// 디비에서 전체 프로세스 문서 정보를 가져오는 메소드
		function allEstimateViewFunction() {
			var estimateJson = {
				"shopCode" : shopCode,
				"processName" : processName
			};
			$.ajax({
				url : 'popupAllEstimateView',
				method : 'POST',
				data : estimateJson,
				dataType : 'json',
				success : allEstimateViewBootString,
				error : function() {
					alert('에러입니다.');
				}
			});
		}

		function estimateAddFunction() {
			$('#processFormDiv').removeAttr('style');
			var el = $('.panel .tools .processForm').parents(".panel")
					.children(".panel-body");
			if ($('.panel .tools .processForm').hasClass("fa-chevron-up")) {
				$('.panel .tools .processForm').removeClass("fa-chevron-up")
						.addClass("fa-chevron-down");
				el.slideDown(200);
			}
			var shopText = $('#shopNameText').attr('data-shopName');
			alert(shopText);
			$('#shopName').val(shopText);
			processViewFunction;
		}

		//process 저장하는 메소드
		function processAddFunction() {
			var staffName = $('#staffName').val();
			var warehouseName = $('#warehouseName').val();
			var processTerm = $('#processTerm').val();
			var processEndDate = $('#processEndDate').val();
			var processName = $('.current').parents().attr('data-processName');
			var productCode = new Array();
			var supplyVolume = new Array();
			var supplyPrice = new Array();
			$("input[name=productCode]").each(
					function(idx) {
						var value = $(this).val();
						var eqValue = $(
								"input[name=productCode]:eq(" + idx + ")")
								.val();
						productCode.push(eqValue);
					});
			$("input[name=supplyVolume]").each(
					function(idx) {
						var value = $(this).val();
						var eqValue = $(
								"input[name=supplyVolume]:eq(" + idx + ")")
								.val();
						supplyVolume.push(eqValue);
					});
			$("input[name=supplyPrice]").each(
					function(idx) {
						var value = $(this).val();
						var eqValue = $(
								"input[name=supplyPrice]:eq(" + idx + ")")
								.val();
						supplyPrice.push(eqValue);
					});
			var processDate = {
				"staffName" : staffName,
				"warehouseName" : warehouseName,
				"processTerm" : processTerm,
				"processEndDate" : processEndDate,
				"shopCode" : shopCode,
				"processName" : processName,
				"productCode" : productCode,
				"supplyVolume" : supplyVolume,
				"supplyPrice" : supplyPrice
			}
			$.ajaxSettings.traditional = true;
			$.ajax({
				url : 'processAdd',
				method : 'post',
				data : processDate,
				dataType : 'text',
				success : function(resp) {
					alert(resp);
				},
				error : function() {
					alert('에러');
				}
			});
		}

		function kpiSelectFunction() {
			$('.monthMenu>li').on('click', function() {
				var timeCode = $(this).attr('id');
				var shopCode = $('.settings').attr('data-shopCode');
				$.ajax({
					url : 'kpiSelectFunction',
					method : 'post',
					data : {
						'timeCode' : timeCode,
						'shopCode' : shopCode
					},
					dataType : 'json',
					success : kpiSelectTxtFunction,
					error : function() {
						alert('에러다');
					}
				});
			});
		}

		var chart;
		var chartData;

		function zoomChart() {
			chart.zoomToIndexes(chart.dataProvider.length - 20,
					chart.dataProvider.length - 1);
		}

		function overviewTextFunction(resp) {
			var yearBtn = '';
			$.each(resp.yearList, function(index, item) {
				yearBtn += '<li class='+item+'><a>' + item + '</a></li>'
			});
			$('.yearMenu').html(yearBtn);

			$('.yearMenu li')
					.on(
							'click',
							function() {
								var date = $(this).attr('class');
								var shopCode = $('.settings').attr(
										'data-shopCode');
								$
										.ajax({
											url : 'chartSelect',
											method : 'post',
											data : {
												'date' : date,
												"shopCode" : shopCode
											},
											dataType : 'json',
											success : function(resp) {
												var subChartData = [];
												var firstDate = new Date();
												var year = firstDate.getYear() - 100;
												firstDate.setDate(firstDate
														.getDay()
														- firstDate.getDay());
												var earnList = resp.earnList[0];
												var salesList = resp.salesList[0];
												var views = 8700;

												for (var i = 1; i < resp.earnList.length; i++) {
													var newDate = new Date(
															firstDate);
													newDate.setDate(newDate
															.getDate()
															+ i);

													earnList = resp.earnList[i];
													salesList = resp.salesList[i];
													views += Math.round((Math
															.random() < 0.5 ? 1
															: -1)
															* Math.random()
															* 10);

													subChartData.push({
														date : newDate,
														earnList : earnList,
														salesList : salesList,
														views : views
													});
												}

												chartData = subChartData
												alert(chartData);
												chart = AmCharts
														.makeChart(
																"chartdiv",
																{
																	"type" : "serial",
																	"theme" : "none",
																	"legend" : {
																		"useGraphSettings" : true
																	},
																	"dataProvider" : chartData,
																	"synchronizeGrid" : true,
																	"valueAxes" : [
																			{
																				"id" : "v1",
																				"axisColor" : "#FF6600",
																				"axisThickness" : 2,
																				"axisAlpha" : 1,
																				"position" : "left"
																			},
																			{
																				"id" : "v2",
																				"axisColor" : "#FCD202",
																				"axisThickness" : 2,
																				"axisAlpha" : 1,
																				"position" : "right"
																			},
																			{
																				"id" : "v3",
																				"axisColor" : "#B0DE09",
																				"axisThickness" : 2,
																				"gridAlpha" : 0,
																				"offset" : 50,
																				"axisAlpha" : 1,
																				"position" : "left"
																			} ],
																	"graphs" : [
																			{
																				"valueAxis" : "v1",
																				"lineColor" : "#FF6600",
																				"bullet" : "round",
																				"bulletBorderThickness" : 1,
																				"hideBulletsCount" : 30,
																				"title" : "red line",
																				"valueField" : "earnList",
																				"fillAlphas" : 0
																			},
																			{
																				"valueAxis" : "v2",
																				"lineColor" : "#FCD202",
																				"bullet" : "square",
																				"bulletBorderThickness" : 1,
																				"hideBulletsCount" : 30,
																				"title" : "yellow line",
																				"valueField" : "salesList",
																				"fillAlphas" : 0
																			},
																			{
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
												chart.addListener(
														"dataUpdated",
														zoomChart);
												zoomChart();

												$
														.ajax({
															url : 'kpiSelect',
															method : 'post',
															data : {
																'date' : date,
																"shopCode" : shopCode
															},
															dataType : 'json',
															success : function(
																	respp) {
																var sales = respp.salse.kpiSet[0].kpiAmount;
																var earn = respp.earn.kpiSet[0].kpiAmount;
																var allEarn = respp.allEarn.kpiSet[0].kpiAmount;
																var sumSales = respp.sumSales;
																var sumEarn = respp.sumEarn;
																var salesPercent = sumSales
																		/ sales
																		* 100;
																var earnPercent = sumEarn
																		/ earn
																		* 100;
																kpisalesPercentBarText = '<div class="col-md-5">판매액</div>'
																		+ '<div class="col-md-5">'
																		+ '<div class="progress  ">'
																		+ '<div style="width:'
																		+ salesPercent
																		+ '%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40"'
																		+ 'role="progressbar" class="progress-bar progress-bar-danger">'
																		+ '<span class="sr-only">'
																		+ salesPercent
																		+ '% Complete (success)</span>'
																		+ '</div></div></div><div class="col-md-2">'
																		+ salesPercent
																		+ '%</div>'

																$('.salesClass')
																		.html(
																				kpisalesPercentBarText);

																kpiEarnPercentBarText = '<div class="col-md-5">매출액</div>'
																		+ '<div class="col-md-5">'
																		+ '<div class="progress  ">'
																		+ '<div style="width:'
																		+ earnPercent
																		+ '%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40"'
																		+ 'role="progressbar" class="progress-bar progress-bar-danger">'
																		+ '<span class="sr-only">'
																		+ earnPercent
																		+ '% Complete (success)</span>'
																		+ '</div></div></div><div class="col-md-2">'
																		+ earnPercent
																		+ '%</div>'

																$('.earnClass')
																		.html(
																				kpiEarnPercentBarText);

																kpiSalesText = '<strong>'
																		+ sumSales
																		+ '</strong>';
																$('.salesText')
																		.html(
																				kpiSalesText);

																kpiEarnText = '<strong>'
																		+ sumEarn
																		+ '</strong>';
																$('.earnText')
																		.html(
																				kpiEarnText);
															}
														});
											},
											error : function() {
												alert('에러입니다.');
											}
										});
							});
		}
		function overviewIntiFunction() {
			var shopCode = $('.settings').attr('data-shopCode');
			$.ajax({
				url : 'overviewIntiFunction',
				method : 'post',
				data : {
					'shopCode' : shopCode
				},
				dataType : 'json',
				success : overviewTextFunction,
				error : function() {
					alert('チョイジンシツ바보');
				}
			});
		}

		function updateViewFunction() {
			var shopCode = $('.settings').attr('data-shopCode');
			$.ajax({
				url : "updateViewFunction",
				method : "post",
				data : {
					'shopCode' : shopCode
				},
				dataType : 'json',
				success : function(resp) {
					$('#shopNameUpdate').val(resp.shopName);
					$('#shopNumberUpdate').val(resp.shopNumber);
					$('#shopRepUpdate').val(resp.shopRep);
					$('#shopTelUpdate').val(resp.shopTel);
					$('#shopEmailUpdate').val(resp.shopEmail);
					$('#shopSNSUpdate').val(resp.shopSNS);
					$('#addressUpdate').val();
					
					var d = new Date();
					var year = d.getFullYear();
					var month = d.getMonth()+2;
					var bot15Text = '';
					for(var i = 0; i<12; i++){
						if(month<=12){
							bot15Text += '<option>'+year+'-'+(month)+'</option>';
							month = month+1;
						}else{
							year = year+1;
							month = 1;
							i = i-1;
						}
					}

					$('.m-bot15').html(bot15Text);
				},
				error : function() {
					alert('에러야');
				}
			});
		}
		
		function kpiSettingFunction(){
			var shopCode = $('.settings').attr('data-shopCode');
			var salesKpi = $('#salesKpi').val();
			var earnKpi = $('#earnKpi').val();
			var AllearnKpi = $('#AllearnKpi').val();
			var salesEnd = salesKpi.split(';');
			var earnKpiEnd = earnKpi.split(';');
			var AllearnKpiEnd = AllearnKpi.split(';');
			alert(salesEnd[1]);
			var kpiJson = new Array;
			kpiJson.push(salesEnd[1]);
			kpiJson.push(earnKpiEnd[1]);
			kpiJson.push(AllearnKpiEnd[1]);
			alert(kpiJson);
			$.ajax({
				url : 'kpiSettingFunction'
				, method : 'post'
				, data : {'shopCode' : shopCode, 'kpiJson' : kpiJson}
				, success : function(){
					alert('등록되었습니다.');
				}
			});
		}
	</script>
	<!-- Placed js at the end of the document so the pages load faster -->
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate.js"></script>
	<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>

	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
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

	<script src="js/skycons/skycons.js"></script>
	<script src="js/jquery.scrollTo/jquery.scrollTo.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
	<script src="js/gauge/gauge.js"></script>
	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>
	<script src="js/toggle-init.js"></script>
	<script src="js/fullcalendar/fullcalendar.min.js"></script>
	<script src="js/advanced-form.js?version=1"></script>
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

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--script for this page-->
	<script
		src="js/ion.rangeSlider-1.8.2/js/ion-rangeSlider/ion.rangeSlider.min.js"
		type="text/javascript"></script>
	<script src="js/external-dragging-calendar.js"></script>
	<script src="js/table-editable.js"></script>
	<script src="js/bootstrap-bootpopup/bootpopup.js"></script>
	<!-- END JAVASCRIPTS -->
</body>
</html>