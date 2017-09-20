<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>

<body>

<section id="container" >
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">

    <a href="index.html" class="logo">
        <img src="images/logo.png" alt="">
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
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-tasks"></i>
                <span class="badge bg-success">8</span>
            </a>
            <ul class="dropdown-menu extended tasks-bar">
                <li>
                    <p class="">You have 8 pending tasks</p>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Target Sell</h5>
                                <p>25% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="45">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Product Delivery</h5>
                                <p>45% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="78">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Payment collection</h5>
                                <p>87% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="60">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Target Sell</h5>
                                <p>33% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="90">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>

                <li class="external">
                    <a href="#">See All Tasks</a>
                </li>
            </ul>
        </li>
        <!-- settings end -->
        <!-- inbox dropdown start-->
        <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-envelope-o"></i>
                <span class="badge bg-important">4</span>
            </a>
            <ul class="dropdown-menu extended inbox">
                <li>
                    <p class="red">You have 4 Mails</p>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="images/avatar-mini.jpg"></span>
                                <span class="subject">
                                <span class="from">Jonathan Smith</span>
                                <span class="time">Just now</span>
                                </span>
                                <span class="message">
                                    Hello, this is an example msg.
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="images/avatar-mini-2.jpg"></span>
                                <span class="subject">
                                <span class="from">Jane Doe</span>
                                <span class="time">2 min ago</span>
                                </span>
                                <span class="message">
                                    Nice admin template
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="images/avatar-mini-3.jpg"></span>
                                <span class="subject">
                                <span class="from">Tasi sam</span>
                                <span class="time">2 days ago</span>
                                </span>
                                <span class="message">
                                    This is an example msg.
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="images/avatar-mini.jpg"></span>
                                <span class="subject">
                                <span class="from">Mr. Perfect</span>
                                <span class="time">2 hour ago</span>
                                </span>
                                <span class="message">
                                    Hi there, its a test
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">See all messages</a>
                </li>
            </ul>
        </li>
        <!-- inbox dropdown end -->
        <!-- notification dropdown start-->
        <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                <i class="fa fa-bell-o"></i>
                <span class="badge bg-warning">3</span>
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

            </ul>
        </li>
        <!-- notification dropdown end -->
    </ul>
    <!--  notification end -->
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/avatar1_small.jpg">
                <span class="username">John Doe</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
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
                        <li><a href="Pur_inform">상품디테일</a></li>
                        <li><a href="Pur_chart">상품구매(구매부직원만)</a></li>
                        <li><a href="Pur_orders">주문내역</a></li>
                        <li><a href="Pur_orderform1">invoice작성</a></li>
                        <li><a href="Pur_profitloss">구매부 실적(거래내역)</a></li>
                        <li><a href="Pur_store">상품재고</a></li>
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
                <div class="col-lg-6">
                    <section class="panel">
                        <header class="panel-heading">
                            	invoice작성-step1
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-cog" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal " id="commentForm" method="get" action="">
                                    
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">신청인</label>
                                        <div class="col-lg-6">
                                        <a data-toggle="modal" href="#myModal2">
                                            <input class="form-control " id="staffName" type="text" style="color: black;" readonly="readonly" required />
                                        </a>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">신청부서</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="staffDepartment" type="text" style="color: black;" readonly="readonly" required/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">주문일자</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="orderdate" type="date" style="color: black;" name="url" readonly="readonly" required/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">이메일</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="staffemail" type="text" style="color: black;" name="url" readonly="readonly" required/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3" >전화번호</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="stafftel" type="text" style="color: black;" name="url" readonly="readonly" required/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3" >기타주문사항</label>
                                        <div class="col-lg-6">
                                            <textarea class="form-control " id="staffetc" name="comment" style="color: black;" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary" type="submit" id="completeform">작성완료</button>
                                            <button class="btn btn-default" type="button">다시작성</button>
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
                            	주문품목작성
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-cog" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                    <div class="panel-body">
                        <table class="table  table-hover general-table" id="RmOrderTable">
                            <thead>
                            <tr>
                                <th>상품이름</th>
                                <th class="hidden-phone">주문수량</th>
                                <th>현재가</th>
                                <th>재고량</th>
                                <th style="width: 40px"></th>
                            </tr>
                            </thead>
                            <tbody id="OTtbody">
										<!-- <tr>
											<td><input type='text' style="width: 120px;" value='' readonly="readonly"/></td>
											<td><input type='text' style="width: 100px;" value='' /></td>
											<td><input type='text' style="width: 100px;" value='' readonly="readonly"/></td>
											<td><input type='text' style="width: 100px;" value='' readonly="readonly"/></td>
											<td><input type='text' style="width: 100px;" value='' readonly="readonly"/></td>
											<td style="width: 40px">
												<button type="button" class="btn btn-primary" style="width: 38px">
													<i class="fa  fa-minus-square"></i>&nbsp;&nbsp;
												</button>
											</td>
										</tr> -->



							</tbody>
							</table>
							<table class="table  table-hover general-table">
							<tbody>
							<tr>
                            <td style="width: 120px;"></td>
                            <td style="width: 100px;"></td>
                            <td style="width: 100px;"></td>
                            <td style="width: 100px;"></td>
                            <td style="width: 40px;">
                            <a data-toggle="modal" href="#myModal2">
                            	<button type="button" class="btn btn-default tooltips" id="add-Btn" style="width: 38px"><i class="fa  fa-plus-square"></i>&nbsp;&nbsp;</button>
                            </a>
                            </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                
                
                <div class="panel-body">
                        
                        <!-- Modal -->
                        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" id="modalclose2" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">재료정보</h4>
                                    </div>
                                    
                                    
                                    
                                    <div class="modal-body">
                                        
                                    </div>

                                    <div class="modal-footer">
                                        <button data-dismiss="modal" class="btn btn-default" id="modalclose1" type="button">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- modal -->
                    </div>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
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


