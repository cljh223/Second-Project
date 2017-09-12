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
</style>
<script language="javascript"
	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=8eea4abd-531c-3ca0-b3de-daa4dcc5878e"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
	var map, markerLayer, processName;

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

	function initialize() {
		map = new Tmap.Map({
			div : "map",
			width : '100%',
			height : '400px'
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
		$('#staffName').on('click', staffBootFunction);
		$('#warehouseName').on('click', warehouseBootFunction);
		$('#productSelectbutton').on('click', productBootFunction);
		$('.panel .tools .fa-chevron-up').parents(".panel").children(
				".panel-body").slideUp(200);
		$('#estimateBtn').on('click', function() {
			processName = '견적';
		});
		$('#contractBtn').on('click', function() {
			processName = '수주';
		});
		$('#releaseBtn').on('click', function() {
			processName = '출고';
		});
		$('.estimateAdd').on('click', estimateAddFunction);
		$('.contractAdd').on('click', estimateAddFunction);
		$('.releaseAdd').on('click', estimateAddFunction);
		$('#processSaveBtn').on('click', processAddFunction);
		$('.nowEstimateSearch').on('click', nowEstimateSearchFunction);
		$('.nowContractSearch').on('click', nowEstimateSearchFunction);
		$('.nowReleaseSearch').on('click', nowEstimateSearchFunction);
		$('.allEstimateView').on('click', allEstimateViewFunction);
		$('.allContractView').on('click', allEstimateViewFunction);
		$('.allReleaseView').on('click', allEstimateViewFunction);

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
								<li><a href="language_switch.html">Language Switch Bar</a></li>
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
					<div class="col-md-6">
						<section class="panel">
							<header class="panel-heading">
								Line Chart <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="chart">
									<div id="chart" style="position: relative;"></div>
								</div>
							</div>
						</section>
					</div>
					<div class="col-md-3">

						<section class="panel">
							<div class="panel-body">
								<div class="top-stats-panel">
									<h4 class="widget-h">Top Advertise</h4>
									<div class="sm-pie"></div>
								</div>
							</div>
						</section>
					</div>
					<div class="col-md-3">
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
					<div class="col-md-8" style="width: 100%">
						<section class="panel" style="height: 450px">
							<header class="panel-heading">
								Earning Graph <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a>
								</span>
							</header>
							<div class="panel-body" id="map" style="height: 400px"></div>
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

								<!-- modal -->
								<div class="modal fade" id="myModal4" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
												'<a href="invoice_print.html" target="_blank"
													class="btn btn-primary btn-lg"><i class="fa fa-print"></i>
													Print </a>'
											</div>
										</div>
									</div>
								</div>
								<div class="modal fade" id="myModal5" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
												'<a href="invoice_print.html" target="_blank"
													class="btn btn-primary btn-lg"><i class="fa fa-print"></i>
													Print </a>'
											</div>
										</div>
									</div>
								</div>
								<!-- modal end -->

								<div class="btn-group">
									<button data-toggle="dropdown" id="estimateBtn"
										class="btn btn-default dropdown-toggle" type="button">
										견적 <span class="caret"></span>
									</button>
									<ul role="menu" class="dropdown-menu">
										<li class="estimateAdd"><a>견적서 작성</a></li>
										<li class="nowEstimateSearch"><a data-toggle="modal"
											href="#myModal4">현재 견적서 조회</a></li>
										<li class="allEstimateView"><a data-toggle="modal"
											href="#myModal5">전체 견적서 보기</a></li>
									</ul>
								</div>
								<!-- /btn-group -->

								<div class="btn-group">
									<button data-toggle="dropdown" id="contractBtn"
										class="btn btn-default dropdown-toggle" type="button">
										수주 <span class="caret"></span>
									</button>
									<ul role="menu" class="dropdown-menu">
										<li class="contractAdd"><a>수주서 작성</a></li>
										<li class="nowContractSearch"><a data-toggle="modal"
											href="#myModal4">현재 수주서 조회</a></li>
										<li class="allContractView "><a data-toggle="modal"
											href="#myModal5">전체 수주서 보기</a></li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="btn-group">
									<button data-toggle="dropdown" id="releaseBtn"
										class="btn btn-default dropdown-toggle" type="button">
										출고 <span class="caret"></span>
									</button>
									<ul role="menu" class="dropdown-menu">
										<li class="releaseAdd"><a>출고서 작성</a></li>
										<li class="nowReleaseSearch"><a data-toggle="modal"
											href="#myModal4">현재 출고서 조회</a></li>
										<li class="allReleaseView"><a data-toggle="modal"
											href="#myModal5">전체 출고서 보기</a></li>
									</ul>
								</div>
								<!-- /btn-group -->
							</div>
						</section>

					</div>
				</div>

				<form class="cmxform form-horizontal" id="supplyForm" method="POST">
					<div class="row">
						<div class="col-lg-4">
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
								</div>
							</section>
						</div>

						<div class="col-lg-8">
							<section class="panel">
								<header class="panel-heading">
									General Table <span class="tools pull-right"> <a
										href="javascript:;" class="fa fa-chevron-up processForm"></a>
									</span>
								</header>
								<div class="panel-body">
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
	<script type="text/javascript">
		var shopCode;
		var processName;

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
						var shopCodeJson = {
							"shopCode" : shopCode
						};
						$.ajax({
							url : 'shopNameSelect',
							method : 'get',
							data : shopCodeJson,
							dataType : 'text',
							success : function(resp) {
								$('#shopName').val(resp);
							},
							error : function() {
								alert('에러');
							}
						});
					});
		}

		// 디비에서 견적서 프로세스 문서 정보를 가져오는 메소드
		function nowEstimateSearchFunction() {
			var estimateJson = {
				"shopCode" : shopCode,
				"processName" : processName
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

			var el = $('.panel .tools .processForm').parents(".panel")
					.children(".panel-body");
			if ($('.panel .tools .processForm').hasClass("fa-chevron-up")) {
				$('.panel .tools .processForm').removeClass("fa-chevron-up")
						.addClass("fa-chevron-down");
				el.slideDown(200);
			}
		}

		function processAddFunction() {
			var staffName = $('#staffName').val();
			var warehouseName = $('#warehouseName').val();
			var processTerm = $('#processTerm').val();
			var processEndDate = $('#processEndDate').val();
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
	<script src="js/table-editable.js"></script>
	<script src="js/bootstrap-bootpopup/bootpopup.js"></script>
	<!-- END JAVASCRIPTS -->

</body>
</html>