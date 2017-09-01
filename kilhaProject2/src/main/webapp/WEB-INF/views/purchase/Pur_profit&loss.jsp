<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">

<meta http-equiv=”X-UA-Compatible” content=”IE=EmulateIE9”>
<meta http-equiv=”X-UA-Compatible” content=”IE=9”>

<link rel="shortcut icon" href="images/favicon.png">
<title>BucketAdmin</title>
<!--Core CSS -->
<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="js/jquery-ui/jquery-ui-1.10.1.custom.min.css"
	rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="js/jvector-map/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<link href="css/clndr.css" rel="stylesheet">
<!--clock css-->
<link href="js/css3clock/css/style.css" rel="stylesheet">
<!--Morris Chart CSS -->
<link rel="stylesheet" href="js/morris-chart/morris.css">
 <!--iron slider-->
    <link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.css" rel="stylesheet" />
    <link href="js/ion.rangeSlider-1.8.2/css/ion.rangeSlider.skinFlat.css" rel="stylesheet"/>

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<!-- Edittable Style css -->
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
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
						<li><a class="active" href="index.html"> <i
								class="fa fa-dashboard"></i> <span>Dashboard</span>
						</a></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-laptop"></i> <span>Layouts</span>
						</a>
							<ul class="sub">
								<li><a href="boxed_page.html">Boxed Page</a></li>
								<li><a href="horizontal_menu.html">Horizontal Menu</a></li>
								<li><a href="language_switch.html">Language Switch Bar</a></li>
							</ul></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-book"></i> <span>UI Elements</span>
						</a>
							<ul class="sub">
								<li><a href="general.html">General</a></li>
								<li><a href="buttons.html">Buttons</a></li>
								<li><a href="typography.html">Typography</a></li>
								<li><a href="widget.html">Widget</a></li>
								<li><a href="slider.html">Slider</a></li>
								<li><a href="tree_view.html">Tree View</a></li>
								<li><a href="nestable.html">Nestable</a></li>
								<li><a href="grids.html">Grids</a></li>
								<li><a href="calendar.html">Calender</a></li>
								<li><a href="draggable_portlet.html">Draggable Portlet</a></li>
							</ul></li>
						<li><a href="fontawesome.html"> <i class="fa fa-bullhorn"></i>
								<span>Fontawesome </span>
						</a></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-th"></i> <span>Data Tables</span>
						</a>
							<ul class="sub">
								<li><a href="basic_table.html">Basic Table</a></li>
								<li><a href="responsive_table.html">Responsive Table</a></li>
								<li><a href="dynamic_table.html">Dynamic Table</a></li>
								<li><a href="editable_table.html">Editable Table</a></li>
							</ul></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-tasks"></i> <span>Form Components</span>
						</a>
							<ul class="sub">
								<li><a href="form_component.html">Form Elements</a></li>
								<li><a href="advanced_form.html">Advanced Components</a></li>
								<li><a href="form_wizard.html">Form Wizard</a></li>
								<li><a href="form_validation.html">Form Validation</a></li>
								<li><a href="file_upload.html">Muliple File Upload</a></li>

								<li><a href="dropzone.html">Dropzone</a></li>
								<li><a href="inline_editor.html">Inline Editor</a></li>

							</ul></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-envelope"></i> <span>Mail </span>
						</a>
							<ul class="sub">
								<li><a href="mail.html">Inbox</a></li>
								<li><a href="mail_compose.html">Compose Mail</a></li>
								<li><a href="mail_view.html">View Mail</a></li>
							</ul></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class=" fa fa-bar-chart-o"></i> <span>Charts</span>
						</a>
							<ul class="sub">
								<li><a href="morris.html">Morris</a></li>
								<li><a href="chartjs.html">Chartjs</a></li>
								<li><a href="flot_chart.html">Flot Charts</a></li>
								<li><a href="c3_chart.html">C3 Chart</a></li>
							</ul></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class=" fa fa-bar-chart-o"></i> <span>Maps</span>
						</a>
							<ul class="sub">
								<li><a href="google_map.html">Google Map</a></li>
								<li><a href="vector_map.html">Vector Map</a></li>
							</ul></li>
						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-glass"></i> <span>Extra</span>
						</a>
							<ul class="sub">
								<li><a href="blank.html">Blank Page</a></li>
								<li><a href="lock_screen.html">Lock Screen</a></li>
								<li><a href="profile.html">Profile</a></li>
								<li><a href="invoice.html">Invoice</a></li>
								<li><a href="pricing_table.html">Pricing Table</a></li>
								<li><a href="timeline.html">Timeline</a></li>
								<li><a href="gallery.html">Media Gallery</a></li>
								<li><a href="404.html">404 Error</a></li>
								<li><a href="500.html">500 Error</a></li>
								<li><a href="registration.html">Registration</a></li>
							</ul></li>
						<li><a href="login.html"> <i class="fa fa-user"></i> <span>Login
									Page</span>
						</a></li>
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

				<!--mini statistics end-->
				<div class="row">
					<div class="col-md-12">
						<!--earning graph start-->
						<section class="panel">
							<header class="panel-heading">
								기간별 거래손익 <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="adv-table editable-table ">
									<div class="clearfix">
										<div class="form-group">
											<label class="control-label col-md-3">Date Range</label>
											<div class="col-md-4">
												<div class="input-group input-large" data-date="13/07/2013"
													data-date-format="mm/dd/yyyy">
													<input type="text" class="form-control dpd1" name="from">
													<span class="input-group-addon">To</span> <input
														type="text" class="form-control dpd2" name="to">
												</div>
												<span class="help-block">검색기간설정</span>
											</div>
										</div>
										<div class="btn-group pull-right">
											<button class="btn btn-default dropdown-toggle"
												data-toggle="dropdown">
												Tools <i class="fa fa-angle-down"></i>
											</button>
											<ul class="dropdown-menu pull-right">
												<li><a href="#">Print</a></li>
												<li><a href="#">Save as PDF</a></li>
												<li><a href="#">Export to Excel</a></li>
											</ul>
										</div>
									</div>
									<div class="space15"></div>
									<table class="table table-striped table-hover table-bordered"
										id="editable-sample">
										<thead>
											<tr>
												<th>거래일</th>
												<th>상품명</th>
												<th>매매타입</th>
												<th>수량</th>
												<th>단가</th>
												<th>총액</th>
												<th>수익금</th>
												<th>수익률</th>
												<th>잔여재고량</th>
												<th>잔여가치</th>
											</tr>
										</thead>
										<tbody>
											<tr class="">
												<td>pd-wheat-01</td>
												<td>production</td>
												<td>wheat(밀가루)</td>
												<td>2000kg</td>
												<td class="center">2017-08-28</td>
												<td><a class="edit" href="javascript:;">승인대기</a></td>
												<td><a class="delete" href="javascript:;">상세보기</a></td>
											</tr>
											<tr class="">
												<td>pd-wheat-02</td>
												<td>production</td>
												<td>wheat(밀가루)</td>
												<td>2500kg</td>
												<td class="center">2017-08-25</td>
												<td><a class="edit" href="javascript:;">처리중</a></td>
												<td><a class="delete" href="javascript:;">상세보기</a></td>
											</tr>
											<tr class="">
												<td>pd-wheat-03</td>
												<td>production</td>
												<td>wheat(밀가루)</td>
												<td>1500kg</td>
												<td class="center">2017-08-21</td>
												<td><a class="edit" href="javascript:;">처리중</a></td>
												<td><a class="delete" href="javascript:;">상세보기</a></td>
											</tr>
											<tr class="">
												<td>pd-wheat-04</td>
												<td>production</td>
												<td>wheat(밀가루)</td>
												<td>3000kg</td>
												<td class="center">2017-08-15</td>
												<td><a class="edit" href="javascript:;">처리중</a></td>
												<td><a class="delete" href="javascript:;">상세보기</a></td>
											</tr>
											<tr class="">
												<td>pd-wheat-05</td>
												<td>production</td>
												<td>wheat(밀가루)</td>
												<td>1000kg</td>
												<td class="center">2017-08-11</td>
												<td><a class="edit" href="javascript:;">처리중</a></td>
												<td><a class="delete" href="javascript:;">상세보기</a></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</section>
						<!--earning graph end-->
					</div>


			<div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        누적수익률
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                    <div class="panel-body">

                        <table class="table slider-table">
                            <tbody><tr>
                                <td>
                                    <span class="irs irs-with-grid" id="irs-1"><span class="irs"><span class="irs-line"><span class="irs-line-left"></span><span class="irs-line-mid"></span><span class="irs-line-right"></span></span><span class="irs-min" style="display: block;">$0</span><span class="irs-max" style="display: block;">$5000</span><span class="irs-from" style="left: 229.6px; display: block;">$1000</span><span class="irs-to" style="left: 951.4px; display: block;">$4000</span><span class="irs-single" style="left: 568.5px; display: none;">$1000 — $4000</span><span class="irs-diapason" style="left: 248.6px; width: 721.8px;"></span><span class="irs-slider from last" style="left: 241px;"></span><span class="irs-slider to" style="left: 962px;"></span></span><span class="irs-grid"><span class="irs-grid-pol small" style="left: 0px;"></span><span class="irs-grid-pol small" style="left: 60px;"></span><span class="irs-grid-pol small" style="left: 121px;"></span><span class="irs-grid-pol small" style="left: 182px;"></span><span class="irs-grid-pol small" style="left: 243px;"></span><span class="irs-grid-pol small" style="left: 304px;"></span><span class="irs-grid-pol small" style="left: 365px;"></span><span class="irs-grid-pol small" style="left: 426px;"></span><span class="irs-grid-pol small" style="left: 487px;"></span><span class="irs-grid-pol small" style="left: 548px;"></span><span class="irs-grid-pol small" style="left: 609px;"></span><span class="irs-grid-pol small" style="left: 670px;"></span><span class="irs-grid-pol small" style="left: 731px;"></span><span class="irs-grid-pol small" style="left: 792px;"></span><span class="irs-grid-pol small" style="left: 853px;"></span><span class="irs-grid-pol small" style="left: 914px;"></span><span class="irs-grid-pol small" style="left: 975px;"></span><span class="irs-grid-pol small" style="left: 1036px;"></span><span class="irs-grid-pol small" style="left: 1097px;"></span><span class="irs-grid-pol small" style="left: 1158px;"></span><span class="irs-grid-pol small" style="left: 1218px;"></span><span class="irs-grid-pol" style="left: 0px;"></span><span class="irs-grid-text" style="left: 0px; text-align: left;">0</span><span class="irs-grid-pol" style="left: 304px;"></span><span class="irs-grid-text" style="left: 254px;">1250</span><span class="irs-grid-pol" style="left: 609px;"></span><span class="irs-grid-text" style="left: 559px;">2500</span><span class="irs-grid-pol" style="left: 914px;"></span><span class="irs-grid-text" style="left: 864px;">3750</span><span class="irs-grid-pol" style="left: 1218px;"></span><span class="irs-grid-text" style="left: 1118px; text-align: right;">5000</span></span></span><input id="range_1" type="text" name="range_1" value="1000;4000" style="display: none;">
                                </td>
                            </tr>
                            
                        </tbody></table>


                    </div>
                </section>
            </div>
				


				</div>
				<!--mini statistics start-->

				<!--mini statistics end-->






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
	<!-- Placed js at the end of the document so the pages load faster -->
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="bs3/js/bootstrap.min.js"></script>
	<script src="js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="js/skycons/skycons.js"></script>
	<script src="js/jquery.scrollTo/jquery.scrollTo.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="js/calendar/clndr.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
	<script src="js/calendar/moment-2.2.1.js"></script>
	<script src="js/evnt.calendar.init.js"></script>
	<script src="js/jvector-map/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jvector-map/jquery-jvectormap-us-lcc-en.js"></script>
	<script src="js/gauge/gauge.js"></script>
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
	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>

	<!-- Editable_ -->
	<!--Core js-->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate.js"></script>

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

	<script src="js/ion.rangeSlider-1.8.2/js/ion-rangeSlider/ion.rangeSlider.min.js" type="text/javascript"></script>
	

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>

	<!--script for this page only-->
	<script src="js/table-editable.js"></script>

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





	<!-- END JAVASCRIPTS -->
	<script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
    
