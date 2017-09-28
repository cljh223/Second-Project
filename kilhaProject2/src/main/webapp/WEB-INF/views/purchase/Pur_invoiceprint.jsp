<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Invoice</title>

    <!--Core CSS -->
    <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

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
            <div class="col-md-12">
                <section class="panel">
                    <div class="panel-body invoice">
                        <div class="invoice-header">
                            <div class="invoice-title col-md-3 col-xs-2">
                                <h1>invoice</h1>
                                <img class="logo-print" src="" alt="">
                            </div>
                            <div class="invoice-info col-md-9 col-xs-10">

                                <div class="pull-right">
                                    <div class="col-md-6 col-sm-6 pull-left">
                                        <p>소속<br>
                                        	${staffDepartment},${staffName}</p>
                                    </div>
                                    <div class="col-md-6 col-sm-6 pull-right">
                                        <p>Phone: ${stafftel} <br>
                                            Email : ${staffemail}</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row invoice-to">
                            <div class="col-md-4 col-sm-4 pull-left">
                                <h4>Invoice To:</h4>
                                <h2>구매부</h2>
                                <p>
                                               담당자: 이재준<br>
                                    Phone: +61 3 8376 6284<br>
                                    Email : info@envato.com
                                </p>
                            </div>
                            <div class="col-md-4 col-sm-5 pull-right">
                                <div class="row">
                                    <div class="col-md-4 col-sm-5 inv-label">서류번호</div>
                                    <div class="col-md-8 col-sm-7">${invoiceNum}</div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4 col-sm-5 inv-label">신청일</div>
                                    <div class="col-md-8 col-sm-7">${orderdate}</div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-12 inv-label">
                                        <h3>TOTAL DUE</h3>
                                    </div>
                                    <div class="col-md-12">
                                        <h1 class="amnt-value">￦ <fmt:formatNumber value="${subtotal}" pattern="#,###" /></h1>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <table class="table table-invoice" >
                            <thead>
                            <tr>
                                <th>#</th>
                                <th class="text-center">재료명</th>
                                <th class="text-center">가격(1KG당)</th>
                                <th class="text-center">주문량</th>
                                <th class="text-center">합계</th>
                            </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${orderrmlist}" var="outer" varStatus="outerstat">
								<tr>
										<td class = "text-center"><h4>${outerstat.count}</h4></td>
										<td class = "text-center">${orderrmlist[outerstat.index][0]}</td>
										<td class = "text-center">￦ <fmt:formatNumber value="${orderrmlist[outerstat.index][1]}" pattern="#,###" /></td>
										<td class = "text-center"><fmt:formatNumber value="${orderrmlist[outerstat.index][2]}" pattern="#,###" /> KG</td>
										<td class = "text-center">￦ <fmt:formatNumber value="${orderrmlist[outerstat.index][3]}" pattern="#,###" /></td>
										
								</tr>
							</c:forEach>
                            
                            
                            
                            <!-- <tr>
                                <td>1</td>
                                <td>
                                    <h4>Service One</h4>
                                    <p>Service Four Description Lorem ipsum dolor sit amet.</p>
                                </td>
                                <td class="text-center">1</td>
                                <td class="text-center">4</td>
                                <td class="text-center">$1300.00</td>
                            </tr> -->

                            </tbody>
                        </table>
                        <div class="row">
                            <div class="col-md-8 col-xs-7 payment-method">
                                <h4>기타요구사항</h4>
                                <p>${staffetc}</p>
                                <!-- <p>2. 우치하 사스케.</p>
                                <p>3. 높은다리.</p> -->
                                <br>
                                <!-- <h3 class="inv-label itatic">Thank you for your business</h3> -->
                            </div>
                            <%-- <div class="col-md-4 col-xs-5 invoice-block pull-right">
                                <ul class="unstyled amounts">
                                    <li class="grand-total">총액 : ￦ ${subtotal}</li>
                                </ul>
                            </div> --%>
                        </div>

                        <div class="text-center invoice-btn">
                            <a class="btn btn-success btn-lg" id="submitorder"><i class="fa fa-check"></i> 접수완료 </a>
                            <a href="invoice_print.html" target="_blank" class="btn btn-primary btn-lg"><i class="fa fa-print"></i> Print </a>
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

<script type="text/javascript">

	$(function() {
		$('#submitorder').on('click', function(){
			location.href = 'insertorder?taskcode=${invoiceNum}&requestdate=${orderdate}&etc=${staffetc}&staffname=${staffName}&orderrmlist=${orderrmlist}&subtotal=${subtotal}';
		});
	});		
		
			
		

		
		
	
</script>

</body>
</html>