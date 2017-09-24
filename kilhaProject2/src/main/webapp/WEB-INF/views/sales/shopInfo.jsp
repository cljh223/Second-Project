<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=21093c88-ac79-33d0-bc3e-8c0652e9a564"></script>
<script type="text/javascript">
$(function(){
	$('#searchBtn').on('click', function(){
		var searchKeyword = $('#searchKeyword').val();
			
		$.ajax({
			type : "GET",
			url : "poiInfo",
			data : {"searchKeyword" : searchKeyword},
			success : keywordInfo
		});
	});

	initialize();
});

function initialize() {
    var map = new Tmap.Map({div:'map_div', width:'500px', height:'300px'});
    
    var lonlat = new Tmap.LonLat(14144160.880501, 4510690.610763);
    var zoom = 16;
    map.setCenter(lonlat, zoom);        
    
    var markers = new Tmap.Layer.Markers( "MarkerLayer" );
    map.addLayer(markers);
    
    var size = new Tmap.Size(24, 38);
    var offset = new Tmap.Pixel(-(size.w/2), -size.h);
    var icon = new Tmap.Icon('https://developers.skplanetx.com/upload/tmap/marker/pin_b_m_a.png',size,offset);
    var marker = new Tmap.Marker(lonlat,icon);
    markers.addMarker(marker);
}

function keywordInfo(resp){
	var table = "<table>";
	table += "<tr>";
	table += "<td width='250px'>Name</td>";
	table += "<td width='150px'>Lon</td>";
	table += "<td width='150px'>Lat</td>";
	table += "</tr>";
	
	$.each(resp.name, function(index, value){
		table += "<tr>";
		table += "<td width='300px'>" + resp.name[index] + "</td>";
		table += "<td width='100px'>" + resp.lon[index] + "</td>";
		table += "<td width='100px'>" + resp.lat[index] + "</td>";
		table += "</tr>";
	});
	
	table += "</table>";
	
	$('#infoTable').append(table);
}
</script>
</head>
<body>
<div id="map_div">

</div>
<div>
<input type="text" id="searchKeyword">
<input type="button" id="searchBtn" value="search">
</div>

<div id="infoTable">

</div>
</body>
</html>
