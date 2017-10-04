<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Form Validation</title>

    <!--Core CSS -->
    <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    
    <link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
    <link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
#loginForm {
	width: "250px";
	float: right;
}
</style>
</head>

<body>

<section id="container" >
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
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
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!-- page start-->
            <div class="row">
                <div class="col-lg-6">
                    <section class="panel">
                        <header class="panel-heading">
                            	일일 단위 생산 정보 등록
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-cog" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal " id="registForm" method="post" action="pro_Regist">
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
                                        <label for="produceLine" class="control-label col-lg-3">생산 라인 번호</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="produceLine" name="line_num" type="text" readonly/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="produceAmount" class="control-label col-lg-3">총 생산량</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="produceAmount" name="amount" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="number_person" class="control-label col-lg-3">라인 투입 인원</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="number_person" name="inputman" type="text" value="반드시 계산된 값 입력"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="hours_operation" class="control-label col-lg-3">가동 시간</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="hours_operation" name="worktime" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="losstime" class="control-label col-lg-3">LOSS 시간</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="losstime" name="losstime" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="errorAmount" class="control-label col-lg-3">불량갯수</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="errorAmount" name="fault" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
		                                <label for="produceDate" class="control-label col-lg-3">생산 일자</label>
		                                <div class="col-lg-6">
		                                    <input class="form-control form-control-inline input-medium default-date-picker"  
		                                    id="produceDate" name="production_date" size="16" type="text" value="" />
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
                <div class="col-lg-6">
                    <section class="panel">
                    <header class="panel-heading">
                        	원재료 재고 현황
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                     <div class="panel-body">
                     <div class="slimScrollDiv" style="overflow: auto; height: 490px">
								<table class="table table-hover general-table">
									<thead>
										<tr>
											<th style="text-align: center">재료명</th>
											<th class="hidden-phone" style="text-align: center">현재 재고량</th>
											<th style="text-align: center">재고율</th>
											<th style="text-align: center">상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${inventory}">
											<tr>
												<td style="text-align: center"><a href="#">${item.materialname }</a></td>
												<td class="hidden-phone" style="text-align: center">${item.p_amount }kg</td>
												<td>
												<c:if test="${item.stackrate <=30 }">
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-danger"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.stackrate}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
												</c:if>
												<c:if test="${item.stackrate >30 and item.stackrate <=50}">
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-warning"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.stackrate}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
												</c:if>
												<c:if test="${item.stackrate > 50}">
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-success"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.stackrate}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
												</c:if>
												</td>
												<td style="text-align: center">
												<c:if test="${item.stackrate <= 30 }">
												<a href="Pur_orderform1"><button type="button" class="btn btn-info btn-xs">주문 하기</button></a>
												</c:if>
												<c:if test="${item.stackrate > 30 }">
												<p>양호</p>
												</c:if>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
                     </div>
                    </section>
                </div>
            </div>
            
            <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        	일일 단위 생산 누적 정보 현황
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
                        <th>상품번호</th>
                        <th>상품명</th>
                        <th>생산량</th>
                        <th>양품률</th>	
                        <th>생산날짜</th>
                        <th style="display:none;">생산라인</th>
                        <th style="display:none;">투입인원</th>
                        <th style="display:none;">가동시간</th>
                        <th style="display:none;">LossTime</th>
                        <th style="display:none;">Capacity</th>
                        <th style="display:none;">불량갯수</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <c:forEach var="item" items="${list}" varStatus="status">
                    	<tr class="gradeA">
                    		<td>${item.r_num}</td>
	                        <td>${item.r_name}</td>
	                        <td><fmt:formatNumber value="${item.amount}" pattern=".00"/>EA</td>
	                        <td>${item.goodrate}%</td>
	                        <td>${item.production_date}</td>
	                        <td style="display:none;">${item.line_num}</td>
	                        <td style="display:none;"><fmt:formatNumber value="${item.inputman}" pattern=".00"/></td>
	                        <td style="display:none;"><fmt:formatNumber value="${item.worktime}" pattern=".00"/></td>
	                        <td style="display:none;"><fmt:formatNumber value="${item.losstime}" pattern=".00"/></td>
	                        <td style="display:none;"><fmt:formatNumber value="${item.capa}" pattern=".00"/></td>
	                        <td style="display:none;"><fmt:formatNumber value="${item.fault}" pattern=".00"/></td>
                   		</tr>
					</c:forEach>

                    </tbody>
                    </table>

                    </div>
                    </div>
                </section>
            </div>
        </div>
            <!-- page end-->
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
<li class="widget-collapsible">
    <a href="#" class="head widget-head red-bg active clearfix">
        <span class="pull-left">work progress (5)</span>
        <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
    </a>
    <ul class="widget-container">
        <li>
            <div class="prog-row side-mini-stat clearfix">
                <div class="side-graph-info">
                    <h4>Target sell</h4>
                    <p>
                        25%, Deadline 12 june 13
                    </p>
                </div>
                <div class="side-mini-graph">
                    <div class="target-sell">
                    </div>
                </div>
            </div>
            <div class="prog-row side-mini-stat">
                <div class="side-graph-info">
                    <h4>product delivery</h4>
                    <p>
                        55%, Deadline 12 june 13
                    </p>
                </div>
                <div class="side-mini-graph">
                    <div class="p-delivery">
                        <div class="sparkline" data-type="bar" data-resize="true" data-height="30" data-width="90%" data-bar-color="#39b7ab" data-bar-width="5" data-data="[200,135,667,333,526,996,564,123,890,564,455]">
                        </div>
                    </div>
                </div>
            </div>
            <div class="prog-row side-mini-stat">
                <div class="side-graph-info payment-info">
                    <h4>payment collection</h4>
                    <p>
                        25%, Deadline 12 june 13
                    </p>
                </div>
                <div class="side-mini-graph">
                    <div class="p-collection">
						<span class="pc-epie-chart" data-percent="45">
						<span class="percent"></span>
						</span>
                    </div>
                </div>
            </div>
            <div class="prog-row side-mini-stat">
                <div class="side-graph-info">
                    <h4>delivery pending</h4>
                    <p>
                        44%, Deadline 12 june 13
                    </p>
                </div>
                <div class="side-mini-graph">
                    <div class="d-pending">
                    </div>
                </div>
            </div>
            <div class="prog-row side-mini-stat">
                <div class="col-md-12">
                    <h4>total progress</h4>
                    <p>
                        50%, Deadline 12 june 13
                    </p>
                    <div class="progress progress-xs mtop10">
                        <div style="width: 50%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-info">
                            <span class="sr-only">50% Complete</span>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</li>
