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

<title>BucketAdmin</title>
<!--Core CSS -->
<link rel="stylesheet" type="text/css"
   href="js/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
<link rel="stylesheet" type="text/css"
   href="js/bootstrap-datepicker/css/datepicker.css" />


<link href="bs3/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-reset.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<style>
#loginForm {
   width: "250px";
   float: right;
}

#modalT {
   width: "450px";
   float: center;
   margin: 0 auto;
   text-align: center;
}

td .num {
   width: "100px";
}

.cs{
	text-align: center;
}

</style>
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
                        <li><a href="productMain">상품 비교 페이지</a></li>
                     </ul></li>         
        
                
            </ul>            </div>
        <!-- sidebar menu end-->
         </div>
      </aside>
      <!--sidebar end-->
      <section id="main-content">
         <section class="wrapper">
            <div class="row">
               <div class="col-lg-12">
                  <section class="panel">
                     <header class="panel-heading"> 출하서 </header>
                     <div class="panel-body">
                        <form class="form-horizontal bucket-form">
                           <div class="form-group">
                              <label class="col-sm-3 control-label">요청부서</label>
                              <div class="col-sm-6">
                                 <div id="deptPart">
                                 	<input type="hidden" id="processCode11" value="${processCode}">
                                    <input type="text" class="form-control" value="영업부" readonly>
                                 </div>
                                 <input type="hidden" id="dept1" value="영업부">
                              </div>

                           </div>
                           <div class="form-group">
                              <label class="col-sm-3 control-label">직원번호</label>
                              <div class="col-sm-6">
                                 <div id="staff_codePart">
                                    <input type="text" class="form-control" value="${staffCode}" readonly>
                                 </div>
                                 <input type="hidden" id="staff_code1" value="${staffCode}">
                              </div>
                           </div>
                           <div class="form-group">
                              <label class="col-sm-3 control-label">배송지</label>
                              <div class="col-sm-6">
                                 <div id="shop_namePart">${supplyList.shopName}</div>
                              </div>
                              <input type="hidden" id="shop_code" value="${shopCode}">
                           </div>
                           <div class="form-group">
                              <label class="col-sm-3 control-label">주문요청일</label>
                              <div class="col-md-4" id="deliveryDate">
                                 <div id="deliverydatePart">
                                 <input type="text" readonly value="${new_date}" size="16" class="form-control" name="deliverydate" id="deliveryDate1">
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <label class="col-sm-3 control-label">배송트럭</label>
                              <section class="panel">
                                 <div class="panel-body">
                                    <div class="col-sm-1" id="truck">
                                       <a class="btn btn-success" data-toggle="modal"
                                          href="#myModal2" id="truckClick"> 선택 </a>
                                    </div>
                                    <div id="truckMsg"></div>
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal2" tabindex="-1"
                                       role="dialog" aria-labelledby="myModalLabel"
                                       aria-hidden="true">
                                       <div class="modal-dialog">
                                          <div class="modal-content">
                                             <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                   aria-hidden="true">&times;</button>
                                                <h4 class="modal-title">배차 선택</h4>
                                             </div>
                                             <div class="modal-body">
                                                <div id="setNum"></div>
                                                <div id="truckA"></div>
                                                <div id="truckB"></div>
                                                <div id="truckC"></div>
                                             </div>
                                             <div class="modal-footer">
                                                <button data-dismiss="modal" class="btn btn-default"
                                                   type="button">Close</button>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- modal -->
                                 </div>
                              </section>
                           </div>
                           <div class="form-group">
                              <div class="col-sm-12">
                                 <table class="table table-hover general-table">
                                    <thead>
                                       <tr>
                                          <th>상품코드</th>
                                          <th class="hidden-phone">상품명</th>
                                          <th>단위</th>
                                          <th>수량</th>
                                       </tr>
                                    </thead>
                                    <tbody id="supplyProductTable">
                                       <c:forEach var="i" items="${supplyList.supplyList }">
                                          <tr>
                                             <td><input class=" form-control productCode"
                                                name="productCode" type="text" value="${i.productCode }"
                                                readonly="true" style="width: 100px;" /></td>
                                             <td class="hidden-phone"><input
                                                class=" form-control productName" name="productName"
                                                type="text" value="${i.productName }" readonly="true"
                                                style="width: 100px;" /></td>
                                             <td class="hidden-phone"><input
                                                class=" form-control productUnit" name="productUnit"
                                                type="text" value="${i.productUnit }"
                                                style="width: 100px;" readonly/></td>
                                             <td><input class="form-control supplyVolume"
                                                name="supplyVolume" type="text"
                                                value="${i.supplyVolume}" style="width: 100px;" readonly/></td>
                                          </tr>
                                    </c:forEach>
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                           <center>
                              <!-- <input type="button" id="updateBtn"
                                 class="btn btn-round btn-primary" value="수정">  --><input
                                 type="button" id="checkBtn" class="btn btn-round btn-primary"
                                 value="확인">
                           </center>
                           <br>
                        </form>
                     </div>
                  </section>
               </div>
            </div>
         </section>
      </section>
      <!-- </form> -->

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
   <script src="js/jquery.js"></script>
   <script src="bs3/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="js/fuelux/js/spinner.min.js"></script>
   <script type="text/javascript"
      src="js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
   <script type="text/javascript"
      src="js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
   <script type="text/javascript"
      src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
   <script type="text/javascript"
      src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
   <script type="text/javascript"
      src="js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
   <script type="text/javascript"
      src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
   <script type="text/javascript"
      src="js/jquery-multi-select/js/jquery.multi-select.js"></script>
   <!-- 코어 끝 -->
   <script>
      $(function() {
         $("#truckClick").on('click', printModalList);
         $("#checkBtn").on('click', updateOrder);
         /* $("#updateBtn").on('click', updateOrder);
         $.ajax({
            url : "selectOne",
            method : "GET",
            data : "num=${num}",
            success : detailInfo
         })

         var setNum = '<input type="hidden" id="num" value="'+${num}+'">';
         $("#setNum").html(setNum); */
      })

      function printModalList() {
         var deliveryDate = $("#deliveryDate1").val();
         var shop_code = $('#shop_code').val();
         var temp = '<input type="text" display="none" value="'+deliveryDate+'">';
         temp = '<input type="text" display="none" value="'+shop_code+'">';
         temp = '<label>배차 가능 트럭</label>';
         $("#truckA").html(temp);

         $.ajax({
            url : "getTruckList",
            method : "GET",
            success : modalTruckList
         })
      }

      function modalTruckList() {
         $
               .ajax({
                  url : "getTruckList",
                  method : "GET",
                  success : function(resp) {

                     var temp = '<div class = "col-sm-3" id="office_name">';
                     temp += '<select class="form-control m-bot15" name="truck_code" id="truck_code">';

                     $.each(resp, function(index, item) {
                        temp += '<option value="'+item+'">' + item
                              + '</option>';
                     })

                     temp += '</select></div>';
                     temp += '<button type="button" id="truck_option_btn" class="btn btn-primary">확인</button>&nbsp';
                     temp += '<button type="button" id="truck_reserve_btn" class="btn btn-success">예약</button><br><br>';
                     $("#truckB").html(temp);
                     $("#truck_option_btn")
                           .on('click', reserveTruckList);
                     $("#truck_reserve_btn").on('click',
                           truckReserveConfirm);
                  }
               })
      }

      function reserveTruckList() {
    	  var dDate = $("#deliveryDate1").val();
         var truck = $("#truck_code").val();
         var map = {
            "dDate" : dDate,
            "truck" : truck
         };

         $
               .ajax({
                  url : "reserveTruckList",
                  method : "GET",
                  data : map,
                  success : function(resp) {
                     if (resp.length == 0) {
                        var temp = '<br><center><h3>배차 내역이 없습니다.</h3></center>';
                        $("#truckC").html(temp);
                     }

                     else if (resp.length > 0) {
                        var temp = '<table id="modalT" border="1"><tr>';
                        temp += '<col width="40">';
                        temp += '<col width="100">';
                        temp += '<col width="350">';
                        temp += '<th class="cs">번호</th>';
                        temp += '<th class="cs">배송지</th>';
                        temp += '<th class="cs">주소</th></tr>';
						var pc;
                        $.each(resp, function(index, item) {
                        	console.log(item);
                           temp += '<tr><td class="num">'
                                 + (index + 1) + '</td>';
                           temp += '<td class="shop_name">'
                                 + item.SHOP_NAME + '</td>';
                           if (item.ADDRESS_DETAIL4 == null) {
                        	   temp += '<td class="address">'
                                   + item.ADDRESS_DETAIL1
                                   + item.ADDRESS_DETAIL2
                                   + item.ADDRESS_DETAIL3 + '</td></tr>';
						} else{
                           temp += '<td class="address">'
                                 + item.ADDRESS_DETAIL1
                                 + item.ADDRESS_DETAIL2
                                 + item.ADDRESS_DETAIL3 
                                 + item.ADDRESS_DETAIL4 + '</td></tr>';
                           pc = item.PROCESS_CODE;
                       	}
                        })
                        temp += '</table><input type="hidden" id="processCode" value="'+pc+'">';
                        $("#truckC").html(temp);
                     }
                  }
               });
      };

      function truckReserveConfirm() {
        var truck_code = $("#truck_code").val();
		var supplyVolume = new Array();
		$("input[name=supplyVolume]").each(
				function(idx) {
					var value = $(this).val();
					var eqValue = $(
							"input[name=supplyVolume]:eq(" + idx + ")")
							.val();
					supplyVolume.push(eqValue);
				});
		console.log(supplyVolume);
         $.ajax({
            url : "truckCapacity",
            method : "GET",
            data : {
               "supplyVolume" : supplyVolume,
               "truck_code" : truck_code
            },
            success : function(resp) {
               if (resp == true) {// 배송수량 부피 > 트럭 부피
                  var truck = $("#truck_code").val();
                  var temp = '<p>"' + truck + '"으로 배송</p>';
                  	temp += '<input type="hidden" id="truckCode11" value="'+truck+'">';
                  $("#truckMsg").html(temp);
                  $("#myModal2").modal('hide');
               } else if (resp == false) {
                  alert("선적 용량 초과하였습니다.");
               }
            }
         })
      }

      function updateOrder() {
         var process_code = $("#processCode11").val();
         var truck_code = $("#truckCode11").val();
         
         var temp = "updateShipping?process_code=" + process_code + "&truck_code=" + truck_code;

         console.log(temp);

         location.href = temp;
 
      }
   </script>
   
   
	<script type="text/javascript">

	document.write(getTimeStamp() + '<br />');
	
	function getTimeStamp(resp) {
	  var d = new Date(resp);
	  var s =
	    leadingZeros(d.getFullYear(), 4) + '-' +
	    leadingZeros(d.getMonth() + 1, 2) + '-' +
	    leadingZeros(d.getDate(), 2);
	
	  return s;
	}
	
	function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();
	
	  if (n.length < digits) {
	    for (i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
	}
	
	</script>
   <script src="js/advanced-form.js"></script>
</body>
</html>