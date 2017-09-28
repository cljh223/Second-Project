(function ($) {
    "use strict";
    $(document).ready(function () {	
        if ($.fn.plot) {

            var d1 = [
                [0, 10],
                [1, 20],
                [2, 33],
                [3, 24],
                [4, 45],
                [5, 96],
                [6, 47],
                [7, 18],
                [8, 11],
                [9, 13],
                [10, 21]

            ];
            var data = ([{
                label: "Too",
                data: d1,
                lines: {
                    show: true,
                    fill: true,
                    lineWidth: 2,
                    fillColor: {
                        colors: ["rgba(255,255,255,.1)", "rgba(160,220,220,.8)"]
                    }
                }
            }]);
            var options = {
                grid: {
                    backgroundColor: {
                        colors: ["#fff", "#fff"]
                    },
                    borderWidth: 0,
                    borderColor: "#f0f0f0",
                    margin: 0,
                    minBorderMargin: 0,
                    labelMargin: 20,
                    hoverable: true,
                    clickable: true
                },
                // Tooltip
                tooltip: true,
                tooltipOpts: {
                    content: "%s X: %x Y: %y",
                    shifts: {
                        x: -60,
                        y: 25
                    },
                    defaultTheme: false
                },

                legend: {
                    labelBoxBorderColor: "#ccc",
                    show: false,
                    noColumns: 0
                },
                series: {
                    stack: true,
                    shadowSize: 0,
                    highlightColor: 'rgba(30,120,120,.5)'

                },
                xaxis: {
                    tickLength: 0,
                    tickDecimals: 0,
                    show: true,
                    min: 2,

                    font: {

                        style: "normal",


                        color: "#666666"
                    }
                },
                yaxis: {
                    ticks: 3,
                    tickDecimals: 0,
                    show: true,
                    tickColor: "#f0f0f0",
                    font: {

                        style: "normal",


                        color: "#666666"
                    }
                },
                //        lines: {
                //            show: true,
                //            fill: true
                //
                //        },
                points: {
                    show: true,
                    radius: 2,
                    symbol: "circle"
                },
                colors: ["#87cfcb", "#48a9a7"]
            };
            var plot = $.plot($("#daily-visit-chart"), data, options);



            // DONUT
            var dataPie = [{
                label: "Samsung",
                data: 50
            }, {
                label: "Nokia",
                data: 50
            }, {
                label: "Syphony",
                data: 100
            }];

            $.plot($(".sm-pie"), dataPie, {
                series: {
                    pie: {
                        innerRadius: 0.7,
                        show: true,
                        stroke: {
                            width: 0.1,
                            color: '#ffffff'
                        }
                    }

                },

                legend: {
                    show: true
                },
                grid: {
                    hoverable: true,
                    clickable: true
                },

                colors: ["#ffdf7c", "#b2def7", "#efb3e6"]
            });

        }



        /*==Slim Scroll ==*/
        if ($.fn.slimScroll) {
            $('.event-list').slimscroll({
                height: '305px',
                wheelStep: 20
            });
            $('.conversation-list').slimscroll({
                height: '360px',
                wheelStep: 35
            });
            $('.to-do-list').slimscroll({
                height: '300px',
                wheelStep: 35
            });
        }


        /*==Easy Pie chart ==*/
        if ($.fn.easyPieChart) {



            $('.epie-chart').easyPieChart({
                onStep: function(from, to, percent) {
                    $(this.el).find('.percent').text(Math.round(percent));
                },
                barColor: "#f8a20f",
                lineWidth: 5,
                size:80,
                trackColor: "#efefef",
                scaleColor:"#cccccc"

            });

        }




        if (Morris.EventEmitter) {
            // Use Morris.Area instead of Morris.Line
            Morris.Area({
                element: 'graph-area',
                padding: 10,
                behaveLikeLine: true,
                gridEnabled: false,
                gridLineColor: '#dddddd',
                axes: true,
                fillOpacity: .7,
                data: [{
                    period: '2010 Q1',
                    iphone: 10,
                    ipad: 10,
                    itouch: 10
                }, {
                    period: '2010 Q2',
                    iphone: 1778,
                    ipad: 7294,
                    itouch: 18441
                }, {
                    period: '2010 Q3',
                    iphone: 4912,
                    ipad: 12969,
                    itouch: 3501
                }, {
                    period: '2010 Q4',
                    iphone: 3767,
                    ipad: 3597,
                    itouch: 5689
                }, {
                    period: '2011 Q1',
                    iphone: 6810,
                    ipad: 1914,
                    itouch: 2293
                }, {
                    period: '2011 Q2',
                    iphone: 5670,
                    ipad: 4293,
                    itouch: 1881
                }, {
                    period: '2011 Q3',
                    iphone: 4820,
                    ipad: 3795,
                    itouch: 1588
                }, {
                    period: '2011 Q4',
                    iphone: 25073,
                    ipad: 5967,
                    itouch: 5175
                }, {
                    period: '2012 Q1',
                    iphone: 10687,
                    ipad: 34460,
                    itouch: 22028
                }, {
                    period: '2012 Q2',
                    iphone: 1000,
                    ipad: 5713,
                    itouch: 1791
                }


                ],
                lineColors: ['#ED5D5D', '#D6D23A', '#32D2C9'],
                xkey: 'period',
                ykeys: ['iphone', 'ipad', 'itouch'],
                labels: ['iPhone', 'iPad', 'iPod Touch'],
                pointSize: 0,
                lineWidth: 0,
                hideHover: 'auto'

            });

        }


        //Jquery vector map
        var jMap = null;
        // lat : 위도, lon : 경도
        function convert(latitude, longitude) {
        	// korea-mill-en.js 지도 크기
            var width = 792;
            var height = 612;
         
            // 좌우 크게하면 좌로 이동
            // 상하 크게하면 하로 이동
            // 같이 늘려주고 같이 줄여줘야 함
            var eastLong = 131.113044;      // 우측 한계선
            var westLong = 123.626181;      // 좌측 한계선
            var northLat = 39.055657;       // 상측 한계선
            var southLat = 33.280579;       // 하측 한계선
             
            var longDiff = eastLong - westLong;
            var lon = (longitude - westLong) * (width / longDiff);
             
            var latDiff = northLat - southLat;
            var lat = (northLat - latitude) * (height / latDiff);
             
            return [lon, lat];
        }

       /* var sourceData = [
        	{stnNm : '강릉', lati : '37.75185',  lngt : '128.87605', status : 'factory'},
            {stnNm : '남해', lati : '34.83767',  lngt : '127.89242', status : 'factory'},
            {stnNm : '영월', lati : '37.18363',  lngt : '128.46175', status : 'store'},
            {stnNm : '인제', lati : '38.06946',  lngt : '128.17069', status : 'warehouse'},
            {stnNm : '태백', lati : '37.16406',  lngt : '128.98556', status : 'warehouse'},
            {stnNm : '안동', lati : '36.58635',  lngt : '128.72935', status : 'store'},
            {stnNm : '통영', lati : '34.85442',  lngt : '128.43318', status : 'store'}
        ];*/
        
       var sourceData = [];
       
       $.ajax({
    	   url: "shopData",
    	   method: "GET",
    	   async: false,
    	   success: function(shopData){
    		   var temp = shopData;
    		   
    		   $.each(temp, function(index, item){
    			  var obj = {};
    			  obj.stnNm = item.stnNm;
    			  obj.lati = item.lati;
    			  obj.lngt = item.lngt;
    			  obj.shopAddress = item.address;
    			  obj.shopTel = item.tel;
    			  obj.status = item.status;
    			  
    			  sourceData.push(obj);
    		   });
    	   }	
       });
       
       $.ajax({
    	   url: "warehouseData",
    	   method: "GET",
    	   async: false,
    	   success: function(warehouseData){
    		   var temp = warehouseData;
    		   
    		   $.each(temp, function(index, item){
    			  var obj = {};
    			  obj.stnNm = item.stnNm;
    			  obj.lati = item.lati;
    			  obj.lngt = item.lngt;
    			  obj.warehouseAddress = item.address;
    			  obj.warehouseTel = item.tel;
    			  obj.status = item.status;
    			  
    			  sourceData.push(obj);
    		   });
    	   }	
       });
       
       $.ajax({
    	   url: "factoryData",
    	   method: "GET",
    	   async: false,
    	   success: function(factoryData){
    		   var temp = factoryData;
    		   
    		   $.each(temp, function(index, item){
    			  var obj = {};
    			  obj.stnNm = item.stnNm;
    			  obj.lati = item.lati;
    			  obj.lngt = item.lngt;
    			  obj.factoryAddress = item.address;
    			  obj.factoryTel = item.tel;
    			  obj.status = item.status;
    			  
    			  sourceData.push(obj);
    		   });
    	   }	
       });
       
        var markers = [];
        jQuery.each(sourceData, function(){
        	if(this.status == 'store') {
	            var obj = {};
	            obj.coords = convert(this.lati, this.lngt);
	            obj.stnNm = this.stnNm;
	            obj.shopAddress = this.shopAddress;
	            obj.shopTel = this.shopTel;
	            obj.status = this.status;
	            markers.push(obj);
        	}
        	else if(this.status == 'warehouse') {
        		var obj = {};
                obj.coords = convert(this.lati, this.lngt);
                obj.stnNm = this.stnNm;
                obj.warehouseAddress = this.warehouseAddress;
                obj.warehouseTel = this.warehouseTel;
                obj.status = this.status;
                markers.push(obj);
        	}
        	else if(this.status == 'factory') {
        		var obj = {};
                obj.coords = convert(this.lati, this.lngt);
                obj.stnNm = this.stnNm;
                obj.factoryAddress = this.factoryAddress;
                obj.factoryTel = this.factoryTel;
                obj.status = this.status;
                markers.push(obj);
        	}
        });
        
        if ($.fn.vectorMap) {
            $('#world-map').vectorMap({
            	map: 'korea_mill_en',
            	zoomStep: 1.6,
                zoomMin: 1.0,
                zoomMax: 100.0,
                regionStyle: {
                    initial: {
                        fill: '#FFFFFF',
                        "fill-opacity": 1.0,
                        stroke: '#000000',
                        "stroke-width": 0.2,
                        "stroke-opacity": 0.8
                    },
                    hover: {
                    	fill: '#000000',
                    	"fill-opacity": 0.7
                    }
                },
                backgroundColor: '#FFFFFF',
                markers: markers,
                onMarkerTipShow: function(e, el, idx) {
                    var msg = el.html();
                    var source = markers[idx];
                    
                    console.log(source);
                    
                    if(source.status == 'store') {
	                    msg += "<b>영업점 : " + source.stnNm + "</b><br>";
	                    msg += "<b>주소 : " + source.shopAddress + "</b><br>";
	                    msg += "<b>전화번호 : " + source.shopTel + "</b><br>";
	                    el.html(msg); 
                    }
                    else if(source.status == 'warehouse') {
	                    msg += "<b>물류창고 : " + source.stnNm + "</b><br>";
	                    msg += "<b>주소 : " + source.warehouseAddress + "</b><br>";
	                    msg += "<b>전화번호 : " + source.warehouseTel + "</b><br>";
	                    el.html(msg); 
                    }
                    else if(source.status == 'factory') {
	                    msg += "<b>생산공장 : " + source.stnNm + "</b><br>";
	                    msg += "<b>주소 : " + source.factoryAddress + "</b><br>";
	                    msg += "<b>전화번호 : " + source.factoryTel + "</b><br>";
	                    el.html(msg); 
                    }
                },
                /*labels: {
                    markers: {
                      render: function(index){
                        return sourceData[index].stnNm;
                      }
                    }
                },*/
                series: {
                  markers: [{
                    attribute: 'image',
                    scale: {
                      // factory1~6
                      // store1~9
                      // warehouse1~3
                      'factory': 'images/factory4.png',
                      'warehouse': 'images/warehouse2.png',
                      'store': 'images/store8.png'
                    },
                    values: sourceData.reduce(function(p, c, i){ 
                    	p[i] = c.status; 
                    	return p }, {}),
                	/*legend: {
                        horizontal: true,
                        title: 'Icon Info',
                        labelRender: function(v){
                          return {
                        	  factory: 'Factory<br>Factory<span>          </span>			',
                        	  warehouse: 'Warehouse<br>Warehouse	',
                        	  store: 'Store<br>Store				'
                          }[v];
                        }
                     }*/
                  }]
                }
              });
            	
            	
            	/*
            	map: 'korea_mill_en',
                zoomStep: 1.6,
                zoomMin: 1.0,
                regionStyle: {
                    initial: {
                        fill: '#aaaaaa',
                        "fill-opacity": 1,
                        stroke: '#a5ded9',
                        "stroke-width": 0,
                        "stroke-opacity": 0
                    },
                    hover: {
                        "fill-opacity": 0.5,
                    }
                },
                markers: markers,
                markerStyle: {
                  initial: {
                      image: 'http://jvectormap.com/img/icon-np-2.png',
                    }
                },
                labels: {
                    markers: {
                      render: function(index){
                        return sourceData[index].stnNm;
                      }
                    }
                },
                markerStyle: {
                    initial: {
                        fill: '#e68c71',
                        stroke: 'rgba(230,140,110,.8)',
                        "fill-opacity": 1,
                        "stroke-width": 9,
                        "stroke-opacity": 0.5,
                        r: 3
                    },
                    hover: {
                        stroke: 'black',
                        "stroke-width": 2,
                        r: 10
                    },
                },
                backgroundColor: '#ffffff',
                markers: markers,
                onMarkerLabelShow: function(e, el, idx) {
                    var msg = el.html();
                    var source = markers[idx];
                    msg += "<b>지역명 : " + source.stnNm + "</b><br>";
                    msg += "<b>지역ID : " + source.stnId + "</b><br>";
                    msg += "<b>지역Type : " + source.stnType + "</b><br>";
                    el.html(msg); 
                },
                
                onMarkerClick: function(e, idx) {
                	// image empty
                	$("#before_type").empty();
                	$("#current_type").empty();
                	$("#after_type").empty();
                	
                	// text empty
                	$("#before_name").empty();
                	$("#current_name").empty();
                	$("#after_name").empty();
                	
                	var location_before;
                	var location_current = markers[idx];
                	var location_after;
                	
                	if(location_current.stnId == 1) {
                		location_before = "";
                		location_after = markers[parseInt(idx) + 1];
                		
                		first(location_before, location_current, location_after);
                	}
                	
                	else if(location_current.stnId != 1 && location_current.stnId != 7) {
                		location_before = markers[idx - 1];
                		location_after = markers[parseInt(idx) + 1];
                		
                		middle(location_before, location_current, location_after);
                	}
                	
                	else if(location_current.stnId == 7) {
                		location_before = markers[idx - 1];
                		location_after = "";
                		
                		last(location_before, location_current, location_after);
                	}
                }
            });
            */
        };
        
        $(document).on('click', '.event-close', function () {
            $(this).closest("li").remove();
            return false;
        });

        $('.progress-stat-bar li').each(function () {
            $(this).find('.progress-stat-percent').animate({
                height: $(this).attr('data-percent')
            }, 1000);
        });

        $('.todo-check label').click(function () {
            $(this).parents('li').children('.todo-title').toggleClass('line-through');
        });


        $(document).on('click', '.todo-remove', function () {
            $(this).closest("li").remove();
            return false;
        });


        $('.stat-tab .stat-btn').click(function () {

            $(this).addClass('active');
            $(this).siblings('.btn').removeClass('active');

        });

        $('select.styled').customSelect();
        $("#sortable-todo").sortable();




        /*Calendar*/
        $(function () {
            $('.evnt-input').keypress(function (e) {
                var p = e.which;
                var inText = $('.evnt-input').val();
                if (p == 13) {
                    if (inText == "") {
                        alert('Empty Field');
                    } else {
                        $('<li>' + inText + '<a href="#" class="event-close"> <i class="ico-close2"></i> </a> </li>').appendTo('.event-list');
                    }
                    $(this).val('');
                    $('.event-list').scrollTo('100%', '100%', {
                        easing: 'swing'
                    });
                    return false;
                    e.epreventDefault();
                    e.stopPropagation();
                }
            });
        });


        /*Chat*/
        $(function () {
            $('.chat-input').keypress(function (ev) {
                var p = ev.which;
                var chatTime = moment().format("h:mm");
                var chatText = $('.chat-input').val();
                if (p == 13) {
                    if (chatText == "") {
                        alert('Empty Field');
                    } else {
                        $('<li class="clearfix"><div class="chat-avatar"><img src="images/chat-user-thumb.png" alt="male"><i>' + chatTime + '</i></div><div class="conversation-text"><div class="ctext-wrap"><i>John Carry</i><p>' + chatText + '</p></div></div></li>').appendTo('.conversation-list');
                    }
                    $(this).val('');
                    $('.conversation-list').scrollTo('100%', '100%', {
                        easing: 'swing'
                    });
                    return false;
                    ev.epreventDefault();
                    ev.stopPropagation();
                }
            });


            $('.chat-send .btn').click(function () {
                var chatTime = moment().format("h:mm");
                var chatText = $('.chat-input').val();
                if (chatText == "") {
                    alert('Empty Field');
                    $(".chat-input").focus();
                } else {
                    $('<li class="clearfix"><div class="chat-avatar"><img src="images/chat-user-thumb.png" alt="male"><i>' + chatTime + '</i></div><div class="conversation-text"><div class="ctext-wrap"><i>John Carry</i><p>' + chatText + '</p></div></div></li>').appendTo('.conversation-list');
                    $('.chat-input').val('');
                    $(".chat-input").focus();
                    $('.conversation-list').scrollTo('100%', '100%', {
                        easing: 'swing'
                    });
                }
            });
        });
    });
})(jQuery);