<li class="widget-collapsible">
    <a href="#" class="head widget-head terques-bg active clearfix">
        <span class="pull-left">contact online (5)</span>
        <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
    </a>
    <ul class="widget-container">
        <li>
            <div class="prog-row">
                <div class="user-thumb">
                    <a href="#"><img src="images/avatar1_small.jpg" alt=""></a>
                </div>
                <div class="user-details">
                    <h4><a href="#">Jonathan Smith</a></h4>
                    <p>
                        Work for fun
                    </p>
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
                    <h4><a href="#">Anjelina Joe</a></h4>
                    <p>
                        Available
                    </p>
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
                    <h4><a href="#">John Doe</a></h4>
                    <p>
                        Away from Desk
                    </p>
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
                    <h4><a href="#">Mark Henry</a></h4>
                    <p>
                        working
                    </p>
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
                    <h4><a href="#">Shila Jones</a></h4>
                    <p>
                        Work for fun
                    </p>
                </div>
                <div class="user-status text-danger">
                    <i class="fa fa-comments-o"></i>
                </div>
            </div>
            <p class="text-center">
                <a href="#" class="view-btn">View all Contacts</a>
            </p>
        </li>
    </ul>
</li>
<li class="widget-collapsible">
    <a href="#" class="head widget-head purple-bg active">
        <span class="pull-left"> recent activity (3)</span>
        <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
    </a>
    <ul class="widget-container">
        <li>
            <div class="prog-row">
                <div class="user-thumb rsn-activity">
                    <i class="fa fa-clock-o"></i>
                </div>
                <div class="rsn-details ">
                    <p class="text-muted">
                        just now
                    </p>
                    <p>
                        <a href="#">Jim Doe </a>Purchased new equipments for zonal office setup
                    </p>
                </div>
            </div>
            <div class="prog-row">
                <div class="user-thumb rsn-activity">
                    <i class="fa fa-clock-o"></i>
                </div>
                <div class="rsn-details ">
                    <p class="text-muted">
                        2 min ago
                    </p>
                    <p>
                        <a href="#">Jane Doe </a>Purchased new equipments for zonal office setup
                    </p>
                </div>
            </div>
            <div class="prog-row">
                <div class="user-thumb rsn-activity">
                    <i class="fa fa-clock-o"></i>
                </div>
                <div class="rsn-details ">
                    <p class="text-muted">
                        1 day ago
                    </p>
                    <p>
                        <a href="#">Jim Doe </a>Purchased new equipments for zonal office setup
                    </p>
                </div>
            </div>
        </li>
    </ul>
