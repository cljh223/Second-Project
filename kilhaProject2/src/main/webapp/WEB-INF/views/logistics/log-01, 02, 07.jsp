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

<title>Editable Table</title>

<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<!-- <link href="css/style-responsive.css" rel="stylesheet" />  -->

<style>
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
                        <li><a href="productMain">상품 비교 페이지</a></li>
                     </ul></li>         
        
                
            </ul>            </div>
        <!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<section id="main-content">
			<section class="wrapper">
				<!-- <center>
				<div class="listBtns">
					<button type="button" class="btn btn-success" id="AA">
						<i class="fa fa-plus-square"></i> Ordered
					</button>
					<button type="button" class="btn btn-info" id="BB">
						<i class="fa fa-check"></i> Confirmed
					</button>
					<button type="button" class="btn btn-warning" id="CC">
						<i class="fa fa-truck"></i> Delivered
					</button>
					<button type="button" class="btn btn-danger" id="DD">
						<i class="fa fa-times"></i> Rejected
					</button>
				</div></center> -->
				<br />

				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<header class="panel-heading"> </header>
							<div class="panel-body">
								<div class="adv-table editable-table ">
									
									<br>
									<div class="space15"></div>
									<div class="resultList"></div>
								</div>
							</div>
						</section>
					</div>
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
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate.js"></script>

	<script src="bs3/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script>
		jQuery(document).ready(function() {
			EditableTable.init();
			$("#add").on('click', addNew);
			$.ajax({
				url : "resultList",
				method : "GET",
				dataType : "json",
				success : resultList
			});
		});

		/* $(function() {
			$("#AA").on('click', orderedList);
			$("#BB").on('click', confirmedList);
			$("#CC").on('click', shippedList);
			$("#DD").on('click', rejectedList);
		}); */

		function resultList(resp) {
			/* var status1 = "confirmed";
			var status2 = "rejected"; */
			var temp = '<table class="table table-striped table-hover table-bordered" id="editable-sample">';
			temp += '<thead>';
			temp += '<tr>';
			temp += '<th>번호</th>';
			temp += '<th>배송일자</th>';
			temp += '<th>배송지</th>';
			temp += '<th>주소</th>';
			temp += '<th>배송트럭</th>';
			temp += '<th>상세보기</th>';
			temp += '<th>삭제</th>';
			temp += '</tr>';
			temp += '</thead>';
			temp += '<tbody>';

			$
					.each(
							resp,
							function(index, item) {
								console.log(item);
								var process_code = item.PROCESS_CODE;
								temp += '<tr>';
								temp += '<td>' + (index + 1) + '</td>';
								temp += '<td>' + item.DELIVERYDATE + '</td>';
								temp += '<td>' + item.SHOP_NAME + '</td>';
								if (item.ADDRESS_DETAIL4 == null) {
									temp += '<td>' + item.ADDRESS_DETAIL1+item.ADDRESS_DETAIL2+item.ADDRESS_DETAIL3+'</td>';	
								} else{
								temp += '<td>' + item.ADDRESS_DETAIL1+item.ADDRESS_DETAIL2+item.ADDRESS_DETAIL3+item.ADDRESS_DETAIL4+'</td>';}
								temp += '<td>' + item.TRUCK_CODE + '</td>';
								temp += '<td><a class="confirm" href="junseok2?processCode='
										+ process_code +'"><span class="label label-primary">상세보기</span></a></td>';
								temp += '<td><a href="deleteList?process_code='+process_code+'"><span class="label label-inverse">삭제</span></a></td>';
								temp += '</tr>';
							});
			temp += '</tbody>';
			temp += '</table>';

			$(".resultList").html(temp);
		};

		/* function orderedList() {
			$.ajax({
				url : "resultList",
				method : "GET",
				data : {
					status : "ordered"
				},
				success : resultList
			})
		}

		function confirmedList() {
			$.ajax({
				url : "resultList",
				method : "GET",
				data : {
					status : "confirmed"
				},
				success : resultList
			});
		}

		function shippedList() {
			$.ajax({
				url : "resultList",
				method : "GET",
				data : {
					status : "shipped"
				},
				success : resultList
			});
		}

		function rejectedList() {
			$.ajax({
				url : "resultList",
				method : "GET",
				data : {
					status : "rejected"
				},
				success : resultList
			});
		} */
		
		function addNew(){
			location.href = 'salesMain';
		}
	</script>
	<!--jQuery Flot Chart-->
	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->
	<script src="js/scripts.js?version=1"></script>

	<!--script for this page only-->
	<script src="js/table-editable2.js"></script>

	<!-- END JAVASCRIPTS -->

</body>
</html>