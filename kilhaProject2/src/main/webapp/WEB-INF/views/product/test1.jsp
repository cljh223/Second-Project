<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">

<meta http-equiv=”X-UA-Compatible” content=”IE=EmulateIE9”>
<meta http-equiv=”X-UA-Compatible” content=”IE=9”>

<link rel="shortcut icon" href="images/favicon.png">
<title></title>
<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="js/jquery-ui/jquery-ui-1.10.1.custom.min.css"
	rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="js/jvector-map/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<link href="css/clndr.css" rel="stylesheet">

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

<script src="https://cdn.anychart.com/js/7.14.3/anychart-bundle.min.js"></script>
<script
	src="https://cdn.anychart.com/samples-data/scatter-charts/combination-of-line-and-marker-charts/data.js"></script>
<link rel="stylesheet"
	href="https://cdn.anychart.com/css/7.14.3/anychart-ui.min.css" />

<!--dynamic table-->
    <link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<!-- Custom styles for this template -->
<link href="css/style.css?version=4" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<style>
#gradient {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>

<script>

	anychart.onDocumentReady(function () {
    chart = anychart.scatter();

    // turn on chart animation
    chart.animation(true);

    // set chart title
    chart.title('System interruptions');

    chart.xScale()
            .minimum(0)
            .maximum(3500)
            .ticks({interval: 500});
    chart.yScale()
            .minimum(0)
            .maximum(${maximum})
            .ticks({interval: ${interval}});

    chart.yAxis().title('${searchType}');
    chart.xAxis()
            .title('Amount')
            .drawFirstLabel(false)
            .drawLastLabel(false);

    chart.interactivity()
            .hoverMode('bySpot')
            .spotRadius(30);

    chart.tooltip().displayMode('union');

    // The data used in this sample can be obtained from the CDN
    // https://cdn.anychart.com/samples-data/scatter-charts/combination-of-line-and-marker-charts/data.js
    var marker = chart.marker(${dataset});
    marker.type('triangleup')
            .size(4)
            .hoverSize(7)
            .hoverFill('gold')
            .hoverStroke(anychart.color.darken('gold'));
    marker.tooltip()
            .hAlign('start')
            .format(function () {
                return '${searchType}: ' + this.value + ' min.\nAmount: ' + this.x + ' min.';
            });

    // The data used in this sample can be obtained from the CDN
    // https://cdn.anychart.com/samples-data/scatter-charts/combination-of-line-and-marker-charts/data.js
    chart.line(${linedata});

    // set container id for the chart
    chart.container('gradient');
    // initiate chart drawing
    chart.draw();
});
    
    </script>
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
              <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-wrench"></i>
                        <span>생산부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="pro_Fac?f_num=1&r_num=p01_1&line_num=A1&f_name=1st Factory">제 1공장 정보</a></li>
                        <li><a href="pro_Fac?f_num=2&r_num=p04_1&line_num=D1&f_name=2nd Factory">제 2공장 정보</a></li>
                        <li><a href="pro_Gradient">예측 분석</a></li>
                        <li><a href="pro_RegistForm">생산정보입력</a></li>
                    </ul>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-truck"></i>
                        <span>물류부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="second">물류창고 현황</a></li>
                        <li><a href="junseok">출고서 확인</a></li>
                        <li><a href="third">배차경로 확인</a></li>
                    </ul>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-users"></i>
                        <span>영업부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="salesMain">영업 메인 페이지</a></li>
                        <li><a href="processMain">영업 상황 조회</a></li>
                        <li><a href="compareMain">영업 비교 페이지</a></li>
                    </ul>
                </li>
                
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
      </aside>
      <!--sidebar end-->
