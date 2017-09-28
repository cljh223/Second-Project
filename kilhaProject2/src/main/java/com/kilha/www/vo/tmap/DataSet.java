package com.kilha.www.vo.tmap;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import com.kilha.www.vo.common.MapData;
import com.kilha.www.vo.sal.Shop;

public class DataSet 
{
   public String shortestDataSet(int size, ArrayList<String> lon, ArrayList<String> lat) 
   {
      SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyyMMddHHmm", Locale.KOREA );
      Date currentTime = new Date ();
      String mTime = mSimpleDateFormat.format ( currentTime );
      
      //출도착지는 고정시킬 것임.
      char pointId = 65;
      String shortest = "{";
      shortest += "\"startName\" : \"출발\"";  
      shortest += ", \"startX\" : " + "\"" + lon.get(0) + "\"";
      shortest += ", \"startY\" : " + "\"" + lat.get(0) + "\"";
      shortest += ", \"startTime\" : " + "\"" + mTime + "\"";
      shortest += ", \"endName\" : \"도착\"";
      shortest += ", \"endX\" : " + "\"" + lon.get(lon.size() - 1) + "\"";
      shortest += ", \"endY\" : " + "\"" + lat.get(lat.size() - 1) + "\"";
      shortest += ", \"carType\" : \"4\"";//없어도 됨.
      shortest += ", \"searchOption\" : \"2\"";//없어도 됨.
      shortest += ", \"viaPoints\" : [";
      
      for(int i = 1; i < size - 1; i++)
      {
         shortest += "{";
         shortest += "\"viaPointId\" : " + "\"" + i + "\"" + ", "; 
         shortest += "\"viaPointName\" : " + "\"" +  pointId + "\"" + ", ";
         shortest += "\"viaX\" : " + "\"" + lon.get(i) + "\"" + ", ";
         shortest += "\"viaY\" : " + "\"" + lat.get(i) + "\"";
         shortest += "},";
         pointId++;
      }
      shortest += "]";
      shortest += "};";
      
      return shortest;
   }
   
   public ArrayList<MapData> shopDataSet(List<Shop> list){
      Lonlat lonlat = new Lonlat();

      ArrayList<String> shopAddressList = new ArrayList<>();
      ArrayList<String> shopName = new ArrayList<>();
      ArrayList<String> shopTel = new ArrayList<>();
      String shopAddress = "";
      
      for(int i = 0; i < list.size(); i++)
      {
         shopAddress += list.get(i).getAddressSet().get(0).getAddressDetail1() + " ";
         shopAddress += list.get(i).getAddressSet().get(0).getAddressDetail2() + " ";
         shopAddress += list.get(i).getAddressSet().get(0).getAddressDetail3() + " ";
         
         if(list.get(i).getAddressSet().get(0).getAddressDetail4() != null
            && !(list.get(i).getAddressSet().get(0).getAddressDetail4().contains("지하")))
         {
            shopAddress += list.get(i).getAddressSet().get(0).getAddressDetail4();
         }
         shopAddressList.add(shopAddress);
         shopName.add(list.get(i).getShopName());
         shopTel.add(list.get(i).getShopTel());
         
         shopAddress = "";
      }
      
      lonlat.getlonlat(shopAddressList);
      ArrayList<String> shopLon = lonlat.route_lon;
      ArrayList<String> shopLat = lonlat.route_lat;
      ArrayList<MapData> shopData = new ArrayList<>();
      
      for(int i = 0; i < list.size(); i++)
      {
         MapData data = new MapData();
         data.setStnNm(shopName.get(i));
         data.setLati(Float.parseFloat(shopLat.get(i)));
         data.setLngt(Float.parseFloat(shopLon.get(i)));
         data.setShopAddress(shopAddressList.get(i));
         data.setShopTel(shopTel.get(i));
         data.setStatus("store");
         
         shopData.add(data);
      }
      
      return shopData;
   }
}