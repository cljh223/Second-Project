<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="images/favicon.png">

<title>Advanced Form</title>

<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
<link rel="stylesheet" type="text/css" href="js/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="js/select2/select2.css" />
<link href="css/style.css" rel="stylesheet">
<style>
#loginForm {
	width: "250px";
	float: right;
}

#resultT, th{
	text-align : center;
}
/* #logListHead {
	border: 1px black solid;
	width: 350px;
	height: 30px;
	margin: 0 auto;
	text-align: center;
}

#logListDiv {
	width: 363px;
	height: 200px;
	overflow-y: true;
}

#logListBody {
	border: 1px black solid;
	width: 350px;
	height: 200px;
	margin: 0 auto;
	bgcolor: "white";
} */
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
				<table id="loginForm">
					<tr>
						<td><input type="text" class="form-control search"
							placeholder=" Search"></td>
						<td>&nbsp;</td>
						<!-- user login dropdown start-->
						<td><%@include file="login.jsp"%></td>
						<!-- user login dropdown end -->
						<td>&nbsp;</td>
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
                        <li><a href="productMain">상품 비교 페이지</a></li>
                     </ul></li>         
        
                
            </ul>            </div>
        <!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<section id="main-content">
			<section class="wrapper">
				<div class="col-lg-4">
					<section class="panel" style="height: 580px; width: 100%" >
						<div class="panel-body">
							<div class="col-sm-5" id="deliveryDate" style="position: absolute; left: 4px;">
								<div data-date-viewmode="years" data-date-format="yyyy-mm-dd"
									data-date="2017-09-01" class="input-append date dpYears">
									<input type="text" readonly="" value="2017-09-01" size="16"
										class="form-control" name="deliverydate" id="deliveryDate1">
									<span class="input-group-btn add-on">
										<button class="btn btn-primary" type="button">
											<i class="fa fa-calendar"></i>
										</button>
									</span>
								</div>
							</div>
							<!-- <div class="col-sm-1"></div>  -->
							<div class="col-sm-5" style="position: absolute; left: 190px;">
								<div id="truckPart"></div>
							</div>
							<div class="col-xs-1">
								<button type="button" id="optionSearchBtn"
									class="btn btn-primary" style="position: absolute; left: 333px;"><i class="fa fa-search"></i></button>
							</div><br>
									<div id="resultNoneMsg"></div>
									<div id="truckListPart" style="position: absolute; top: 80px; width: 360px; heigth: 200px; "></div>
							</div>
							<br>
								<button style="position:absolute; top:300px; left:110px;" type="button" id="shortestBtn" class="btn btn-warning">&nbsp
										&nbsp &nbsp 최단 배송거리 검색 &nbsp &nbsp &nbsp</button>
							<br>
							<div class="col-lg-6" style="position:absolute; top:350px; left:10px; z-index:9">
								<div class="profile-nav alt">
									<section class="panel text-center">
										<div class="user-heading alt wdgt-row terques-bg">
											<i class="fa fa-location-arrow"></i> 
										</div>

										<div class="panel-body">
											<div class="wdgt-value">
												<h3 id="totalDistance" class="count"></h3>
												<p>주행거리</p>
											</div>
										</div>
									</section>
								</div>
							</div>
							<div class="col-lg-6" style="position:absolute; top:350px; left:200px; z-index:9">
								<div class="profile-nav alt">
									<section class="panel text-center">
										<div class="user-heading alt wdgt-row red-bg">
											<i class="fa fa-clock-o"></i>
										</div>

										<div class="panel-body">
											<div class="wdgt-value">
												<h3 id="totalTime" class="count"></h3>
												<p>주행시간</p>
											</div>
										</div>
									</section>
								</div>
							</div>
							</section>
						</div>
						<div class="col-lg-8">
							<section class="panel">
								<div class="panel-body">
									<div id="map_div">
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
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=21093c88-ac79-33d0-bc3e-8c0652e9a564"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-1.10.2.min.js"></script>
	<!-- <script src="bs3/js/bootstrap.min.js"></script> -->
	<!-- <script src="js/jquery-ui-1.9.2.custom.min.js"></script> -->
	<!-- <script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script> -->
	<!-- <script src="js/jquery.scrollTo.min.js"></script> -->
	<!-- <script src="js/easypiechart/jquery.easypiechart.js"></script> -->
	<!-- <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script> -->
	<!-- <script src="js/jquery.nicescroll.js"></script> -->
	<!-- <script src="js/jquery.nicescroll.js"></script> -->

	<!-- <script src="js/bootstrap-switch.js"></script> -->

	<script type="text/javascript" src="js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
	<script type="text/javascript" src="js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script>
	
	$(function() {
		var map;
		var makerLayer;
		var vectorLayer;
		var shopName = [];		

		$(function() {
			$.ajax({
				url : "getTruckList",
				method : "GET",
				success : printTruckList
			})

 			map = new Tmap.Map({div:"map_div", width:'100%', height:'550px'});
	   
			markerLayer = new Tmap.Layer.Markers();
		    map.addLayer(markerLayer);
		   
		    vectorLayer = new Tmap.Layer.Vector("route");
		    vectorLayer.events.register("featuresadded", vectorLayer, function(e){map.zoomToExtent(this.getDataExtent())});
			map.addLayer(vectorLayer);
			
			$("#optionSearchBtn").on('click', truckListSearch);
			$('#shortestBtn').on('click', function(){
				jQuery.ajaxSettings.traditional = true;
				$.ajax({
					url: "nameRoute",
					method : "GET",
					data: {"shopName" : shopName},
					success: shortestRoute
				});
			});
		})
		
		function shortestRoute() {
			$.ajax({
				url: "shortest",
				method: "GET",
				success: routeSequential30
			});
		}
		
		function truckListSearch() {
			var date = $("#deliveryDate1").val();
			var truck_code = $("#truck_code").val();
			console.log(date+" / "+truck_code);

			$.ajax({
				url : "truckListSearch",
				method : "GET",
				data : {
					"deliverydate" : date,
					"truck_code" : truck_code
				},
				success : printSearchResult
			})
		}

		function printSearchResult(resp) {
			console.log(resp);
			if (resp.length == 0) {
				var temp='<br><br><br><center><h3>배차내역이 없습니다.</h3></center>';
				$("#truckListPart").html(temp);
			} else if (resp != 0) {
				var temp ='<table id="resultT" border="1">';
				temp +='<tr bgcolor="white">';
				temp +='<col width="35">';
				temp +='<col width="100">';
				temp +='<col width="225">';
				temp +='<th class="num">번호</th>';
				temp +='<th class="shop">배송지</th>';
				temp +='<th class="address">주소</th></tr>';
			$.each(resp, function(index, item) {
				temp += '<tr><td class="num">' + (index + 1) + '</td>';
				temp += '<td class="shop">' + item.SHOP_NAME + '</td>';
				if (item.ADDRESS_DETAIL4 == null) {
					temp += '<td class="address">' + item.ADDRESS_DETAIL1 + item.ADDRESS_DETAIL2 + item.ADDRESS_DETAIL3 + '</td></tr>';
				} else {
					temp += '<td class="address">' + item.ADDRESS_DETAIL1 + item.ADDRESS_DETAIL2 + item.ADDRESS_DETAIL3 + item.ADDRESS_DETAIL4 + '</td></tr>';
				}
				shopName[index] = item.SHOP_NAME;
			})
				temp+='</table>';
			$("#truckListPart").html(temp);
			}
		}

		function printTruckList(resp) {
			var temp = '<select class="form-control m-bot15" name="truck_code" id="truck_code">';
			$.each(resp, function(index, item) {
				temp += '<option value="'+item+'">' + item + '</option>';
			})
			temp += '</select>';
			$("#truckPart").html(temp);
		}

		function routeSequential30(data) {
			   var obj = data;

			   $.ajax({
			       method : "POST",
			       url : "http://apis.skplanetx.com/tmap/routes/routeSequential30?version=1",
			       headers : {
			           "Content-Type" : "application/json",
			           "appKey" : "21093c88-ac79-33d0-bc3e-8c0652e9a564"
			       },
			       data : obj,
			       success : onSuccess
			   });
			}
			 
			function onSuccess( data ) {
			   console.log( data ) // 응답 데이터 구조를 보시려면 주석을 푸시면 됩니다.
			   
			   // 운행 경로
			   var features = data.features;
			   var i, j, geometry;
			   var arrPoint = [];
			   var testVal = 0;
			   for( i in features ) {
			       geometry = features[i].geometry; 
			       if( geometry.type == "Point" ) {
			    	   testVal += 1;
			           addMarker( geometry.coordinates[0], geometry.coordinates[1], testVal );
			       }
			       else if( geometry.type == "LineString" ) {
			    	   for( j in geometry.coordinates ) {
			    		   arrPoint.push(new Tmap.Geometry.Point(geometry.coordinates[j][0], geometry.coordinates[j][1]));
			    	   }
			       }
			   }
			
			   // 운행 정보
			   var totalDistance = data.properties.totalDistance;
			   var totalFare = data.properties.totalFare;
			   var totalTime = data.properties.totalTime;
			   
			   function convertTime(totalTime) {

				   var hour = parseInt(totalTime / 3600);
				   var min = parseInt((totalTime % 3600) / 60);

				   $('#totalTime').html(hour + "시간 " + min + "분");

			   }
			   
			   convertTime(totalTime);
			   $('#totalDistance').html((totalDistance / 1000).toFixed(1) + "km");
			   
			   console.log(totalDistance + "m");
			   console.log(totalFare + "원");
			   console.log(totalTime + "s");
			   
			   drawLine( arrPoint );
			}
			 
			function addMarker(lon, lat, testVal) {
			   var lonlat = new Tmap.LonLat(lon, lat);
			    
			   var size = new Tmap.Size(24,38);
			   var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
			   var icon = new Tmap.Icon('https://developers.skplanetx.com/upload/tmap/marker/pin_b_m_a.png', size, offset); 
			   var label = new Tmap.Label("<h6>" + testVal + "번째 경유지</h6>");
			   var markers = new Tmap.Markers(lonlat, icon, label);
			   markerLayer.addMarker(markers);
			   markers.popup.show()
			}
			
			function drawLine( arrPoint ) {
				var lineString = new Tmap.Geometry.LineString(arrPoint);
				var style_bold = {
						strokeWidth: 3,
						strokeColor: "#FF0000" 
					};
				var mLineFeature = new Tmap.Feature.Vector(lineString, null, style_bold);
					
				vectorLayer.addFeatures([mLineFeature]);
			}
	});
	</script>

	<script src="js/advanced-form.js"></script>
</body>
</html>