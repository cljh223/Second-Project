package com.kilha.www.vo.sal;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

public class Lonlat {
	public ArrayList<String> route_lon = new ArrayList<String>();
	public ArrayList<String> route_lat = new ArrayList<String>();
	public ArrayList<String> list = new ArrayList<String>();
	
	public ArrayList<String> finalRoute_lon = new ArrayList<String>();
	public ArrayList<String> finalRoute_lat = new ArrayList<String>();

	public void getlonlat() 
	{
		//DB에서 가져오면 대입하기
		list.add("부산광역시 동구 중앙대로 206");
		list.add("울산광역시 울주군 삼남면 울산역로");
		list.add("대전광역시 동구 중앙동 중앙로");
		list.add("서울특별시 용산구 한강대로 405 서울역");
		list.add("대구광역시 북구 칠성동2가 302-155");
		list.add("충청남도 천안시 동남구 신안동 만남로 43");

		String appkey = "21093c88-ac79-33d0-bc3e-8c0652e9a564";

		for (int i = 0; i < list.size(); i++) {
			try {
				String temp_lon = "";
				String temp_lat = "";

				String address = URLEncoder.encode(list.get(i), "UTF-8");
				String apiURL = "http://apis.skplanetx.com/tmap/geo/fullAddrGeo?count=&page=&addressFlag=F00&fullAddr=" + address + "&callback=&coordType=WGS84GEO&format=&version=1";

				URL url = new URL(apiURL);
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				con.setRequestMethod("GET");
				con.setRequestProperty("appkey", appkey);

				int responseCode = con.getResponseCode();

				BufferedReader br;

				if (responseCode == 200) {
					br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				} else {
					br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				}

				String inputLine = br.readLine();

				// lon, lat 값 가져오기
				String[] temp_data = inputLine.split(",");

				for (int j = 0; j < temp_data.length; j++) {
					if (temp_data[j].contains("\"newLon\":")) {
						temp_lon = temp_data[j];
					} else if (temp_data[j].contains("\"newLat\":")) {
						temp_lat = temp_data[j];
					}
				}

				route_lon.add(temp_lon.substring(temp_lon.indexOf(": ") + 3, temp_lon.lastIndexOf("\"")));
				route_lat.add(temp_lat.substring(temp_lat.indexOf(": ") + 3, temp_lat.lastIndexOf("\"")));

				if (route_lon.get(i).length() == 0 || route_lat.get(i).length() == 0) {
					route_lon.remove(i);
					route_lat.remove(i);

					for (int j = 0; j < temp_data.length; j++) {
						if (temp_data[j].contains("\"lon\":")) {
							temp_lon = temp_data[j];
						} else if (temp_data[j].contains("\"lat\":")) {
							temp_lat = temp_data[j];
						}
					}

					route_lon.add(temp_lon.substring(temp_lon.indexOf(": ") + 3, temp_lon.lastIndexOf("\"")));
					route_lat.add(temp_lat.substring(temp_lat.indexOf(": ") + 3, temp_lat.lastIndexOf("\"")));
				}
				br.close();

				//System.out.println(route_lon.toString());
				//System.out.println(route_lat.toString());
				//System.out.println();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void convertlonlat(ArrayList<String> routeName) 
	{
		String appkey = "21093c88-ac79-33d0-bc3e-8c0652e9a564";

		for (int i = 0; i < routeName.size(); i++) {
			try {
				String temp_lon = "";
				String temp_lat = "";

				String address = URLEncoder.encode(routeName.get(i), "UTF-8");
				String apiURL = "http://apis.skplanetx.com/tmap/geo/fullAddrGeo?count=&page=&addressFlag=F00&fullAddr=" + address + "&callback=&coordType=&format=&version=1";

				URL url = new URL(apiURL);
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				con.setRequestMethod("GET");
				con.setRequestProperty("appkey", appkey);

				int responseCode = con.getResponseCode();

				BufferedReader br;

				if (responseCode == 200) {
					br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				} else {
					br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				}

				String inputLine = br.readLine();

				// lon, lat 값 가져오기
				String[] temp_data = inputLine.split(",");

				for (int j = 0; j < temp_data.length; j++) {
					if (temp_data[j].contains("\"newLon\":")) {
						temp_lon = temp_data[j];
					} else if (temp_data[j].contains("\"newLat\":")) {
						temp_lat = temp_data[j];
					}
				}

				finalRoute_lon.add(temp_lon.substring(temp_lon.indexOf(": ") + 3, temp_lon.lastIndexOf("\"")));
				finalRoute_lat.add(temp_lat.substring(temp_lat.indexOf(": ") + 3, temp_lat.lastIndexOf("\"")));

				if (finalRoute_lon.get(i).length() == 0 || finalRoute_lat.get(i).length() == 0) {
					finalRoute_lon.remove(i);
					finalRoute_lat.remove(i);

					for (int j = 0; j < temp_data.length; j++) {
						if (temp_data[j].contains("\"lon\":")) {
							temp_lon = temp_data[j];
						} else if (temp_data[j].contains("\"lat\":")) {
							temp_lat = temp_data[j];
						}
					}

					finalRoute_lon.add(temp_lon.substring(temp_lon.indexOf(": ") + 3, temp_lon.lastIndexOf("\"")));
					finalRoute_lat.add(temp_lat.substring(temp_lat.indexOf(": ") + 3, temp_lat.lastIndexOf("\"")));
				}
				br.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public String dataSet(int size) 
	{
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyyMMddHHmm", Locale.KOREA );
		Date currentTime = new Date ();
		String mTime = mSimpleDateFormat.format ( currentTime );
		
		char pointId = 65;
		String shortest = "{";
		shortest += "'startName' : '출발'";  
		shortest += ", 'startX' : " + "'" + finalRoute_lon.get(0) + "'";
		shortest += ", 'startY' : " + "'" +  finalRoute_lat.get(0) + "'";
		shortest += ", 'startTime' : " + "'" + mTime + "'";
		shortest += ", 'endName' : '도착'";
		shortest += ", 'endX' : " + "'" + finalRoute_lon.get(finalRoute_lon.size() - 1) + "'";
		shortest += ", 'endY' : " + "'" + finalRoute_lat.get(finalRoute_lat.size() - 1) + "'";
		shortest += ", 'carType' : '4'";
		shortest += ", 'searchOption' : '2'";
		shortest += ", 'viaPoints' : [";
		
		for(int i = 1; i < size - 1; i++)
		{
			shortest += "{";
			shortest += "'viaPointId' : " + "'" + i + "'" + ", "; 
			shortest += "'viaPointName' : " + "'" +  pointId + "'" + ", ";
			shortest += "'viaX' : " + "'" + finalRoute_lon.get(i) + "'" + ", ";
			shortest += "'viaY' : " + "'" + finalRoute_lat.get(i) + "'";
			shortest += "},";
			pointId++;
		}
		shortest += "]";
		shortest += "};";
		
		return shortest;
	}
	
	public HashMap<String, List<String>> poilonlat(String searchKeyword)
	{
		HashMap<String, List<String>> poilonlat = new HashMap<String, List<String>>();
		String appkey = "21093c88-ac79-33d0-bc3e-8c0652e9a564";

		try {
			String keyword = URLEncoder.encode(searchKeyword, "UTF-8");
			String apiURL = "https://apis.skplanetx.com/tmap/pois?version=1&page=&count=&searchKeyword=" + keyword + "&areaLLCode="
					+ "&areaLMCode=&resCoordType=&searchType=&searchtypCd=&radius=&reqCoordType=&centerLon=&centerLat=&multiPoint=&callback=";

			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("appkey", appkey);

			int responseCode = con.getResponseCode();

			BufferedReader br;

			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			}

			String inputLine = br.readLine();
			System.out.println(inputLine);
			List<String> list = new ArrayList<String>();
			int start = inputLine.indexOf("{\"id");
			int end = inputLine.indexOf("\"}");
			
			while(end > -1)
			{
				String info = inputLine.substring(start, end);
				start = inputLine.indexOf("{\"id", start + 1);
				end = inputLine.indexOf("\"}", end + 1);
				
				list.add(info);
			}
			
			List<String> name = new ArrayList<String>();
			List<String> lon = new ArrayList<String>();
			List<String> lat = new ArrayList<String>();
			List<String> telNo = new ArrayList<String>();
			List<String> upperAddrName = new ArrayList<String>();
			List<String> middleAddrName = new ArrayList<String>();
			List<String> roadName = new ArrayList<String>();
			List<String> firstBuildNo = new ArrayList<String>();
			
			for(int i = 0; i < list.size(); i++)
			{
				name.add(list.get(i).substring(list.get(i).indexOf("name\":\""), list.get(i).indexOf("\",\"tel")));
				lon.add(list.get(i).substring(list.get(i).indexOf("noorLat\":\""), list.get(i).indexOf("\",\"noorLon")));
				lat.add(list.get(i).substring(list.get(i).indexOf("noorLon\":\""), list.get(i).indexOf("\",\"upper")));
				telNo.add(list.get(i).substring(list.get(i).indexOf("telNo\":\""), list.get(i).indexOf("\",\"frontLat")));
				upperAddrName.add(list.get(i).substring(list.get(i).indexOf("upperAddrName\":\""), list.get(i).indexOf("\",\"middleAddrName")));
				middleAddrName.add(list.get(i).substring(list.get(i).indexOf("middleAddrName\":\""), list.get(i).indexOf("\",\"lowerAddrName")));
				roadName.add(list.get(i).substring(list.get(i).indexOf("roadName\":\""), list.get(i).indexOf("\",\"firstBuildNo")));
				firstBuildNo.add(list.get(i).substring(list.get(i).indexOf("firstBuildNo\":\""), list.get(i).indexOf("\",\"secondBuildNo")));
				
				name.add(name.get(i).substring(7, name.get(i).length()));
				lon.add(lon.get(i).substring(10, lon.get(i).length()));
				lat.add(lat.get(i).substring(10, lat.get(i).length()));
				telNo.add(telNo.get(i).substring(8, telNo.get(i).length()));
				upperAddrName.add(upperAddrName.get(i).substring(16, upperAddrName.get(i).length()));
				middleAddrName.add(middleAddrName.get(i).substring(17, middleAddrName.get(i).length()));
				roadName.add(roadName.get(i).substring(11, roadName.get(i).length()));
				firstBuildNo.add(firstBuildNo.get(i).substring(15, firstBuildNo.get(i).length()));
				name.remove(i);
				lon.remove(i);
				lat.remove(i);
				telNo.remove(i);
				upperAddrName.remove(i);
				middleAddrName.remove(i);
				roadName.remove(i);
				firstBuildNo.remove(i);
			}
			poilonlat.put("name", name);
			poilonlat.put("lon", lon);
			poilonlat.put("lat", lat);
			poilonlat.put("telNo", telNo);
			poilonlat.put("upperAddrName", upperAddrName);
			poilonlat.put("middleAddrName", middleAddrName);
			poilonlat.put("roadName", roadName);
			poilonlat.put("firstBuildNo", firstBuildNo);
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
		return poilonlat;
	}
}
