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

<meta http-equiv=”X-UA-Compatible” content=”IE=EmulateIE9”>
<meta http-equiv=”X-UA-Compatible” content=”IE=9”>

<style>
#chartdiv{
  width: 100%;
  height: 500px;
}

.amcharts-graph-g2 .amcharts-graph-stroke {
  stroke-dasharray: 3px 3px;
  stroke-linejoin: round;
  stroke-linecap: round;
  -webkit-animation: am-moving-dashes 1s linear infinite;
  animation: am-moving-dashes 1s linear infinite;
}

@-webkit-keyframes am-moving-dashes {
  100% {
    stroke-dashoffset: -31px;
  }
}
@keyframes am-moving-dashes {
  100% {
    stroke-dashoffset: -31px;
  }
}


.lastBullet {
  -webkit-animation: am-pulsating 1s ease-out infinite;
  animation: am-pulsating 1s ease-out infinite;
}
@-webkit-keyframes am-pulsating {
  0% {
    stroke-opacity: 1;
    stroke-width: 0px;
  }
  100% {
    stroke-opacity: 0;
    stroke-width: 50px;
  }
}
@keyframes am-pulsating {
  0% {
    stroke-opacity: 1;
    stroke-width: 0px;
  }
  100% {
    stroke-opacity: 0;
    stroke-width: 50px;
  }
}

.amcharts-graph-column-front {
  -webkit-transition: all .3s .3s ease-out;
  transition: all .3s .3s ease-out;
}
.amcharts-graph-column-front:hover {
  fill: #496375;
  stroke: #496375;
  -webkit-transition: all .3s ease-out;
  transition: all .3s ease-out;
}

.amcharts-graph-g3 {
  stroke-linejoin: round;
  stroke-linecap: round;
  stroke-dasharray: 500%;
  stroke-dasharray: 0 /;    /* fixes IE prob */
  stroke-dashoffset: 0 /;   /* fixes IE prob */
  -webkit-animation: am-draw 40s;
  animation: am-draw 40s;
}
@-webkit-keyframes am-draw {
    0% {
        stroke-dashoffset: 500%;
    }
    100% {
        stroke-dashoffset: 0%;
    }
}
@keyframes am-draw {
    0% {
        stroke-dashoffset: 500%;
    }
    100% {
        stroke-dashoffset: 0%;
    }
}
/* OVERWRITE OUR MAIN STYLE */
.demo-flipper-front.demo-panel-white, body {
  background-color: white;
}									
</style>

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
    
    <link rel="stylesheet"
	href="https://cdn.anychart.com/css/7.14.3/anychart-ui.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://cdn.anychart.com/js/7.14.3/anychart-bundle.min.js"></script>
<script src="http://www.google.com/jsapi?ext.js"></script>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />

<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<script>