</li>
<li class="widget-collapsible">
    <a href="#" class="head widget-head yellow-bg active">
        <span class="pull-left"> shipment status</span>
        <span class="pull-right widget-collapse"><i class="ico-minus"></i></span>
    </a>
    <ul class="widget-container">
        <li>
            <div class="col-md-12">
                <div class="prog-row">
                    <p>
                        Full sleeve baby wear (SL: 17665)
                    </p>
                    <div class="progress progress-xs mtop10">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                            <span class="sr-only">40% Complete</span>
                        </div>
                    </div>
                </div>
                <div class="prog-row">
                    <p>
                        Full sleeve baby wear (SL: 17665)
                    </p>
                    <div class="progress progress-xs mtop10">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                            <span class="sr-only">70% Completed</span>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</li>
</ul>
</div>
</div>
<!--right sidebar end-->

</section>

<!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
<script src="js/jquery.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>

<script>
$(function() {
	var message = '${message}';
	
	if(message != 'ok'){
		alert(message);
	}
	
	if(message == 'ok'){
	$("#productNum").change(function(){
		var text = $("#productNum").val();
		var name = "";
		var line = "";
		if(text == "p01_1"){
			name = "안성탕면";
			line = "A1";
		}
		if(text == "p01_2"){
			name = "안성탕면";
			line = "A2";
		}
		if(text == "p02_1"){
			name = "신라면";
			line = "B1";
		} 
		if(text == "p02_2"){
			name = "신라면";
			line = "B2";
		}
		if(text == "p03_1"){
			name = "너구리";
			line = "C1";
		}
		if(text == "p03_2"){
			name = "너구리";
			line = "C2";
		}
		if(text == "p04_1"){
			name = "멸치칼국수라면";
			line = "D1";
		}
		if(text == "p04_2"){
			name = "멸치칼국수라면";
			line = "D2";
		}
		if(text == "p05_1"){
			name = "사리곰탕면";
			line = "E1";
		}
		if(text == "p05_2"){
			name = "사리곰탕면";
			line = "E2";
		}
		$("#productName").val(name);
		$("#produceLine").val(line);
	});
	}
});
</script>

<script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js?version=20170920"></script>

<script type="text/javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>
<!--common script init for all pages-->
<script type="text/javascript" src="js/scripts.js"></script>
<script type="text/javascript" src="js/advanced-form.js?version=20170920"></script>
<script type="text/javascript" src="js/validation-init.js?version=20170920"></script>
<script type="text/javascript" src="js/dynamic_table_init2.js?version=20170920"></script> 
</body>
</html>