<!--sidebar end-->

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

	<!--main  -->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-4" >
					<div class="feed-box text-center" >
						<section class="panel" style="height: 400px;">
							<div class="panel-body">
							<form class="cmxform form-horizontal " id="registForm" method="post" action="pro_goGradient">
								<div class="corner-ribon blue-ribon">
									<i class=""></i>
								</div>
								<a href="#"> <img alt="" src="images/line-chart.png">
								</a>
								<h1>Prediction</h1>
								<p>Gradient Descent for Prediction</p>
								<div style="float: left;">
									<div class="radio single-row" style="float: left; width: 100%">
										<div style="float: left; width: 33%">
											<input type="radio" name="searchType" value ="MAN">MAN
										</div>
										<div style="float: left; width: 33%">
											<input type="radio" name="searchType" value = "COST">COST
										</div>
										<div style="float: left; width: 33%">
											<input type="radio" name="searchType" value="TIME">TIME
										</div>
									</div>
									<div>
										<select class="form-control m-bot15" id="r_name" name="r_name" style="width: 350px;">
											<option>상품 선택</option>
											<option value="안성탕면">안성탕면</option>
											<option value="신라면">신라면</option>
											<option value="너구리">너구리라면</option>
											<option value="멸치칼국수라면">멸치칼국수라면</option>
											<option value="사리곰탕면">사리곰탕면</option>
										</select>
									</div>
									<p></p>
									<div class="input-group m-bot15" style="width: 350px;">
										<input type="text" class="form-control" name="searchValue"> <span
											class="input-group-btn">
											<button class="btn btn-success" type="submit">Go!</button>
										</span>
									</div>
								</div>
								<div class="region-stats">

									<div class="col-lg-6" style="width:350px;">
										<ul class="clearfix location-earning-stats" style="margin-top: 40px;">
											<c:if test="${searchValue == null}">
											<li><span class="first-city">예상 주문량을 입력하세요</span>
												예상 준문량 대비 <br>투입인원, 재료비용, 생산기간을 예측합니다</li>
											</c:if>
											<c:if test="${searchValue != null}">
											<li class="stat-divider"><span class="first-city">샘플 생산량</span>
												${searchValue}EA 생산시</li>
											</c:if>
											<c:if test="${searchType=='MAN'}">
											<li><span class="third-city">예측 결과</span>
												약  ${result} 명</li>
											</c:if>
											<c:if test="${searchType=='COST'}">
											<li><span class="third-city">예측 결과</span>
												약 <fmt:formatNumber value="${result}" pattern="#,###" /> 원</li>
												
											</c:if>
											<c:if test="${searchType=='TIME'}">
											<li><span class="third-city">예측 결과</span>
												약  ${result} 일</li>
											</c:if>

										</ul>
									</div>
								</div>
							</form>
						</div>
						</section>
					</div>
				</div>
				<div class="col-lg-8">
					<section class="panel">
						<div class="panel-body">
						<c:if test="${message == 'datain'}">
							<div id="gradient" style="height: 370px;"></div>
						</c:if>
						<c:if test="${message == 'ok'}">
						<div style="height: 370px; text-align: center;">
						<p style= "text-align: center;">선형회귀 분석을 통하여 예상 준문량과 관련된 요소들을 예측합니다.</p>
								<img src="images/pen.gif" style="height: 300px; text-align: center;">
						</div>
						</c:if>
						</div>
					</section>
				</div>
			</div>
			
			<div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            	주문 단위 생산 정보 등록
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-cog" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal " id="registForm" method="post" action="goRegist">
                                    <div class="form-group ">
                                        <label for="productNum" class="control-label col-lg-3">상품 번호</label>
                                        <div class="col-lg-6">
                                        	<select class=" form-control " id="productNum" name="r_num">
                                        		<option value="">선택하세요</option>
                                        		<option value="p01_1">p01_1</option>
                                        		<option value="p01_2">p01_2</option>
                                        		<option value="p02_1">p02_1</option>
                                        		<option value="p02_2">p02_2</option>
                                        		<option value="p03_1">p03_1</option>
                                        		<option value="p03_2">p03_2</option>
                                        		<option value="p04_1">p04_1</option>
                                        		<option value="p04_2">p04_2</option>
                                        		<option value="p05_1">p05_1</option>
                                        		<option value="p05_2">P05_2</option>
                                        	</select>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="productName" class="control-label col-lg-3">상품 이름</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="productName" name="r_name" type="text" readonly/>
                                        </div>
                                    </div>
                                   <div class="form-group ">
                                        <label for="produceAmount" class="control-label col-lg-3">총생산량</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="produceAmount" name="t_amount" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="number_person" class="control-label col-lg-3">투입 인원</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="number_person" name="t_man" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
		                                <label for="produceDate" class="control-label col-lg-3">생산 시작 일자</label>
		                                <div class="col-lg-6">
		                                    <input class="form-control form-control-inline input-medium default-date-picker"  
		                                    id="produceDate" name="startdate" size="16" type="text" value="" />
		                                </div>
		                            </div>
                                    <div class="form-group ">
		                                <label for="produceDate" class="control-label col-lg-3">생산 종료 일자</label>
		                                <div class="col-lg-6">
		                                    <input class="form-control form-control-inline input-medium default-date-picker"  
		                                    id="produceDate" name="enddate" size="16" type="text" value="" />
		                                </div>
		                            </div>
                                    <div class="form-group ">
		                                <label for="produceDate" class="control-label col-lg-3">재료 구매 일자</label>
		                                <div class="col-lg-6">
		                                    <input class="form-control form-control-inline input-medium default-date-picker"  
		                                    id="produceDate" name="buydate" size="16" type="text" value="" />
		                                </div>
		                            </div>
                                    
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary" type="submit">등록</button>
                                            <button class="btn btn-default" type="button">취소</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
			
			
			<div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        	주문 단위 생산 누적 정보 현황
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                    <div class="panel-body">
                    <div class="adv-table">
                    <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                    <thead>
                    <tr>
                        <th>상품명</th>
                        <th>생산시작일</th>
                        <th>생산량</th>
                        <th>재료비용</th>	
                        <th>투입인원</th>
                        <th style="display:none;">생산번호</th>
                        <th style="display:none;">상품번호</th>
                        <th style="display:none;">총생산량</th>
                        <th style="display:none;">생산시작일</th>
                        <th style="display:none;">생산종료일</th>
                        <th style="display:none;">재료구매일</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <c:forEach var="item" items="${totalinfo}" varStatus="status">
                    	<tr class="gradeA">
                    		<td>${item.r_name}</td>
	                        <td>${item.startdate}</td>
	                        <td><fmt:formatNumber value="${item.t_amount}" pattern=".00"/>EA</td>
	                        <td><fmt:formatNumber value="${item.t_cost}" pattern=".00"/>원</td>
	                        <td>${item.t_man}</td>
	                        <td style="display:none;">${item.t_num}</td>
	                        <td style="display:none;">${item.r_num}</td>
	                        <td style="display:none;"><fmt:formatNumber value="${item.t_amount}" pattern=".00"/></td>
	                        <td style="display:none;">${item.startdate}</td>
	                        <td style="display:none;">${item.enddate}</td>
	                        <td style="display:none;">${item.buydate}</td>
                   		</tr>
					</c:forEach>

                    </tbody>
                    </table>
                    </div>
                    </div>
                </section>
            </div>
        </div>

		</section>
	</section>
	
	
	<script>