</script>
<script>
    $(document).ready(function(){
        $("#range_1").ionRangeSlider({
        min: 0,
        max: 5000,
        from: 1000,
        to: 4000,
        type: 'double',
        step: 1,
        prefix: "$",
        prettify: false,
        hasGrid: true
    });
        $("#range_2").ionRangeSlider();

        $("#range_5").ionRangeSlider({
        min: 0,
        max: 10,
        type: 'single',
        step: 0.1,
        postfix: " mm",
        prettify: false,
        hasGrid: true
    });
        $("#range_6").ionRangeSlider({
        min: -50,
        max: 50,
        from: 0,
        type: 'single',
        step: 1,
        postfix: "°",
        prettify: false,
        hasGrid: true
    });

        $("#range_4").ionRangeSlider({
        type: "single",
        step: 100,
        postfix: " light years",
        from: 55000,
        hideMinMax: true,
        hideFromTo: false
    });
        $("#range_3").ionRangeSlider({
        type: "double",
        postfix: " miles",
        step: 10000,
        from: 25000000,
        to: 35000000,
        onChange: function(obj){
            var t = "";
            for(var prop in obj) {
                t += prop + ": " + obj[prop] + "\r\n";
            }
            $("#result").html(t);
        },
        onLoad: function(obj) {
            //
        }
    });

        $("#updateLast").on("click", function(){

        $("#range_3").ionRangeSlider("update", {
            min: Math.round(10000 + Math.random() * 40000),
            max: Math.round(200000 + Math.random() * 100000),
            step: 1,
            from: Math.round(40000 + Math.random() * 40000),
            to: Math.round(150000 + Math.random() * 80000)
        });

    });
    });
</script>




	<!--script for this page-->
</body>
</html>