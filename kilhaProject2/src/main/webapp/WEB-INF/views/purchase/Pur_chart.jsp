<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
#container2 {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
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

<!-- search CSS -->

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
<script src="https://cdn.anychart.com/js/7.14.3/anychart-bundle.min.js"></script>
<script src="https://cdn.anychart.com/csv-data/csco-daily.js"></script>
<link rel="stylesheet"
	href="https://cdn.anychart.com/css/7.14.3/anychart-ui.min.css" />
<script src="resources/jquery-3.2.1.min.js"></script>
<script src="resources/jquery-ui.min.js"></script>



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
											<p>25% , Deadline 12 Juneâ13</p>
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
											<p>45% , Deadline 12 Juneâ13</p>
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
											<p>87% , Deadline 12 Juneâ13</p>
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
											<p>33% , Deadline 12 Juneâ13</p>
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
				<ul class="nav pull-right top-menu">
					<li><input type="text" class="form-control search"
						placeholder=" Search"></li>
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="images/avatar1_small.jpg"> <span class="username">John
								Doe</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
							<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="login.html"><i class="fa fa-key"></i> Log
									Out</a></li>
						</ul></li>
					<!-- user login dropdown end -->
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
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="index.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-laptop"></i>
                        <span>구매부서</span>
                    </a>
                    <ul class="sub">
                        <li><a href="Pur_main">구매메인화면</a></li>
                        <li><a href="Pur_inform">원자재 정보</a></li>
                        <li><a href="Pur_chart">원자재 거래</a></li>
                        <li><a href="Pur_orderform1">원자재 주문하기</a></li>
                        <li><a href="Pur_orders">원자재 주문내역</a></li>
                        <li><a href="Pur_profitloss">원자재 거래내역</a></li>
                        <li><a href="Pur_store">원자재재고량</a></li>
                    </ul>
                </li>
        
                <li>
                    <a href="login.html">
                        <i class="fa fa-user"></i>
                        <span>Login Page</span>
                    </a>
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
					<div class="col-lg-9">
						<section class="panel">
							<header class="panel-heading">
								원자재 가격 차트 <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>







							<div class="panel-body"></div>

							<div id="container2" style="height: 650px;">
								<script>