$(function() {
	var message = '${message}';
	if(message != 'ok' && message !='datain'){
		alert(message);
	}
	
	if(message == "ok"){
	
	$("#productNum").change(function(){
		var text = $("#productNum").val();
		var name = "";
		if(text == "p01_1"){
			name = "안성탕면";
		}
		if(text == "p01_2"){
			name = "안성탕면";
		}
		if(text == "p02_1"){
			name = "신라면";
		} 
		if(text == "p02_2"){
			name = "신라면";
		}
		if(text == "p03_1"){
			name = "너구리";
		}
		if(text == "p03_2"){
			name = "너구리";
		}
		if(text == "p04_1"){
			name = "멸치칼국수라면";
		}
		if(text == "p04_2"){
			name = "멸치칼국수라면";
		}
		if(text == "p05_1"){
			name = "사리곰탕면";
		}
		if(text == "p05_2"){
			name = "사리곰탕면";
		}
		$("#productName").val(name);
	});
	}
});
</script>
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
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
	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>
	
	
	<script src="js/iCheck/jquery.icheck.js"></script>
	<!--dynamic table-->
	<script type="text/javascript" language="javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
	<!--dynamic table initialization -->
	<script type="text/javascript" src="js/dynamic_table_init.js?version=20170920"></script>
	
	<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js?version=20170920"></script>
	<script type="text/javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
	
	<script type="text/javascript" src="js/advanced-form.js?version=20170920"></script>
	<script type="text/javascript" src="js/validation-init.js?version=20170920"></script>
	<!--icheck init -->
	<script src="js/icheck-init.js"></script>
	 
</body>
</html>