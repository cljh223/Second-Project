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
    <link rel="stylesheet" type="text/css" href="js/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />

    <link rel="stylesheet" type="text/css" href="js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-timepicker/css/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-colorpicker/css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
    <link rel="stylesheet" type="text/css" href="js/bootstrap-datetimepicker/css/datetimepicker.css" />

    <link rel="stylesheet" type="text/css" href="js/jquery-multi-select/css/multi-select.css" />
    <link rel="stylesheet" type="text/css" href="js/jquery-tags-input/jquery.tagsinput.css" />

    <link rel="stylesheet" type="text/css" href="js/select2/select2.css" />


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
<script type="text/javascript">




$(function(){
	$('#registBtn').on('click',function(){
		location.href = "loaddata";
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
		<aside>
			<div id="sidebar" class="nav-collapse">
				<!-- sidebar menu start-->
				<div class="leftside-navigation">
					<ul class="sidebar-menu" id="nav-accordion">
						<li><a href="index.html"> <i class="fa fa-dashboard"></i>
								<span>Dashboard</span>
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
						<li class="sub-menu"><a href="javascript:;" class="active">
								<i class="fa fa-th"></i> <span>Data Tables</span>
						</a>
							<ul class="sub">
								<li><a href="basic_table.html">Basic Table</a></li>
								<li><a href="responsive_table.html">Responsive Table</a></li>
								<li><a href="dynamic_table.html">Dynamic Table</a></li>
								<li class="active"><a href="editable_table.html">Editable
										Table</a></li>
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
				<!-- page start-->

				<div class="row">
					<div class="col-lg-8">
						<section class="panel">
							<header class="panel-heading">
								Editable Table <span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body"></div>

							<div id="container2" style="height: 700px;">
								<script>

anychart.onDocumentReady(function () {
    // create data table on loaded data
    var dataTable = anychart.data.table();
    // The data used in this sample can be obtained from the CDN
    // https://cdn.anychart.com/csv-data/csco-daily.js
    dataTable.addData(get_csco_daily_data());

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
    indicatorPlot.height('25%');

    // create BBands %B indicator with period = 30, deviation = 3
    var bBandsBIndicator = indicatorPlot.bbandsB(mapping, 30, 3);
    bBandsBIndicator.series().stroke('1.5 #6E9C4E');

    // create scroller series with mapped data
    chart.scroller().candlestick(mapping);

    // set chart selected date/time range
    chart.selectRange('1995-10-24', '1996-07-02');
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
				
				<div class="col-lg-4">
	
			<section class="panel">
                <header class="panel-heading tab-bg-dark-navy-blue ">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#home" aria-expanded="true">buy</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#about" aria-expanded="	">sell</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#profile" aria-expanded="false">revise</a>
                        </li>
                       
                    </ul>
                </header>
                <div class="panel-body">
                    <div class="tab-content">
                        <div id="home" class="tab-pane">
  
                            <div id="container2" style="height: 300px;">
								
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-default btn-lg" style="background:#ff471a; width:150px;"> 매 수 </button>
								
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-default btn-lg" style="background:#66c2ff; width:150px;"> 매 도 </button>
								
								
								<div class="col-lg-4">
								<label class="col-lg-2 col-sm-2 control-label">Search </label>
								
								
                                    <select id="e3" style="width:300px" class="populate  select2-offscreen" tabindex="-1" title="">
                                        <optgroup label="Alaskan/Hawaiian Time Zone">
                                            <option value="AK">Alaska</option>
                                            <option value="HI">Hawaii</option>
                                        </optgroup>
                                        <optgroup label="Pacific Time Zone">
                                            <option value="CA">California</option>
                                            <option value="NV">Nevada</option>
                                            <option value="OR">Oregon</option>
                                            <option value="WA">Washington</option>
                                        </optgroup>
                                        <optgroup label="Mountain Time Zone">
                                            <option value="AZ">Arizona</option>
                                            <option value="CO">Colorado</option>
                                            <option value="ID">Idaho</option>
                                            <option value="MT">Montana</option><option value="NE">Nebraska</option>
                                            <option value="NM">New Mexico</option>
                                            <option value="ND">North Dakota</option>
                                            <option value="UT">Utah</option>
                                            <option value="WY">Wyoming</option>
                                        </optgroup>
                                        <optgroup label="Central Time Zone">
                                            <option value="AL">Alabama</option>
                                            <option value="AR">Arkansas</option>
                                            <option value="IL">Illinois</option>
                                            <option value="IA">Iowa</option>
                                            <option value="KS">Kansas</option>
                                            <option value="KY">Kentucky</option>
                                            <option value="LA">Louisiana</option>
                                            <option value="MN">Minnesota</option>
                                            <option value="MS">Mississippi</option>
                                            <option value="MO">Missouri</option>
                                            <option value="OK">Oklahoma</option>
                                            <option value="SD">South Dakota</option>
                                            <option value="TX">Texas</option>
                                            <option value="TN">Tennessee</option>
                                            <option value="WI">Wisconsin</option>
                                        </optgroup>
                                        <optgroup label="Eastern Time Zone">
                                            <option value="CT">Connecticut</option>
                                            <option value="DE">Delaware</option>
                                            <option value="FL">Florida</option>
                                            <option value="GA">Georgia</option>
                                            <option value="IN">Indiana</option>
                                            <option value="ME">Maine</option>
                                            <option value="MD">Maryland</option>
                                            <option value="MA">Massachusetts</option>
                                            <option value="MI">Michigan</option>
                                            <option value="NH">New Hampshire</option><option value="NJ">New Jersey</option>
                                            <option value="NY">New York</option>
                                            <option value="NC">North Carolina</option>
                                            <option value="OH">Ohio</option>
                                            <option value="PA">Pennsylvania</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option>
                                            <option value="VT">Vermont</option><option value="VA">Virginia</option>
                                            <option value="WV">West Virginia</option>
                                        </optgroup>
                                    </select>
                                </div>
                                	
									
							</div>
                            
                            
                                    <div class="form-group">
                                        <label class="control-label col-md-3">수량</label>
                                        <div class="col-lg-4">
                                            <div id="spinner1">
                                                <div class="input-group input-small">
                                                    <input type="text" class="spinner-input form-control" maxlength="10">
                                                    <div class="spinner-buttons input-group-btn btn-group-vertical">
                                                        <button type="button" class="btn spinner-up btn-xs btn-default">
                                                            <i class="fa fa-angle-up"></i>
                                                        </button>
                                                        <button type="button" class="btn spinner-down btn-xs btn-default">
                                                            <i class="fa fa-angle-down"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                             <span class="help-block">
                                                basic example
                                             </span>
                                        </div>
                                    </div>
            
                                    <div class="form-group">
                                        <label class="control-label col-md-3">가격</label>
                                        <div class="col-lg-4">
                                            <div id="spinner1">
                                                <div class="input-group input-small">
                                                    <input type="text" class="spinner-input form-control" maxlength="10">
                                                    <div class="spinner-buttons input-group-btn btn-group-vertical">
                                                        <button type="button" class="btn spinner-up btn-xs btn-default">
                                                            <i class="fa fa-angle-up"></i>
                                                        </button>
                                                        <button type="button" class="btn spinner-down btn-xs btn-default">
                                                            <i class="fa fa-angle-down"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                             <span class="help-block">
                                                basic example
                                             </span>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="control-label col-md-3">총액</label>
                                        <div class="col-lg-4">
                                            <div id="spinner1">
                                                <div class="input-group input-small">
                                                    <input type="text" class="spinner-input form-control" maxlength="10" readonly="">
                                                    
                                                </div>
                                            </div>
                                             <span class="help-block">
                                                basic example
                                             </span>
                                        </div>
                                    </div>
                                    
                                <div class="col-lg-4">
                                <button type="button" class="btn btn-info "><i class="fa fa-refresh"></i> 결정</button>
                                <button type="button" class="btn btn-info "><i class="fa fa-refresh"></i> 취소</button>
                                </div>
                                
  
                        </div>
                        <div id="buy" class="tab-pane active">buy</div>
                        <div id="sell" class="tab-pane">sell</div>
                        <div id="revise" class="tab-pane">revise</div>
                    </div>
                </div>         
            </section>
		</div>
		</div>
					</section>
				
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

	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>
	
	<script type="text/javascript" src="js/fuelux/js/spinner.min.js"></script>
<script type="text/javascript" src="js/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

<script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="js/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="js/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>

<script type="text/javascript" src="js/jquery-multi-select/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="js/jquery-multi-select/js/jquery.quicksearch.js"></script>

<script type="text/javascript" src="js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>

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
	<script src="js/table-editable.js"></script>

	<!-- END JAVASCRIPTS -->
	<script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>

</body>
</html>