<script type="text/javascript" src="js/jquery.validate.min.js"></script>

<!--common script init for all pages-->
<script src="js/scripts.js"></script>
<!--this page script-->
<script src="js/validation-init.js"></script>

<script type="text/javascript">

	$(function() {
		$('#add-Btn').on('click', AddFunction);

		$(document).on("click", ".btn-primary", function(){ 
			$(this).parent().parent().remove();
			
		});
		
		$('#completeform').on('click', CompleteformFunction);
		
		$('#staffName').on('click', staffSearchFunction);
		
		});
		
	//오늘날짜가져오기
	var now = new Date();
    var year= now.getFullYear();
    var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
    var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
            
    var chan_val = year + '-' + mon + '-' + day;
    $('#orderdate').val(chan_val);
	
	
	function AddFunction(){
		
		var TRindex = $('#RmOrderTable tr').length;
		if(TRindex > 8){
			alert("최대 8개까지 주문가능");
			return false;
		} 
		
		/* var newrow = '<tr>';
		newrow +='<td><input type="text" id="nameid'+TRindex+'" class="orderrmname" name="orderrmname" style="width: 120px; " readonly="readonly"/></td>';
		newrow +='<td><input type="text" id="quanid'+TRindex+'" class="orderquantity" name="orderquantity" style="width: 100px; "  /></td>';
		newrow +='<td><input type="text" id="priceid'+TRindex+'" class="orderprice" name="orderprice" style="width: 100px; "  readonly="readonly"/></td>';
		newrow +='<td><input type="text" class="orderstock" name="orderstock" style="width: 100px; "  readonly="readonly"/></td>';
		newrow +='<td style="width: 40px">';
		newrow +='<button id="TrRemove" type="button" class="btn btn-primary" style="width: 38px">';
		newrow +='<i class="fa  fa-minus-square"></i>';
		newrow +='</button>';
		newrow +='</td>';
		newrow +='</tr>';

		
		$("#RmOrderTable").append(newrow); */
		
		$.ajax({
		      url : 'RMinform',
		      method : 'POST',
		      dataType : 'json',
		      success : RMBootString,
		      error : function() {
		         alert('재료정보 가져오기 에러입니다.');
		      }
		   });

	}
	
	
	
	
	//재료 modal을 띄우기
	function RMBootString(resp) {	
		   var rmInform = '<form><div class="row">'
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
		         + '<th>재료코드</th><th class="hidden-phone">재료명</th>'
		         + '<th>재고수량</th></tr>'
		         + '</thead><tbody id = "rmTable">'
		         + RMStringFunction(resp);
		   $('.modal-body').html(rmInform);
		   
		     $('#searchText1').on('keyup', function() {
		      var rmname = $('#searchText1').val();
		      var searchText = {
		         'searchText' : rmname
		      }
		      $.ajax({
		         url : 'popupRMsearch',
		         method : 'get',
		         data : searchText,
		         dataType : 'json',
		         success : function(respp) {
		            var searchResult = RMStringFunction(respp);
		            $('#rmTable').html(searchResult);
		            trRMFunction();
		         },
		         error : function() {
		            alert('에러입니다.');
		         }
		      });
		   });
		   trRMFunction();  
		}
	
	// 재료 클릭시 작동하는 이벤트
	function trRMFunction() {
		   $('#searchTable tr').on('click', function() {
		      var rmname = $(this).attr('id');
		      var rmstock = $(':nth-child(3)',this).text();
		      var loc = $("#RmOrderTable").children("tbody").children().last().children();
		      
		      var searchText2 = {
				         'searchText2' : rmname
				      }
		      
		      $.ajax({
			         url : 'OrderPopupRmPrice',
			         method : 'get',
			         data : searchText2,
			         dataType : 'text',
			         success : function(pricedata){	        	 
         
		      var newrow = '<tr>';
				newrow +='<td><input type="text" id="nameid'+TRindex+'" class="orderrmname" name="orderrmname" style="width: 120px; background-color:transparent;border:0 solid black;" readonly="readonly" value="' + rmname + '"/></td>';
				newrow +='<td><input type="text" id="quanid'+TRindex+'" class="orderquantity" name="orderquantity" style="width: 100px; border: 0; outline: 0; background: transparent; border-bottom: 1px solid black;" /></td>';
				newrow +='<td><input type="text" id="priceid'+TRindex+'" class="orderprice" name="orderprice" style="width: 100px; background-color:transparent;border:0 solid black;"  readonly="readonly" value="' + pricedata + '"/></td>';
				newrow +='<td><input type="text" class="orderstock" name="orderstock" style="width: 100px; background-color:transparent;border:0 solid black;"  readonly="readonly" value="' + rmstock + '"/></td>';
				newrow +='<td style="width: 40px">';
				newrow +='<button id="TrRemove" type="button" class="btn btn-primary" style="width: 38px">';
				newrow +='<i class="fa  fa-minus-square"></i>';
				newrow +='</button>';
				newrow +='</td>';
				newrow +='</tr>';
				

				
				
				$("#RmOrderTable").append(newrow); 
		    /*   loc.eq(3).text(rmstock);
		      loc.eq(0).text(rmname); */
		      
		      

		      
// 		      $('#RMstocks').text(rmstock);
// 		      $('#RMorder').text(rmname);
		      $('#modalclose1').trigger("click");
		      $('#modalclose2').trigger("click");
			            
			            
			         },
			         error : function() {
			            alert('가격정보 불러오기 에러입니다.');
			         }
			      });
		      
		      var TRindex = $('#RmOrderTable tr').length;
				if(TRindex > 8){
					alert("최대 8개까지 주문가능");
					return false;
				}
				
				
		   });
		}
	
	
	
	
	
	
	
	//modal로 재료띄운 테이블 안에 있는 내용
	function RMStringFunction(resp) {
		   var RMString = '';
		   for (var i = 0; i < resp.length; i++) {
			   RMString += '<tr id="'+resp[i].rmname+'">';
			   RMString += '<td><a href="#">'
			   RMString += resp[i].rmcode;
			   RMString += '</a></td>'
			   RMString += '<td>'
			   RMString += resp[i].rmname;
			   RMString += '</td>';
			   RMString += '<td>';
			   RMString += resp[i].rmstock;
			   RMString += '</td>';
			   RMString += '<td><span class="label label-info label-mini">Due</span></td>';
			   RMString += '<td>';
			   RMString += '<div class="progress progress-striped progress-xs">';
			   RMString += '<div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">';
			   RMString += '<span class="sr-only">40% Complete (success)</span>';
			   RMString += '</div>' + '</div>' + '</td>';
			   RMString += '</tr>';
		   }
		   RMString += '</tbody>' + '</thead>';
		   RMString += '</div>' + '</section>';
		   RMString += '</div></form>';

		   return RMString;
		}

	
	
	//직원정보 가져오기 ajax
	
	function staffSearchFunction(){
		
		$.ajax({
		      url : 'Staffinform',
		      method : 'POST',
		      dataType : 'json',
		      success : StaffBootString,
		      error : function() {
		         alert('직원정보가져오기 에러입니다.');
		      }
		   });
		
	}
	
	//직원정보 모달창
	
	function StaffBootString(resp) {	
		
		   var StaffInform = '<form><div class="row">'
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
		         + '<thead><tr>'
		         + '<th>직원코드</th><th>이름</th><th>부서</th><th>전화번호</th><th>이메일</th>'
		         + '</tr>'
		         + '</thead><tbody id = "StaffTable">'
		         + StaffStringFunction(resp);
		   $('.modal-body').html(StaffInform);
		   
		     $('#searchText3').on('keyup', function() {
		      var staffname = $('#searchText3').val();
		      var searchText3 = {
		         'searchText3' : staffname
		      }
		      $.ajax({
		         url : 'popupStaffsearch',
		         method : 'get',
		         data : searchText3,
		         dataType : 'json',
		         success : function(respp) {
		            var searchResult = StaffStringFunction(respp);
		            $('#StaffTable').html(searchResult);
		            trStaffFunction();
		         },
		         error : function() {
		            alert('에러입니다.');
		         }
		      });
		   });
		     trStaffFunction();  
		}
	
	// 직원모달창 테이블 안에 넣을 직원리스트
	function StaffStringFunction(resp) {
		   var RMString = '';
		   for (var i = 0; i < resp.length; i++) {
			   RMString += '<tr id="'+resp[i].staff_code+'">';
			   RMString += '<td><a href="#">'
			   RMString += resp[i].staff_code;
			   RMString += '</a></td>'
			   RMString += '<td>'
			   RMString += resp[i].staff_name;
			   RMString += '</td>';
			   RMString += '<td>'
			   RMString += resp[i].staff_department;
			   RMString += '</td>';
			   RMString += '<td>'
			   RMString += resp[i].staff_tel;
			   RMString += '</td>';
			   RMString += '<td>';
			   RMString += resp[i].staff_email;
			   RMString += '</td>';			
			   RMString += '</tr>';
		   }
		   RMString += '</tbody>' + '</thead>';
		   RMString += '</div>' + '</section>';
		   RMString += '</div></form>';

		   return RMString;
		}
	
	
	//직원선택시 실행되는 함수
	
	function trStaffFunction() {
		   $('#searchTable tr').on('click', function() {	   
		      var staffName = $(':nth-child(2)',this).text();
		      var staffemail = $(':nth-child(5)',this).text();
		      var stafftel = $(':nth-child(4)',this).text();
		      var staffDepartment = $(':nth-child(3)',this).text();
		      

		      $('#staffName').val(staffName);
			  $('#staffemail').val(staffemail);
			  $('#stafftel').val(stafftel);
			  $('#staffDepartment').val(staffDepartment);
		      
// 		     
		      $('#modalclose1').trigger("click");
		      $('#modalclose2').trigger("click");
		   });
		}
	
	
	
	
	

	//invoice 작성을 위해 데이터를 전송하는 함수
	
	function CompleteformFunction(){
		var staffName = $('#staffName').val();
		var staffDepartment = $('#staffDepartment').val();
		var orderdate = $('#orderdate').val();
		var staffemail = $('#staffemail').val();
		var stafftel = $('#stafftel').val();
		var staffetc = $('#staffetc').val();
		var sendrmname = new Array(); 
		var sendquantity = new Array();
		var sendprice = new Array();
		
		var TRindex = $('#RmOrderTable tr').length;
		
		for(var i = 1; i<TRindex; i++){
			var nameval = $('#nameid'+i).val();
			sendrmname.push(nameval);
		}
		
		for(var i = 1; i<TRindex; i++){
			var quanval = $('#quanid'+i).val();
			sendquantity.push(quanval);
		}
		
		for(var i = 1; i<TRindex; i++){
			var priceval = $('#priceid'+i).val();
			sendprice.push(priceval);
		}
		
		/* var senddata = {
			"staffDepartment" : staffDepartment,
			"staffName" : staffName,
			"orderdate" : orderdate,
			"staffemail" : staffemail,
			"stafftel" : stafftel,
			"staffetc" : staffetc,
			"sendrmname" : sendrmname,
			"sendquantity" : sendquantity,
			"sendprice" : sendprice,
		} */
		
		//$.post("orderdata",senddata);
		
		location.href = 'orderdata?staffDepartment='+staffDepartment+
		'&staffName='+staffName+
		'&orderdate='+orderdate+
		'&staffemail='+staffemail+
		'&stafftel='+stafftel+
		'&staffetc='+staffetc+
		'&sendrmname='+sendrmname+
		'&sendquantity='+sendquantity+
		'&sendprice='+sendprice;

	}
	
	
	
</script>
</body>
</html>
