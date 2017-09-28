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

<title>영업 메인 페이지</title>

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

#chartdiv1 {
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

<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
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
						'<img alt="" src="images/sales/출고마커.png">', size,
						offset);
			} else {
				icon = new Tmap.IconHtml(
						'<img alt="" src="images/sales/출고마커.png" data-type = "marker" data-source="'+shopCodeList[i]+'" style="width: 25px;height: 34px;position: relative;"></a>',
						size, offset);
			}
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
			staffString += '<td>' + resp[i].staff_tel + '</td>';
			staffString += '<td>' + resp[i].staff_email + '</td>';
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
			productString += resp[i].productSalesPrice;
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
				+ '<th>창고종류</th></tr>'
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
				+ '<th>전화번호</th><th>이메일</th></tr></thead>'
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
				+ '<th>입고단가</th>' + '<th>출고단가</th>' + '<th>소비자가</th>' + '</tr>'
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
				+ '<div class="col-md-8 col-sm-7">'
				+ getTimeStamp(resp.processInsertDate) + '</div>' + '</div>'
				+ '<br>' + '<div class="row">'
				+ '<div class="col-md-4 col-sm-5 inv-label">마감날짜</div>'
				+ '<div class="col-md-8 col-sm-7">'
				+ getTimeStamp(resp.processTerm) + '</div>' + '</div>' + '<br>'
				+ '<div class="row">' + '<div class="col-md-12 inv-label">'
				+ '<h3>납품종료일 #</h3>' + '</div>' + '<div class="col-md-12">'
				+ '<h4 class="amnt-value">' + getTimeStamp(resp.processEndDate)
				+ '</h4>' + '</div>' + '</div>' + '</div>' + '</div>'
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
		$
				.each(
						resp,
						function(index, item) {
							allEstimateViewText += '<a data-toggle="modal" href="#myModal5"><tr>'
									+ '<td>'
									+ index
									+ '</td>'
									+ '<td>'
									+ '<h4>'
									+ item.shopName
									+ '</h4></td>'
									+ '<td class="text-center">'
									+ getTimeStamp(item.processInsertDate)
									+ '</td>'
									+ '<td class="text-center">'
									+ getTimeStamp(item.processEndDate)
									+ '</td>'
									+ '<td class="text-center">'
									+ item.processState + '</td>' + '</tr></a>'
						});
		+'</tbody>' + '</table>' + '</div>' + '</div>' + '</section>'
				+ '</div>' + '</div>'

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
		$('#myModal3 tr')
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

							var supplyTableString = '<tr>';
							supplyTableString += '<td>';
							supplyTableString += '<input class=" form-control productCode" name="productCode" type="text" value="'+resp[index].productCode+'" readonly = "true" style="width: 100px;"/>';
							supplyTableString += '</td>'
							supplyTableString += '<td class="hidden-phone">'
							supplyTableString += '<input class=" form-control productName" name="productName" type="text" value="'+resp[index].productName+'" readonly = "true" style="width: 100px;"/>';
							supplyTableString += '</td>'
							supplyTableString += '<td class="hidden-phone">'
							supplyTableString += '<input class=" form-control productUnit" name="productUnit" type="text" value="'
									+ resp[index].productUnit
									+ '" style="width: 100px;"/>';
							supplyTableString += '</td>';
							supplyTableString += '<td>'
							supplyTableString += '<input class=" form-control supplyVolume" name="supplyVolume" type="text" value="" style="width: 100px;"/>';
							supplyTableString += '</td>';
							supplyTableString += '<td>'
							supplyTableString += '<input class=" form-control supplyPrice" name="supplyPrice" type="text" value="'
									+ resp[index].productUnitPrice
									+ '" style="width: 100px;"/>';
							supplyTableString += '</td>';
							supplyTableString += '<td>'
							supplyTableString += '<input class=" form-control productUnitPrice" name="productUnitPrice" type="text" value="'
									+ resp[index].productSalesPrice
									+ '" style="width: 100px;"/>';
							supplyTableString += '</td>';
							supplyTableString += '</tr>';
							$('#supplyProductTable').append(supplyTableString);
							$('#myModal3').trigger("click");

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

	function fnMove(seq) {
		var offset = $(seq).offset();
		$('html, body').animate({
			scrollTop : offset.top
		}, 400);
	}

	$(function() {
		//지도포함 초기화면 생성
		initialize();
		//overview클릭시 작동
		$('.overview').on('click', overviewIntiFunction);
		//settings클릭시 작동
		$('.settings').on('click', processViewFunction);
		//job-history 클릭시 작동
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
		$('#shopSearchFormBtn').on('click', shopSearchFormFunction);
		$('.wdgt-value')
				.on(
						'click',
						function() {
							var shopName = $('#shopNameText').attr(
									'data-shopName');
							var date = $('.m-bot16').val();
							var gubun = $(this).attr('id');
							var tempGubun = '';
							if (gubun == '0') {
								tempGubun = '월간 판매량';
							} else if (gubun == '1') {
								tempGubun = '월간 매출액';
							} else if (gubun == '2') {
								tempGubun = '월간 매출 총 이익';
							}

							var kpiSettingText = '<div class="col-sm-12"><section class="panel"><div class="panel-body">'
									+ '<div class="position-center" style="idth: 500px;width: 500px;"><form class="form-horizontal" role="form"><div class="form-group">'
									+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">매장명</label>'
									+ '<div class="col-lg-10"><input type="text" class="form-control" id="unShopNameUpdate" value="'+shopName+'" placeholder="매장명">'
									+ '</div></div><div class="form-group">'
									+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">날짜</label>'
									+ '<div class="col-lg-10"><input type="text" class="form-control" id="unDateUpdate" value="'+date+'" placeholder="날짜">'
									+ '</div></div>	<div class="form-group">'
									+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">구분</label>'
									+ '<div class="col-lg-10"><input type="text" class="form-control" id="unDivisionUpdate" value="'+tempGubun+'" placeholder="구분">'
									+ '</div></div><div class="form-group">'
									+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">목표액수</label>'
									+ '<div class="col-lg-10"><input type="tel" class="form-control" id="unEarnUpdate" value="" placeholder="목표액수">'
									+ '<p class="help-block">목표액수를 입력하세요</p></div></div>'
									+ '</form></div></div></section></div>';

							$('div#myModal5 .modal-body').html(kpiSettingText);
							$('#button5').unbind('click');
							$('#button5').on('click', function() {
								var unEarnUpdate = $('#unEarnUpdate').val();
								$.ajax({
									url : 'kpiAdd',
									method : 'post',
									data : {
										'shopCode' : shopCode,
										'date' : date,
										'gubun' : gubun,
										'unEarnUpdate' : unEarnUpdate
									},
									dataType : 'json',
									success : function(resp) {
										alert('등록했습니다.');
										overviewIntiFunction();
										$('#myModal5').trigger("click");
									},
									error : function() {
										alert('에라데스');
									}
								})
							});
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
				<div class="row" style="margin-bottom: 20px;">
					<div class="col-sm-11">
						<input id="searchKeyword" type="text"
							placeholder="등록을 원하는 매장을 검색하세요" class="form-control"
							style="width: 1566; width: 1576px;">
					</div>
					<div class="col-sm-1">
						<a href="#shopSearchForm2">
							<button id="shopSearchFormBtn" type="button"
								class="btn btn-danger" style="margin-left: 40px;">Sign
								in</button>
						</a>
					</div>
				</div>
				<div class="row" id="shopSearchForm2" style="display: none">
					<div class="col-md-12">
						<section class="panel">
							<header class="panel-heading">
								Earning Graph <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a>
								</span>
							</header>
							<div class="modal fade" id="myModal6" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
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
											<button type="button" id="button6" class="btn btn-primary">OK</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel-body" id="shopSearchFormTable"></div>
						</section>
					</div>
				</div>
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

				<div class="row" style="margin-top: 20px;">
					<div class="col-lg-12">
						<section class="panel" id="gihonDataForm">
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
													<div class="profile-desk"></div>
												</div>
												<div class="col-md-3">
													<div class="prf-contacts">
														<h2>
															<span><i class="fa fa-map-marker"></i></span> location
														</h2>
														<div class="location-info"></div>
													</div>
												</div>
												<div class="col-md-3">
													<div class="prf-contacts">
														<h2>
															<span><i class="fa fa-phone"></i></span> contacts
														</h2>
														<div class="location-info contact-info"></div>
													</div>
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
													<div id="overview" class="tab-pane">
														<div class="row">
															<div class="col-lg-12">
																<div class="btn-group" style="width: 300px;">
																	<div class="position-center"
																		style="margin-left: 0px; margin-bottom: 20px;">
																		<select class="form-control m-bot16">
																		</select>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<!-- modal -->
															<div class="modal fade" id="myModal5" tabindex="-1"
																role="dialog" aria-labelledby="myModalLabel"
																aria-hidden="true">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal" aria-hidden="true">&times;</button>
																			<h4 class="modal-title">Datepicker in Modal</h4>
																		</div>
																		<div class="modal-body"></div>
																		<div class="modal-footer">
																			<button data-dismiss="modal" class="btn btn-default"
																				type="button">Close</button>
																			<button id="button5" type="button"
																				class="btn btn-primary">OK</button>
																		</div>
																	</div>
																</div>
															</div>
															<!-- modal end -->
															<div class="col-lg-4">
																<div class="profile-nav alt">
																	<section class="panel text-center">
																		<div class="user-heading alt wdgt-row terques-bg">
																			<i class="fa fa-ticket"></i>
																		</div>
																		<div class="panel-body">
																			<a data-toggle="modal" href="#myModal5">
																				<div class="wdgt-value" id="0">
																					<h1 id="salesText" class="count">등록해주세요</h1>
																					<p>월 판매 목표량</p>
																				</div>
																			</a>
																		</div>

																	</section>
																</div>
															</div>
															<div class="col-lg-4">
																<div class="profile-nav alt">
																	<section class="panel text-center">
																		<div class="user-heading alt wdgt-row terques-bg">
																			<i class="fa fa-money"></i>
																		</div>
																		<div class="panel-body">
																			<a data-toggle="modal" href="#myModal5">
																				<div class="wdgt-value" id="1">
																					<h1 id="earnText" class="count">등록해주세요</h1>
																					<p>월 매출 목표액</p>
																				</div>
																			</a>
																		</div>

																	</section>
																</div>
															</div>
															<div class="col-lg-4">
																<div class="profile-nav alt">
																	<section class="panel text-center">
																		<div class="user-heading alt wdgt-row terques-bg">
																			<i class="fa fa-dollar"></i>
																		</div>
																		<div class="panel-body">
																			<a data-toggle="modal" href="#myModal5">
																				<div class="wdgt-value" id="2">
																					<h1 id="allEarnText" class="count">등록해주세요</h1>
																					<p>월 매출 총이익 목표액</p>
																				</div>
																			</a>
																		</div>
																	</section>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-4">
																<div class="prf-box prf-kpi">
																	<h3 class="prf-border-head">work in progress</h3>
																	<div class=" wk-progress salesClass"></div>
																	<div class=" wk-progress earnClass"></div>
																	<div class=" wk-progress allEarnClass"></div>
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
																		<div class="col-md-4 col-xs-4 allEarnText"></div>
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
															<div class="col-sm-12">
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
															<!-- modal -->
															<div class="modal fade" id="myModal4" tabindex="-1"
																role="dialog" aria-labelledby="myModalLabel"
																aria-hidden="true">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal" aria-hidden="true">&times;</button>
																			<h4 class="modal-title">Datepicker in Modal</h4>
																		</div>
																		<div class="modal-body"></div>
																		<div class="modal-footer">
																			<button data-dismiss="modal" class="btn btn-default"
																				type="button">Close</button>
																			<button type="button" id="button3"
																				class="btn btn-primary">OK</button>
																		</div>
																	</div>
																</div>
															</div>
															<!-- modal end -->
															<div class="col-sm-12">
																<section class="panel">
																	<div class="panel-body" id="processListForm"></div>
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
												</div>
											</div>
										</div>
									</div>
									<!-- modal end -->
									<div class="form">
										<div class="col-sm-6">
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
										<div class="col-sm-6">
											<section class="panel">
												<div class="panel-body" id="mae-dynamic-table"></div>
											</section>
										</div>
									</div>
									<table class="table table-hover general-table">
										<thead>
											<tr>
												<th>상품코드</th>
												<th class="hidden-phone">상품명</th>
												<th>단위</th>
												<th>수량</th>
												<th>단가</th>
												<th>소비자가</th>
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
											<div class="dataTables_filter" id="editable-sample_filter">
												<a data-toggle="modal" href="#myModal3"><button
														type="button" id="productSelectbutton"
														class="btn btn-info ">
														<i class="fa fa-refresh"></i> 상품검색
													</button></a>
											</div>
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

		//setting 클릭시 위쪽 데이터 데이블 생성 함수
		function processViewFunctionSuccess(resp) {
			fnMove('.settings');
			var salAmount = 0;
			var processLocationText = '<div class="adv-table">'
					+ '<button type="button" id="processFormAddBtn" class="btn btn-round btn-primary">등록</button>'
					+ '<table class="dynamic-table display table table-bordered table-striped" id="dynamic-table">'
					+ '<thead><tr><th>주문번호</th><th>거래처명</th><th>담당자</th><th>납입기한</th><th>금액</th><th>종결여부</th>'
					+ '</tr></thead><tbody>'
			for (var i = 0; i < resp.length; i++) {
				alert(getTimeStamp(resp[i].processTerm));
				if (i % 2 != 0) {
					processLocationText += '<a data-toggle="modal" href="#myModal4"><tr class = "gradeX odd" id="'+resp[i].processCode+'">';
				} else {
					processLocationText += '<a data-toggle="modal" href="#myModal4"><tr class = "gradeX even" id="'+resp[i].processCode+'">';
				}
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
			processLocationText += '</tbody></table></div>'

			$('#processListForm').html(processLocationText);

			$('.dynamic-table').dataTable({
				"aaSorting" : [ [ 4, "desc" ] ]
			});

			$('#processListForm tr').on('click', nowEstimateSearchFunction);
			$('#processFormAddBtn').unbind('click');
			$('#processFormAddBtn').on('click', estimateAddFunction);

		}

		//settings 버튼 눌렀을 때 이벤트
		function processViewFunction() {

			var shopCodeText = $('.settings').attr('data-shopCode');
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
					+ resp.addressPost + '</p>' + '<p>Address<br>'
					+ resp.addressDetail1 + ' ' + resp.addressDetail2 + ' '
					+ '<br> ' + resp.addressDetail3 + ' ';
			if (resp.addressDetail4 != '') {
				contactsLocationText += resp.addressDetail4;
			}
			contactsLocationText += '</p>'

			$('.location-info').html(contactsLocationText);

			var contactsContactText = '<p>Phone  <br>' + resp.shopTel
					+ '<br></p>' + '<p>Email <br>' + resp.shopEmail
					+ '</br></p>' + '<p>SNS <br>' + resp.shopSNS + '</p>'
			$('.contact-info').html(contactsContactText);
		}

		// contacts메뉴 클릭시 이벤트
		function contactsViewFunction() {
			$('#processFormDiv').removeAttr('style');
			shopCode = $('.settings').attr('data-shopCode');
			$.ajax({
				url : 'contactsViewFunction',
				method : 'get',
				data : {
					"shopCode" : shopCode
				},
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
					+ '계약중'
					+ '</p></br>'
					+ '<p>거래기간 : '
					+ resp[1]
					+ '일</p></br>'
					+ '<p>최근거래 : '
					+ resp[3]
					+ ' '
					+ getTimeStamp(resp[2])
					+ '</p></br>';
			$('.profile-desk').html(shopDetailHearderText);

			var shopDetailEarnText = '<h1>' + AddComma(resp[4]) + '</h1>'
					+ '<p>This Month Sales</p>' + '<h1>' + AddComma(resp[5])
					+ '</h1>' + '<p>This Month Earn</p>' + '<h1>'
					+ AddComma(resp[6]) + '</h1>'
					+ '<p>This Month Gross Margin</p>'
			$('.profile-statistics').html(shopDetailEarnText);
		}

		// 마커 클릭시 이벤트
		function chan() {
			$('div>img[data-type = "marker"]').on(
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
						contactsViewFunction();
						fnMove('#gihonDataForm');
					});
		}

		// 디비에서 견적서 프로세스 문서 정보를 가져오는 메소드
		function nowEstimateSearchFunction() {
			var processCode = $(this).attr('id');
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

		//등록 버튼 눌렀을 때 메소드
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
			$('#shopName').val(shopText);

			$
					.ajax({
						url : 'processViewFunction',
						method : 'get',
						data : {
							'shopCode' : shopCode,
							'processName' : processName
						},
						dataType : 'json',
						success : function(resp) {
							var salAmount = 0;
							var processLocationText = '<div class="adv-table">'
									+ '<table class="dynamic-table display table table-bordered table-striped">'
									+ '<thead><tr><th>주문번호</th><th>거래처명</th><th>담당자</th><th>납입기한</th><th>금액</th><th>종결여부</th></tr>	</thead>'
									+ '<tbody>';
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

							$('#mae-dynamic-table').html(processLocationText);
							$('.dynamic-table').dataTable({
								"aaSorting" : [ [ 4, "desc" ] ]
							});
							$('#mae-dynamic-table tr')
									.on(
											'click',
											function() {
												var processCode = $(this).attr(
														'id');
												$
														.ajax({
															url : 'processTable',
															method : 'post',
															data : {
																'processCode' : processCode
															},
															dataType : 'json',
															success : function(
																	resp) {
																$('#staffName')
																		.val(
																				resp.staffName);
																$(
																		'#warehouseName')
																		.val(
																				resp.warehouseName);
																$(
																		'#processTerm')
																		.val(
																				resp.processTerm);
																$(
																		'#processEndDate')
																		.val(
																				resp.processEndDate);

																$
																		.ajax({
																			url : 'supplyTableSetting',
																			method : 'post',
																			data : {
																				'processCode' : processCode
																			},
																			dataType : 'json',
																			success : function(
																					rresp) {
																				$
																						.each(
																								rresp,
																								function(
																										index,
																										value) {
																									var supplyTableString = '<tr>';
																									supplyTableString += '<td>';
																									supplyTableString += '<input class=" form-control productCode" name="productCode" type="text" value="'+value.productCode+'" readonly = "true" style="width: 100px;"/>';
																									supplyTableString += '</td>'
																									supplyTableString += '<td class="hidden-phone">'
																									supplyTableString += '<input class=" form-control productName" name="productName" type="text" value="'+value.productName+'" readonly = "true" style="width: 100px;"/>';
																									supplyTableString += '</td>'
																									supplyTableString += '<td class="hidden-phone">'
																									supplyTableString += '<input class=" form-control productUnit" name="productUnit" type="text" value="'+value.productUnit+'" style="width: 100px;"/>';
																									supplyTableString += '</td>';
																									supplyTableString += '<td>'
																									supplyTableString += '<input class=" form-control supplyVolume" name="supplyVolume" type="text" value="'+value.supplyVolume+'" style="width: 100px;"/>';
																									supplyTableString += '</td>';
																									supplyTableString += '<td>'
																									supplyTableString += '<input class=" form-control supplyPrice" name="supplyPrice" type="text" value="'+value.productReleasePrice+'" style="width: 100px;"/>';
																									supplyTableString += '</td>';
																									supplyTableString += '<td>'
																									supplyTableString += '<input class=" form-control productUnitPrice" name="productUnitPrice" type="text" value="'+value.productUnitPrice+'" style="width: 100px;"/>';
																									supplyTableString += '</td>';
																									supplyTableString += '</tr>';

																									$(
																											'#supplyProductTable')
																											.html(
																													'');
																									$(
																											'#supplyProductTable')
																											.append(
																													supplyTableString);
																								});
																			}
																		})
															},
															error : function() {
																alert('에러');
															}
														});
											});
						}
					});
			fnMove('#processFormDiv');
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
					$('#processFormDiv').css('display', 'none');
					$('#shopName').val('');
					$('#staffName').val('');
					$('#warehouseName').val('');
					$('#processTerm').val('');
					$('#processEndDate').val('');
					$('#supplyProductTable').html('');
					$('#supplyForm').css('display', 'none');
					processViewFunction();
				},
				error : function() {
					alert('에러');
				}
			});
		}

		var chart;
		var chartData = new Array();

		function zoomChart() {
			chart.zoomToIndexes(chart.dataProvider.length - 20,
					chart.dataProvider.length - 1);
		}

		function kpiSettingFunction2() {
			var date = $('.m-bot16').val();
			var shopCode = $('.settings').attr('data-shopCode');
			$
					.ajax({
						url : 'chartSelect',
						method : 'post',
						async : false,
						data : {
							'date' : date,
							"shopCode" : shopCode
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
									"title" : "red line",
									"valueField" : "earnList",
									"fillAlphas" : 0
								}, {
									"valueAxis" : "v2",
									"lineColor" : "#FCD202",
									"bullet" : "square",
									"bulletBorderThickness" : 1,
									"hideBulletsCount" : 30,
									"title" : "yellow line",
									"valueField" : "salesList",
									"fillAlphas" : 0
								}, {
									"valueAxis" : "v3",
									"lineColor" : "#B0DE09",
									"bullet" : "triangleUp",
									"bulletBorderThickness" : 1,
									"hideBulletsCount" : 30,
									"title" : "green line",
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

							$
									.ajax({
										url : 'kpiSelect',
										method : 'post',
										async : false,
										data : {
											'date' : date,
											"shopCode" : shopCode
										},
										dataType : 'json',
										success : function(respp) {
											var sales = respp.salse.kpiSet[0].kpiAmount;
											var earn = respp.earn.kpiSet[0].kpiAmount;
											var allEarn = respp.allEarn.kpiSet[0].kpiAmount;
											var sumSales = respp.sumSales;
											var sumEarn = respp.sumEarn;
											var sumAllEarn = respp.sumAllEarn;
											var salesPercent = sumSales / sales
													* 100;
											var earnPercent = sumEarn / earn
													* 100;
											var allEarnPercent = sumAllEarn
													/ allEarn * 100;
											kpisalesPercentBarText = '<div class="col-md-5">판매액</div>'
													+ '<div class="col-md-5">'
													+ '<div class="progress  ">'
													+ '<div style="width:'
													+ salesPercent
													+ '%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40"'
													+ 'role="progressbar" class="progress-bar progress-bar-warning">'
													+ '<span class="sr-only">'
													+ salesPercent
													+ '% Complete (success)</span>'
													+ '</div></div></div><div class="col-md-2">'
													+ Math.ceil(salesPercent)
													+ '%</div>'

											$('.salesClass').html(
													kpisalesPercentBarText);

											kpiEarnPercentBarText = '<div class="col-md-5">매출액</div>'
													+ '<div class="col-md-5">'
													+ '<div class="progress  ">'
													+ '<div style="width:'
													+ earnPercent
													+ '%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40"'
													+ 'role="progressbar" class="progress-bar progress-bar progress-bar-danger">'
													+ '<span class="sr-only">'
													+ earnPercent
													+ '% Complete (success)</span>'
													+ '</div></div></div><div class="col-md-2">'
													+ Math.ceil(earnPercent)
													+ '%</div>'

											$('.earnClass').html(
													kpiEarnPercentBarText);

											kpiAllEarnPercentBarText = '<div class="col-md-5">매출 총 이익</div>'
													+ '<div class="col-md-5">'
													+ '<div class="progress  ">'
													+ '<div style="width:'
													+ allEarnPercent
													+ '%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40"'
													+ 'role="progressbar" class="progress-bar progress-bar-success">'
													+ '<span class="sr-only">'
													+ allEarnPercent
													+ '% Complete (success)</span>'
													+ '</div></div></div><div class="col-md-2">'
													+ Math.ceil(allEarnPercent)
													+ '%</div>'

											$('.allEarnClass').html(
													kpiAllEarnPercentBarText);

											kpiSalesText = '<strong>'
													+ AddComma(sumSales)
													+ '</strong>';
											$('.salesText').html(kpiSalesText);

											kpiEarnText = '<strong>'
													+ AddComma(sumEarn)
													+ '</strong>';
											$('.earnText').html(kpiEarnText);
											kpiEarnText = '<strong>'
													+ AddComma(sumAllEarn)
													+ '</strong>';
											$('.allEarnText').html(kpiEarnText);
										}
									});
						},
						error : function() {
							alert('에러입니다.');
						}
					});
		}
		//overview의 날짜 박스 데이터 생성 함수
		function overviewTextFunction(resp) {
			var d = new Date();
			var year = d.getFullYear();
			var month = d.getMonth() + 2;
			var date = year + '-' + month;
			var yearBtn = '';
			for (var i = 0; i < 12; i++) {
				if (month <= 12) {
					yearBtn += '<option>' + year + '-' + (month) + '</option>';
					month = month + 1;
				} else {
					year = year + 1;
					month = 1;
					i = i - 1;
				}
			}

			$('.m-bot16').html(yearBtn);

			$.ajax({
				url : 'kpiSelect',
				method : 'post',
				data : {
					"shopCode" : shopCode,
					"date" : date
				},
				dataType : 'json',
				success : function(resp) {
					var temp = '등록해주세요';
					$('#salesText').html(temp);
					$('#earnText').html(temp);
					$('#allEarnText').html(temp);
					if (sales != '') {
						var sales = resp.salse.kpiSet[0].kpiAmount;
						$('#salesText').html(AddComma(sales));
					}
					if (earn != '') {
						var earn = resp.earn.kpiSet[0].kpiAmount;
						$('#earnText').html(AddComma(earn));
					}
					if (allEarn != '') {
						var allEarn = resp.allEarn.kpiSet[0].kpiAmount;
						$('#allEarnText').html(AddComma(allEarn));
					}
				}
			});
			kpiSettingFunction2();
			$('.m-bot16').on('click', kpiSettingFunction2);
			fnMove('.overview');
		}

		//overview클릭시 작동하는 함수
		function overviewIntiFunction() {
			updateViewFunction();
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

		//job-history클릭시 작동
		function updateViewFunction() {
			fnMove('.job-history');
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
					var month = d.getMonth() + 2;
					var bot15Text = '';
					for (var i = 0; i < 12; i++) {
						if (month <= 12) {
							bot15Text += '<option>' + year + '-' + (month)
									+ '</option>';
							month = month + 1;
						} else {
							year = year + 1;
							month = 1;
							i = i - 1;
						}
					}

					$('.m-bot15').html(bot15Text);
				},
				error : function() {
					alert('에러야');
				}
			});
		}

		function kpiSettingFunction() {
			var shopCode = $('.settings').attr('data-shopCode');
			var salesKpi = $('#salesKpi').val();
			var earnKpi = $('#earnKpi').val();
			var AllearnKpi = $('#AllearnKpi').val();
			var salesEnd = salesKpi.split(';');
			var earnKpiEnd = earnKpi.split(';');
			var AllearnKpiEnd = AllearnKpi.split(';');
			var kpiJson = new Array();
			kpiJson.push(salesEnd[1]);
			kpiJson.push(earnKpiEnd[1]);
			kpiJson.push(AllearnKpiEnd[1]);
			var selector = $('.m-bot15').val();
			$.ajaxSettings.traditional = true;
			$.ajax({
				url : 'kpiSettingFunction',
				method : 'post',
				data : {
					'shopCode' : shopCode,
					'kpiJson' : kpiJson,
					'selector' : selector
				},
				success : function() {
					alert('등록되었습니다.');
				}
			});
		}

		function AddComma(data_value) {
			return Number(data_value).toLocaleString('en');
		}

		function shopSearchFormFunction() {
			var searchKeyword = $('#searchKeyword').val();
			$
					.ajax({
						url : 'poiInfo',
						method : 'get',
						data : {
							'searchKeyword' : searchKeyword
						},
						dataType : 'json',
						success : function(resp) {
							var salAmount = 0;
							var processLocationText = '<div class="row"><div class="col-sm-12">'
									+ '<section class="panel"><div class="panel-body"><div class="adv-table">'
									+ '<table id = "shopSearchTable" class="dynamic-table display table table-bordered table-striped">'
									+ '<thead><tr><th>건물명</th><th>전화번호</th><th>주소</th></tr></thead>'
									+ '<tbody>';
							$
									.each(
											resp.name,
											function(index, value) {
												processLocationText += '<tr data-lon="'+resp.lon[index]+'" data-lat = "'+resp.lat[index]+'">';
												processLocationText += '<td data-type = "name">'
												processLocationText += resp.name[index];
												processLocationText += '</td>'
												processLocationText += '<td data-type = "telNo">'
												processLocationText += resp.telNo[index];
												processLocationText += '</td>';
												processLocationText += '<td data-type = "address">'
												processLocationText += resp.upperAddrName[index]
														+ ' '
														+ resp.middleAddrName[index]
														+ ' '
														+ resp.roadName[index]
														+ resp.firstBuildNo[index]
														+ '</td>';
												+'</tr>';
											});
							processLocationText += '</tbody></table></div>';
							$('#shopSearchFormTable').html(processLocationText);

							$('#shopSearchForm2').removeAttr('style');

							$('.dynamic-table').dataTable({
								"aaSorting" : [ [ 4, "desc" ] ]
							});
							$('#shopSearchTable tr')
									.on(
											'click',
											function() {
												var name = $(this).find(
														'td[data-type="name"]')
														.html();
												var telNo = $(this)
														.find(
																'td[data-type="telNo"]')
														.html();
												var address = $(this)
														.find(
																'td[data-type="address"]')
														.html();
												var unMarkerClickText = '<div class="col-sm-12"><section class="panel"><div class="panel-body">'
														+ '<div class="position-center"><form class="form-horizontal" role="form"><div class="form-group">'
														+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">매장명</label>'
														+ '<div class="col-lg-10"><input type="text" class="form-control" id="shopNameUpdate" value="'+name+'" placeholder="매장명">'
														+ '<p class="help-block">매장명을 입력하세요</p></div></div><div class="form-group">'
														+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">매장분류</label>'
														+ '<div class="col-lg-10"><input type="text" class="form-control" id="shopDivisionUpdate" value="" placeholder="매장명">'
														+ '<p class="help-block">매장분류를 입력하세요</p></div></div><div class="form-group">'
														+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">사업자등록번호</label>'
														+ '<div class="col-lg-10"><input type="text" class="form-control" id="shopNumberUpdate" value="" placeholder="사업자등록번호">'
														+ '<p class="help-block">사업자등록번호를 입력하세요</p></div></div>	<div class="form-group">'
														+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">대표자명</label>'
														+ '<div class="col-lg-10"><input type="text" class="form-control" id="shopRepUpdate" value="" placeholder="대표자명">'
														+ '<p class="help-block">대표자명을 입력하세요</p></div></div><div class="form-group">'
														+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">전화번호</label>'
														+ '<div class="col-lg-10"><input type="tel" class="form-control" id="shopTelUpdate" value="'+telNo+'" placeholder="전화번호">'
														+ '<p class="help-block">전화번호를 입력하세요</p></div></div>'
														+ '<div class="form-group"><label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">이메일</label>'
														+ '<div class="col-lg-10"><input type="email" class="form-control" id="shopEmailUpdate" value="" placeholder="이메일">'
														+ '<p class="help-block">이메일을 입력하세요</p></div></div><div class="form-group">'
														+ '<label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">SNS</label>'
														+ '<div class="col-lg-10"><input type="text" class="form-control" id="shopSNSUpdate" value="" placeholder="SNS">'
														+ '<p class="help-block">SNS를 입력하세요</p></div></div>'
														+ '<div class="form-group"><label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">주소</label>'
														+ '<div class="col-lg-10"><input type="text" class="form-control" id="addressUpdate" value="'+address+'"><p class="help-block">주소를 검색하세요</p>'
														+ '</div></div></form></div></div></section></div>';

												$('div#myModal6 .modal-body')
														.html(unMarkerClickText);
												$('#button6').unbind('click');
												$('#button6')
														.on(
																'click',
																function() {
																	var shopName = $(
																			'#shopNameUpdate')
																			.val();
																	var shopNumber = $(
																			'#shopNumberUpdate')
																			.val();
																	var shopRep = $(
																			'#shopRepUpdate')
																			.val();
																	var shopTel = $(
																			'#shopTelUpdate')
																			.val();
																	var shopEmail = $(
																			'#shopEmailUpdate')
																			.val();
																	var shopSNS = $(
																			'#shopSNSUpdate')
																			.val();
																	var address = $(
																			'#addressUpdate')
																			.val();
																	var shopDivision = $(
																			'#shopDivisionUpdate')
																			.val();

																	$
																			.ajax({
																				url : 'insertNewShop',
																				method : 'post',
																				data : {
																					'shopName' : shopName,
																					'shopNumber' : shopNumber,
																					'shopRep' : shopRep,
																					'shopDivision' : shopDivision,
																					'shopTel' : shopTel,
																					'shopEmail' : shopEmail,
																					'shopSNS' : shopSNS,
																					'address' : address
																				},
																				dataType : 'json',
																				success : function(
																						resp) {
																					alert('등록되었습니다.');
																					$(
																							'#myModal6')
																							.trigger(
																									"click");
																					$(
																							'#shopSearchForm2')
																							.css(
																									"display",
																									"none");

																					$(
																							'#searchKeyword')
																							.val(
																									'');

																					location.href = "salesMain"
																				}
																			});
																});

												var lon = $(this).attr(
														'data-lon');
												var lat = $(this).attr(
														'data-lat');
												map.setCenter(new Tmap.LonLat(
														lat, lon), 16);
												var icon;
												var lonlat = new Tmap.LonLat(
														lat, lon);
												var size = new Tmap.Size(12, 19);
												var offset = new Tmap.Pixel(
														-(size.w / 2), -size.h);
												icon = new Tmap.IconHtml(
														'<a data-toggle="modal" href="#myModal6"><img alt="" src="images/sales/견적마커.png" data-type = "unMarker" style="width: 20px;"></a>',
														size, offset);
												var marker = new Tmap.Markers(
														lonlat, icon);
												markerLayer.addMarker(marker);
											});
						},
						error : function() {
							alert('유정이 바보');
						}
					});
		}

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