anychart.onDocumentReady(function () {
    // create data table on loaded data
    var dataTable = anychart.data.table();
    // The data used in this sample can be obtained from the CDN
    // https://cdn.anychart.com/csv-data/csco-daily.js
    dataTable.addData(${chartdata});

    // map loaded data for the ohlc series
    var mapping = dataTable.mapAs({
        'open': 1,
        'high': 2,
        'low': 3,
        'close': 4,
        'value': {column: 4, type: 'close'}
    });

    // map loaded data for the scroller
    var scrollerMapping = dataTable.mapAs();
    scrollerMapping.addField('value', 5);

    // create stock chart
    chart = anychart.stock();

    // create first plot on the chart
    var plot = chart.plot();
    plot.grid(0).enabled(true);
    plot.grid(1).enabled(true)
            .layout('vertical');
    plot.minorGrid(0).enabled(true);
    plot.minorGrid(1).enabled(true)
            .layout('vertical');

    var series = plot.candlestick(mapping).name('CSCO');
    series.legendItem().iconType('risingfalling');

    // create BBands indicator with period = 30, deviation = 3
    var bBandsIndicator = plot.bbands(mapping, 30, 3);
    bBandsIndicator.upperSeries().stroke('1.5 #3b8ad8');
    bBandsIndicator.middleSeries().stroke('1.5 #f18126');
    bBandsIndicator.lowerSeries().stroke('1.5 #7bc0f7');

    var indicatorPlot = chart.plot(1);
    indicatorPlot.height('20%');

    // create BBands %B indicator with period = 30, deviation = 3
    var bBandsBIndicator = indicatorPlot.bbandsB(mapping, 30, 3);
    bBandsBIndicator.series().stroke('1.5 #6E9C4E');

    // create scroller series with mapped data
    chart.scroller().candlestick(mapping);

    // set chart selected date/time range
    chart.selectRange('2016-01-06', "'" + ${latest} + "'");
    // set container id for the chart
    chart.container('container2');
    // initiate chart drawing
    chart.draw();

    // create range picker
    rangePicker = anychart.ui.rangePicker();
    // init range picker
    rangePicker.render(chart);

    // create range selector
    rangeSelector = anychart.ui.rangeSelector();
    // init range selector
    rangeSelector.render(chart);
});
    
    </script>
							</div>

						</section>




					</div>
					<div class="row">
						<div class="col-lg-3">
							<section class="panel" style="height: 729px;">
								<header class="panel-heading">
									거래정보 <span class="tools pull-right"> <a
										href="javascript:;" class="fa fa-chevron-down"></a> <a
										href="javascript:;" class="fa fa-cog"></a> <a
										href="javascript:;" class="fa fa-times"></a>
									</span>
								</header>
								<div class="panel-body profile-information">
									<div class="col-md-3">
										<div class="profile-pic text-center" style="position:relative; left: 65px;">
											<img src="images/${rmname}.jpg" id="rmImage" alt="" />
										</div>
										<h3 style="position:relative; left: 115px;">${rmname}</h3>
										<select id="RMsearch" class="populate " style="width: 168px; position:relative; left: 75px;">
											<optgroup label="면재료(noodle)">
												<option value="wheat">재료선택</option>
												<option value="wheat">밀가루</option>
												<option value="potatostarch">감자전분</option>
												<option value="palmoil">팜오일</option>
											</optgroup>
											<optgroup label="후레이크재료(flake)">
												<option value="anchovy">말린멸치</option>
												<option value="carrot">당근</option>
												<option value="driedbeef">말린소고기</option>
												<option value="garlic">마늘</option>
												<option value="onion">대파</option>
												<option value="redpepperpowder">고추가루</option>
												<option value="salt">소금</option>
												<option value="seaweed">말린미역</option>
												<option value="sugar">설탕</option>
												<option value="mushroom">말린버섯</option>
											</optgroup>

										</select>


									</div>
								</div>
								
								
								
									<div class="panel-body" style="height: 50px">
										<div class="form-group">
											<label class="control-label col-md-3"></label>
											<div class="col-lg-4">
												<div id="spinner1" style="width: 200px;">
													<div class="input-group input-small">
														<input id="buybutton" type="button" class="btn btn-round btn-danger" style="width:80px;" value="BUY" >
														<input id="sellbutton" class="btn btn-round btn-info" type="button" style="width:80px;" value="SELL" >
													
													</div>
												</div>

											</div>
										</div>
									</div>
									
									<div class="panel-body" style="height: 50px">
										<div class="form-group">
											<label class="control-label col-md-3">거래</label>
											<div class="col-lg-4">
												<div id="spinner1" style="width: 150px;">
													<div class="input-group input-small">
														<input type="text" id="dealtype" style="background-color: WhiteSmoke;"
															readonly="">

													</div>
												</div>
											</div>
										</div>
									</div>
								
								
								
								
								
									<div class="panel-body" style="height: 50px">
										<div class="form-group">
											<label class="control-label col-md-3" input type="">날짜</label>
											<div class="col-lg-4">
												<div id="spinner1" style="width: 150px;">
													<div class="input-group input-small">
														<input type="date" id="today" style="width: 162px;">
								<!-- 			<input class="form-control form-control-inline input-medium default-date-picker" size="16" type="text" value=""> -->
													</div>
												</div>

											</div>
										</div>
									</div>



									<div class="panel-body" style="height: 50px">
										<div class="form-group">
											<label class="control-label col-md-3">수량(kg)</label>
											<div class="col-lg-4">
												<div id="spinner1" style="width: 150px">
													<div class="input-group input-small">
														<input type="text" id="quantity"style="background-color: White;">

													</div>
												</div>

											</div>
										</div>
									</div>

									<div class="panel-body" style="height: 50px">
										<div class="form-group">
											<label class="control-label col-md-3">가격(￦)</label>
											<div class="col-lg-4">
												<div id="spinner1" style="width: 150px">
													<div class="input-group input-small">
														<input type="text" id="price" value=${todayprice} style="background-color: WhiteSmoke;"
															readonly="">

													</div>
												</div>

											</div>
										</div>
									</div>

									<div class="panel-body" style="height: 50px">
										<div class="form-group">
											<label class="control-label col-md-3">총액(￦)</label>
											<div class="col-lg-4">
												<div id="spinner1" style="width: 150px">
													<div class="input-group input-small">
														<input type="text" id="totalprice" style="background-color: WhiteSmoke;"
															readonly="">

													</div>
												</div>

											</div>
										</div>
									</div>
									<div class="panel-body" style="height: 50px">
										<div class="form-group">
											<label class="control-label col-md-3"></label>
											<div class="col-lg-4">
											<button type="button" id="confirmbtn" style="width: 162px; height:30px;">
												<i class="fa fa-gavel"></i> Confirm
											</button>
											</div>
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
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 70%">
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

	<!-- Placed js at the end of the document so the pages load faster -->

	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate.js"></script>

	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/bootstrap-switch.js"></script>
	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<!--Sparkline Chart-->
	<script src="js/sparkline/jquery.sparkline.js"></script>
	<!--jQuery Flot Chart-->
	<script src="js/flot-chart/jquery.flot.js"></script>
	<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot-chart/jquery.flot.resize.js"></script>
	<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

	<!-- icheck -->
	<script src="js/iCheck/jquery.icheck.js"></script>
	<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>

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


	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>

	<script src="js/toggle-init.js"></script>

	<script src="js/advanced-form.js"></script>
	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>
	<!--Sparkline Chart-->
	<script src="js/sparkline/jquery.sparkline.js"></script>
	<!--jQuery Flot Chart-->
	<script src="js/flot-chart/jquery.flot.js"></script>
	<script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot-chart/jquery.flot.resize.js"></script>
	<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>

	<!--script for this page only-->

	<!--icheck init -->
	<script src="js/icheck-init.js"></script>
	<!-- END JAVASCRIPTS -->
	<script type="text/javascript">
	

    
	$(function() {
		
		//날짜가져오기
		  var now = new Date();
	      var year= now.getFullYear();
	      var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
	      var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
	              
	      var chan_val = year + '-' + mon + '-' + day;
	      $('#today').val(chan_val);
		
	   //총합계산하기
	   
	   
	   	  var stringPrice = $('#price').val();
	   	  var stringQuantity="";
	      $('#quantity').on('keyup', function() {
		   stringQuantity= $('#quantity').val();
	   	  var numberPrice = parseInt(stringPrice);
	   	  var numberQuantity = parseInt(stringQuantity);
	   		  
	   	  var numberTotal = numberPrice*numberQuantity;
	   	  var stringTotal = numberTotal.toString();
	   	  
	   	  $('#totalprice').val(stringTotal);
		      
	   
		      });
	   	 
	    //최근 가격 가져오기
	    
	   
   $("#today").change(function(){
      
	   var todayval = $('#today').val();
	    var rmname = "${rmname}";
	    
	    var daytext = {
	         'daytext' : todayval,
	         'nametext' : rmname
	    }
	    $.ajax({
	         url : 'gettodayprice',
	         method : 'get',
	         data : daytext,
	         dataType : 'json',
	         success : function(respp) {
	        	 alert("과거의 가격을 가져옵니다.");
	        	 console.log(respp);
	        	 $('#price').val(respp);
	            /* var searchResult = RMStringFunction(respp);
	            $('#rmTable').html(searchResult);
	            trRMFunction(); */
	         },
	         error : function() {
	            alert('가격에러입니다.');
	         }
	      });
  		});
	

		//재료 바꾸기
		$('#RMsearch').change(function(){
			var RM = $(this).val();
			location.href = '${pageContext.request.contextPath}/chartdata?rmname='+RM;
		});
		
		
		//거래완료버튼
		$('#confirmbtn').on('click', function(){
			var rmname = "${rmname}";
			var dealtype = $('#dealtype').val();
			var dealdate = $('#today').val();
			var quantity = $('#quantity').val();
			var price = $('#price').val();
			var totalprice= $('#totalprice').val();
			location.href = 'dealconfirm?dealtype='+dealtype+
							'&dealdate='+dealdate+
							'&quantity='+quantity+
							'&price='+price+
							'&totalprice='+totalprice+
							'&rmname='+rmname;

		});	
		
		//구매버튼액션
		$('#buybutton').on('click', function(){
			$('#buybutton').css('background-color', 'red');
			$('#buybutton').css('color', 'white');
			$('#sellbutton').css('background-color', 'white');
			$('#sellbutton').css('color', 'black');
			var type = $('#buybutton').val();
			$('#dealtype').val(type);
		});	
		
		//판매버튼액션
		$('#sellbutton').on('click', function(){
			$('#sellbutton').css('background-color', '#0000cc');
			$('#sellbutton').css('color', 'white');
			$('#buybutton').css('background-color', 'white');
			$('#buybutton').css('color', 'black');
			var type = $('#sellbutton').val();
			$('#dealtype').val(type);
		});	
			
		
	});
    

</script>

</body>
</html>