/*여기서부터 정규분포  */
 
 	var chartData =${chartData};
 
	/* var chartData = "["; 
		$.each(${disList}, function(index, item){
			chartData += '{';
			chartData += '"category" : ' + '"' + item[1] + '", ';
			chartData += '"distance" : ' + '"' + item[0] + '", ';
			chartData += '"duration" : ' + '"' + item[0] + '"';
			chartData +='},';
		});
		chartData += '{';
		chartData += '"category" : ' + '"' + 135 + '", ';
		chartData += '"distance" : ' + '"' + 0 + '", ';
		chartData += '"duration" : ' + '"' + 0 + '"';
		chartData +='}';
		chartData += "];";
		
		console.log(chartData);
	 */
	 /*
	{
		"category" : "121",
		"distance" : ${disList.get(0)}, // 막대 그래프
		"duration" : ${disList.get(0)}//선그래프
	}, 
	
	{
		"category" : "122",
		"distance" : ${disList.get(1)},
		"duration" : ${disList.get(1)}
	}, {
		"category" : "123",
		"distance" : ${disList.get(2)},
		"duration" : ${disList.get(2)}
	}, {
		"category" : "124",
		"distance" : ${disList.get(3)},
		"duration" : ${disList.get(3)}
	}, {
		"category" : "125",
		"distance" : ${disList.get(4)},
		"duration" : ${disList.get(4)},
		"townName" : "규격 하한",
		"townName2" : "LSL ${ramen.lsl}g",
		"townSize" : 18,
		"latitude" : 400,
		"alpha" : 0.4,
		"bulletClass" : "lastBullet"
	}, {
		"category" : "126",
		"distance" : ${disList.get(5)},
		"duration" : ${disList.get(5)},
	}, {
		"category" : "127",
		"distance" : ${disList.get(6)},
		"duration" : ${disList.get(6)}
	}, {
		"category" : "128",
		"distance" : ${disList.get(7)},
		"duration" : ${disList.get(7)}
	}, {
		"category" : "129",
		"distance" : ${disList.get(8)},
		"duration" : ${disList.get(8)}
	}, {
		"category" : "130",
		"townName" : "규격 상한",
		"townName2" : "USL ${ramen.usl}g",
		"townSize" : 18,
		"latitude" : 400,
		"alpha" : 0.4,
		"bulletClass" : "lastBullet",
		"distance" : ${disList.get(9)},
		"duration" : ${disList.get(9)}
		
	}, 
	{
		"category" : "131",
		"distance" : ${disList.get(10)},
		"duration" : ${disList.get(10)}
	}, {
		"category" : "132",
		"distance" : ${disList.get(11)},
		"duration" : ${disList.get(11)},
	}, {
		"category" : "133",
		"distance" : ${disList.get(12)},
		"duration" : ${disList.get(12)},
		
	}, {
		"category" : "134",
		"distance" : ${disList.get(13)},
		"duration" : ${disList.get(13)},
		"bulletClass" : "lastBullet"
	}, {
		"category" : "135",
		"distance" : ${disList.get(14)},
		"duration" : ${disList.get(14)},
	}];
	*/
	
	/*
	var chartData = [{
		"category" : "1",
		"distance" : ${disList.get(0)}, // 막대 그래프
		"duration" : ${disList.get(3)}//선그래프
	}, {
		"category" : "2",
		"distance" : ${disList.get(1)},
		"duration" : ${disList.get(2)}
	}, {
		"category" : "3",
		"distance" : ${disList.get(2)},
		"duration" : ${disList.get(1)}
	}, {
		"category" : "4",
		"distance" : ${disList.get(3)},
		"duration" : ${disList.get(0)}
	}];
	*/
	/*
	var chart = AmCharts.makeChart("chartdiv", {
		"type" : "serial",
		"theme" : "light",
		"categoryField" : "category",
		"graphs" : [{"balloonText": "[[title]] of [[category]]:[[value]]",
					 "fillAlphas": 1,
					 "id": "AmGraph-1",
					 "labelText": "[[value]]",
					 "title": "graph 1",
					 "type": "column",
					 "valueField": "distance"}, 
					
					 {"balloonText": "[[title]] of [[category]]:[[value]]",
					  "bullet": "round",
					  "id": "AmGraph-2",
					  "labelText": "[[value]]",
					  "lineThickness": 2,
					  "title": "graph 2",
					  "valueField": "duration"}],
					  
		"dataProvider" : chartData,
	});
	*/
	
	
	
	var chart = AmCharts.makeChart("chartdiv", {
		"type" : "serial",
		"theme" : "light",

		"dataProvider" : chartData,

		"addClassNames" : true,
		"startDuration" : 1,
		//"color": "#FFFFFF",
		"marginLeft" : 0,

		"categoryField" : "category",
		"categoryAxis" : {
			"autoGridCount" : false,
			"gridCount" : 200,
			"gridAlpha" : 0.1,
			"gridColor" : "#FFFFFF",
			"axisColor" : "#555555",
		},

		"valueAxes" : [ {
			"id" : "a1",
			"title" : "Production Amount",
			"gridAlpha" : 0,
			"axisAlpha" : 0
		},/*  {
			"id" : "a2",
			"position" : "right",
			"gridAlpha" : 0,
			"axisAlpha" : 0,
			"labelsEnabled" : true
		}, */  /* {
			"id" : "a3",
			"title" : "duration",
			"position" : "right",
			"gridAlpha" : 0,
			"axisAlpha" : 0,
			"inside" : true,
		} */  ], // 날짜 부문 생략
		"graphs" : [ {
			"id" : "g1",
			"valueField" : "distance",
			"title" : "Production Amount",
			"type" : "column",
			"fillAlphas" : 0.9,
			"valueAxis" : "a1",
			"balloonText" : "[[value]] EA",
			"legendValueText" : "[[value]] EA",
			"legendPeriodValueText" : "total: [[value.sum]] EA",
			"lineColor" : "#4B73E1",
			"alphaField" : "alpha"
		}, {
			"id" : "g2",
			"valueField" : "latitude",
			"classNameField" : "bulletClass",
			"title" : "LCL/UCL",
			"type" : "line",
			"valueAxis" : "a2",
			"lineColor" : "#786c56",
			"lineThickness" : 1,
			"legendValueText" : "[[value]]/[[description]]",
			"descriptionField" : "townName",
			"bullet" : "round",
			"bulletSizeField" : "50",
			"bulletBorderColor" : "#786c56",
			"bulletBorderAlpha" : 1,
			"bulletBorderThickness" : 2,
			"bulletColor" : "#000000",
			"labelText" : "[[townName2]]",
			"labelPosition" : "top",
			"balloonText" : "latitude:[[value]]",
			"showBalloon" : true,
			"animationPlayed" : true
		}, {
			"id" : "g3",
			"title" : "Normal distribution",
			"valueField" : "duration",
			"type" : "line",
			"valueAxis" : "a3",
			"lineColor" : "#FF607F",
			"balloonText" : "[[value]]",
			"lineThickness" : 1,
			"legendValueText" : "[[value]]",
			"bullet" : "square",
			"bulletBorderColor" : "#B9062F",
			"bulletBorderThickness" : 1,
			"bulletBorderAlpha" : 1,
			"dashLengthField" : "dashLength",
			"animationPlayed" : true
		} ],

		"chartCursor" : {
			"zoomable" : false,
			"cursorAlpha" : 0,
			"valueBalloonsEnabled" : false
		},
		"legend" : {
			"bulletType" : "round",
			"equalWidths" : false,
			"valueWidth" : 120,
			"useGraphSettings" : true,
		//"color": "#FFFFFF"
		}
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
								class="fa fa-laptop"></i> <span>생산 부문</span>
							</a>
							<ul class="sub">
								<li><a href="pro_Fac?f_num=1&r_num=p01_1&line_num=A1&f_name=1st Factory">제 1공장 정보</a></li>
								<li><a href="pro_Fac?f_num=2&r_num=p04_1&line_num=D1&f_name=2nd Factory">제 2공장 정보</a></li>
								<li><a href="pro_Gradient">선형회귀분석</a></li>
								<li><a href="pro_RegistForm">생산정보입력</a></li>
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

	<!--메인은 여기다가 추가 후 사용!  -->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-sm-6">
					<section class="panel">
						<!--   <header class="panel-heading">
                        Factory Information
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header> -->
						<div class="panel-body">
							<div class="row prd-row">
								<div class="col-md-6">
									<div class="prd-img" style="width: 260px;">
									<c:if test="${factory.fac_num == 1}">
									<img src="images/anyangfactory.jpg" alt="">
									</c:if>
									<c:if test="${factory.fac_num ==2 }">
										<img src="images/ansungfactory.jpg" alt="">
									</c:if>
									</div>
								</div>
								<div class="col-md-6">
									<h1>${factory.fac_name}</h1>
									<p class="normal">${factory.fac_address}</p>
									<p>TEL : ${factory.fac_tel}</p>
									<div class="price">
										<div>
											<h1>생산 달성률: ${operating}%</h1>
										</div>
										<c:if test="${operating >= 90 }">
											<p class="terques">Total Manufacture status: GOOD</p>
											<h1>GOOD</h1>
										</c:if>
										<c:if test="${operating <90 }">
											<p class="terques">Total Manufacture status: NORMAL</p>

										</c:if>
									</div>
								</div>


							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-6">
					<section class="panel">
						<div class="panel-body">
							<div class="slimScrollDiv" style="overflow: auto; height: 164px">
								<table class="table table-hover general-table">
									<thead>
										<tr>
											<th style="text-align: center">상품명</th>
											<th class="hidden-phone" style="text-align: center">생산라인</th>
											<th style="text-align: center">총 생산량</th>
											<th style="text-align: center">상태</th>
											<th style="text-align: center">생산달성률</th>
										</tr>
									</thead>
									<tbody>
									<!--1공장인 경우 해당 데이터 출력  -->
									<c:if test="${f_num == 1}">
										<c:forEach var="item" items="${ramenList}">
											<tr>
												<td style="text-align: center"><a href="pro_Fac?f_num=${f_num}&r_num=${item.r_num}&f_name=1st Factory&line_num=${item.line_num}">${item.r_name}</a></td>
												<td class="hidden-phone" style="text-align: center">${item.line_num}</td>
												<td style="text-align: center">${item.recentAmount}</td>
												<c:if test="${item.recentAmount/2500*100 >= 90}">
													<td><span class="label label-success label-mini">Good</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-success"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.recentAmount/2500*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if
													test="${item.recentAmount/2500*100 < 90 and item.recentAmount/2500*100 >= 85 }">
													<td><span class="label label-info label-mini">Normal</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-info"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.recentAmount/2500*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if test="${item.recentAmount/2500*100 < 85}">
													<td><span class="label label-warning label-mini">Bad</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-warning"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.recentAmount/2500*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
											</tr>
										</c:forEach>
										</c:if>
										
										<!--2공장인 경우 해당 데이터 출력  -->
										<c:if test="${f_num == 2}">
										<c:forEach var="item" items="${ramenList}">
											<tr>
												<td style="text-align: center"><a href="pro_Fac?f_num=${f_num}&r_num=${item.r_num}&f_name=2nd Factory&line_num=${item.line_num}">${item.r_name}</a></td>
												<td class="hidden-phone" style="text-align: center">${item.line_num}</td>
												<td style="text-align: center">${item.recentAmount}</td>
												<c:if test="${item.recentAmount/2500*100 >= 90}">
													<td><span class="label label-success label-mini">Good</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-success"
																role="progressbar" aria-valuenow="30" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.recentAmount/2500*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if
													test="${item.recentAmount/2500*100 < 90 and item.recentAmount/2500*100 >= 85 }">
													<td><span class="label label-info label-mini">Normal</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-info"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.recentAmount/2500*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
												<c:if test="${item.recentAmount/2500*100 < 85}">
													<td><span class="label label-warning label-mini">Bad</span></td>
													<td>
														<div class="progress progress-striped active progress-sm">
															<div class="progress-bar progress-bar-warning"
																role="progressbar" aria-valuenow="80" aria-valuemin="0"
																aria-valuemax="100"
																style="width: ${item.recentAmount/2500*100}%">
																<span class="sr-only"> 50%Complete</span>
															</div>
														</div>
													</td>
												</c:if>
											</tr>
										</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3">
					<section class="panel" style="height: 550px;">
						<div class="panel-body">
							<div class="carousel-inner">
								<div style="text-align: center">
									<h5>Product Information</h5>
									<img src="${ramen.imageurl}"
										style="width: 200px; height: 200px;">
								</div>
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Factor</th>
											<th>Detail</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>상품 이름</td>
											<td>${ramen.r_name}</td>
										</tr>
										<tr>
											<td>규격 상한</td>
											<td>${ramen.usl}g</td>
										</tr>
										<tr>
											<td>규격 하한</td>
											<td>${ramen.lsl}g</td>
										</tr>
										<tr>
											<td>생산달성률</td>
											<td>${ramen.recentAmount/2500*100}%</td>
										</tr>
									</tbody>
								</table>
								<c:if test="${ramen.recentAmount/2500*100 >= 90}">
									<h3>현재 상태 : Good</h3>
									<img alt="" src="images/good.png"
										style="width: 50px; heigh: 30px;">
								</c:if>
								<c:if
									test="${ramen.recentAmount/2500*100 < 90 and ramen.recentAmount/2500*100 >= 85}">
									<h3>현재 상태 : Normal</h3>
									<img alt="" src="images/normal.png"
										style="width: 50px; heigh: 30px;">
								</c:if>
								<c:if test="${ramen.recentAmount/2500*100 < 85}">
									<h3>현재 상태 : Bad</h3>
									<img alt="" src="images/bad.png"
										style="width: 50px; heigh: 30px;">
								</c:if>
							</div>
						</div>
					</section>
				</div>

				<div class="col-lg-6">
					<!--earning graph start-->
					<section class="panel">
						<div class="panel-body">
							<!--여기에 정규분포 그래프  -->
							<h5 style="text-align: center;">Normal Distribution</h5>
							<div id="chartdiv" style="width: 600px; height: 485px;"></div>
						</div>
					</section>
					<!--earning graph end-->
				</div>
				<div class="col-lg-3">
					<section class="panel">
						<div class="panel-body">
							<h5 style="text-align: center;">Detail</h5>
							<div class="pricing-table most-popular" style="height: 475px;">
								<div class="pricing-head">
									<h1>Sigma</h1>
								</div>
								<div class="pricing-quote">
									${sigma}σ
									<p>${yesterday}</p>
								</div>
								<ul class="list-unstyled">
									<li><i class="fa fa-check"></i> 평균 : ${mean}g</li>
									<li><i class="fa fa-check"></i> 표준편차: ${std}</li>
									<li><i class="fa fa-check"></i> 불량률: 약 ${faultrate}%</li>
									<li><i class="fa fa-check"></i> 불량갯수:
										${fault}/${ramen.recentAmount}(EA)</li>
								</ul>
							</div>
						</div>
					</section>
				</div>

			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<!-- <span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span> -->
						<div class="mini-stat-info" style="height: 60px;">
							<span>
							<img src="images/workeff.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">
							<button data-original-title="작업 효율" data-content="작업 효율에 대한 설명이 들어가는 곳이랍니다." data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">${workeff}%</button>
							</span>
							<p style="margin-left: 17px; ">작업효율</p>
						</div>
						
					</div>
				</div>
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<!-- <span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span> -->
						<div class="mini-stat-info" style="height: 60px;">
							<span>
							<img src="images/workeff.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">
							<button data-original-title="종합설비가동률" data-content="종합설비가동률에 대한 설명이 들어가는 곳이랍니다." data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">${totalrate}%</button>
							</span>
							<p style="margin-left: 17px; ">종합설비가동률</p>
						</div>
						
					</div>
				</div>
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<!-- <span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span> -->
						<div class="mini-stat-info" style="height: 60px;">
							<span>
							<img src="images/workeff.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">
							<button data-original-title="시간가동률" data-content="시간가동률에 대한 설명이 들어가는 곳이랍니다." data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">${timeeff}%</button>
							</span>
							<p style="margin-left: 17px; ">시간가동률</p>
						</div>
						
					</div>
				</div>
				<div class="col-md-3">
					<div class="mini-stat clearfix">
						<!-- <span class="mini-stat-icon orange"><i class="fa fa-gavel"></i></span> -->
						<div class="mini-stat-info" style="height: 60px;">
							<span>
							<img src="images/workeff.png" style="width: 50px; height: 50px; margin-left: 20px; margin-top:0;">
							<button data-original-title="성능가동률" data-content="성능가동률에 대한 설명이 들어가는 곳이랍니다." data-placement="top" data-trigger="hover" class="btn btn-info popovers" style="font-size: 30px; color: gray; background-color: white; border-color: white; margin-left: 10px;">${performeff}%</button>
							</span>
							<p style="margin-left: 17px; ">성능가동률</p>
						</div>
						
					</div>
				</div>
			</div>
			<!--mini statistics end-->
		</section>
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
	<script src="js/jquery.scrollTo/jquery.scrollTo.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="js/gauge/gauge.js"></script>
	<script type="text/javascript" src="js/gritter/js/jquery.gritter.js"></script>
	<!--Easy Pie Chart-->
	<script src="js/easypiechart/jquery.easypiechart.js"></script>



	<!--Morris Chart-->
	<script src="js/morris-chart/morris.js"></script>
	<script src="js/morris-chart/raphael-min.js"></script>
	<!--jQuery Flot Chart-->
	<script src="js/dashboard.js?version=1"></script>
	<script src="js/jquery.customSelect.min.js?version=1"></script>
	<!--common script init for all pages-->
	<script src="js/scripts.js"></script>
	<!--script for this page-->
	<script src="js/gritter.js" type="text/javascript"></script>
	
	<!--Core js-->
<script src="js/jquery.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="js/gritter/js/jquery.gritter.js"></script>
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

<!--script for this page-->
<script src="js/gritter.js" type="text/javascript"></script>
</body>
</html>