function first(location_before, location_current, location_after){
	$('#before_type').append('&nbsp;');
	$('#before_name').append('&nbsp;');

	// current
	switch(location_current.stnType) {
	case 'Factory':
		$('#current_type').append('<img src="images/factory.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
		
	case 'Warehouse':
		$('#current_type').append('<img src="images/warehouse.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
		
	case 'Store':
		$('#current_type').append('<img src="images/store.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
	}
	
	// after
	switch(location_after.stnType) {
	case 'Factory':
		$('#after_type').append('<img src="images/factory.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#after_name').append('<h4 style="text-align: center">' + location_after.stnNm + '</h4>');
		break;
		
	case 'Warehouse':
		$('#after_type').append('<img src="images/warehouse.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#after_name').append('<h4 style="text-align: center">' + location_after.stnNm + '</h4>');
		break;
		
	case 'Store':
		$('#after_type').append('<img src="images/store.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#after_name').append('<h4 style="text-align: center">' + location_after.stnNm + '</h4>');
		break;
	}
}


function middle(location_before, location_current, location_after){
	// before
	switch(location_before.stnType) {
	case 'Factory':
		$('#before_type').append('<img src="images/factory.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#before_name').append('<h4 style="text-align: center">' + location_before.stnNm + '</h4>');
		break;
		
	case 'Warehouse':
		$('#before_type').append('<img src="images/warehouse.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#before_name').append('<h4 style="text-align: center">' + location_before.stnNm + '</h4>');
		break;
		
	case 'Store':
		$('#before_type').append('<img src="images/store.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#before_name').append('<h4 style="text-align: center">' + location_before.stnNm + '</h4>');
		break;
	}
	
	// current
	switch(location_current.stnType) {
	case 'Factory':
		$('#current_type').append('<img src="images/factory.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
		
	case 'Warehouse':
		$('#current_type').append('<img src="images/warehouse.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
		
	case 'Store':
		$('#current_type').append('<img src="images/store.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
	}
	
	// after
	switch(location_after.stnType) {
	case 'Factory':
		$('#after_type').append('<img src="images/factory.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#after_name').append('<h4 style="text-align: center">' + location_after.stnNm + '</h4>');
		break;
		
	case 'Warehouse':
		$('#after_type').append('<img src="images/warehouse.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#after_name').append('<h4 style="text-align: center">' + location_after.stnNm + '</h4>');
		break;
		
	case 'Store':
		$('#after_type').append('<img src="images/store.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#after_name').append('<h4 style="text-align: center">' + location_after.stnNm + '</h4>');
		break;
	}
}


function last(location_before, location_current, location_after){
	// before
	switch(location_before.stnType) {
	case 'Factory':
		$('#before_type').append('<img src="images/factory.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#before_name').append('<h4 style="text-align: center">' + location_before.stnNm + '</h4>');
		break;
		
	case 'Warehouse':
		$('#before_type').append('<img src="images/warehouse.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#before_name').append('<h4 style="text-align: center">' + location_before.stnNm + '</h4>');
		break;
		
	case 'Store':
		$('#before_type').append('<img src="images/store.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#before_name').append('<h4 style="text-align: center">' + location_before.stnNm + '</h4>');
		break;
	}

	// current
	switch(location_current.stnType) {
	case 'Factory':
		$('#current_type').append('<img src="images/factory.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
		
	case 'Warehouse':
		$('#current_type').append('<img src="images/warehouse.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
		
	case 'Store':
		$('#current_type').append('<img src="images/store.jpg" style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;">');
		$('#current_name').append('<h4 style="text-align: center">' + location_current.stnNm + '</h4>');
		break;
	}
	
	// after
	$('#after_type').append('&nbsp;');
	$('#after_name').append('&nbsp;');
}


if (Skycons) {
    /*==Weather==*/
    var skycons = new Skycons({
        "color": "#aec785"
    });
    // on Android, a nasty hack is needed: {"resizeClear": true}
    // you can add a canvas by it's ID...
    skycons.add("icon1", Skycons.RAIN);
    // start animation!
    skycons.play();
    // you can also halt animation with skycons.pause()
    // want to change the icon? no problem:
    skycons.set("icon1", Skycons.RAIN);

}

if (Gauge) {
    /*Knob*/
    var opts = {
        lines: 12, // The number of lines to draw
        angle: 0, // The length of each line
        lineWidth: 0.48, // The line thickness
        pointer: {
            length: 0.6, // The radius of the inner circle
            strokeWidth: 0.03, // The rotation offset
            color: '#464646' // Fill color
        },
        limitMax: 'true', // If true, the pointer will not go past the end of the gauge
        colorStart: '#fa8564', // Colors
        colorStop: '#fa8564', // just experiment with them
        strokeColor: '#F1F1F1', // to see which ones work best for you
        generateGradient: true
    };


    var target = document.getElementById('gauge'); // your canvas element
    var gauge = new Gauge(target).setOptions(opts); // create sexy gauge!
    gauge.maxValue = 3000; // set max gauge value
    gauge.animationSpeed = 32; // set animation speed (32 is default value)
    gauge.set(1150); // set actual value
    gauge.setTextField(document.getElementById("gauge-textfield"));

}