package com.kilha.www.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kilha.www.vo.Address;

public class AddressChange {
	public List<HashMap<String, String>> search(List<List<Address>> list) {
		String appkey = "21093c88-ac79-33d0-bc3e-8c0652e9a564";
		ArrayList<String> londata = new ArrayList<String>();
		ArrayList<String> latdata = new ArrayList<String>();
		
		List<HashMap<String, String>> finallist = new ArrayList<>();
		String temp_lon = "";
		String temp_lat = "";
		
		String lon = "";
		String lat = "";
		
		try
		{
			for(List<Address> li : list){
				for(Address a : li){
					String address = null;
					if(a.getAddressDetail4()!=null){
						address = a.getAddressDetail1()+" "+a.getAddressDetail2()+" "+a.getAddressDetail3()+" "+a.getAddressDetail4();
					}else{
						address = a.getAddressDetail1()+" "+a.getAddressDetail2()+" "+a.getAddressDetail3();
					}
					String addr = URLEncoder.encode(address, "UTF-8");
					String apiURL = "http://apis.skplanetx.com/tmap/geo/fullAddrGeo?count=&page=&addressFlag=F00&fullAddr=" + addr + "&callback=&coordType=&format=&version=1";
					
					URL url = new URL(apiURL);
					HttpURLConnection con = (HttpURLConnection)url.openConnection();
					con.setRequestMethod("GET");
					con.setRequestProperty("appkey", appkey);
					
					int responseCode = con.getResponseCode();
					
					BufferedReader br;
					
					if(responseCode == 200)
					{
						br = new BufferedReader(new InputStreamReader(con.getInputStream()));
					}
					else
					{
						br = new BufferedReader(new InputStreamReader(con.getInputStream()));
					}
					
					String inputLine = br.readLine();
					String[] temp_data = inputLine.split(",");
					for(int i = 0; i < temp_data.length; i++)
					{
						if(temp_data[i].contains("\"newLon\":"))
						{
							londata.add(temp_data[i]);
						}
						else if(temp_data[i].contains("\"newLat\":"))
						{
							latdata.add(temp_data[i]);
						}
					}
					
					if(londata.size() == 0)
					{
						HashMap<String, String> finaldata = new HashMap<String, String>();
						finaldata.put("errorCode", "error");
						finallist.add(finaldata);
						return finallist;
					}
				}
			}
			
			for(int j = 0; j<londata.size(); j++){
				HashMap<String, String> finaldata = new HashMap<String, String>();
				temp_lon = londata.get(j);
				temp_lat = latdata.get(j);
				lon = londata.get(j).substring(temp_lon.indexOf(": ") + 3, temp_lon.lastIndexOf("\""));
				lat = latdata.get(j).substring(temp_lat.indexOf(": ") + 3, temp_lat.lastIndexOf("\""));
				
				finaldata.put("lon", lon);
				finaldata.put("lat", lat);
				finallist.add(finaldata);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
		
		return finallist;
	}
}
