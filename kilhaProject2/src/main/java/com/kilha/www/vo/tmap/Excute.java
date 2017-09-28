package com.kilha.www.vo.tmap;

import java.util.ArrayList;

public class Excute 
{
   public String shortestExcute(ArrayList<String> shopAddresslist) 
   {
      Lonlat lonlat = new Lonlat();
      Permutation permutation = new Permutation();
      Distance distance = new Distance();
      DataSet dataset = new DataSet();
      
      lonlat.getlonlat(shopAddresslist);
      
      int size = lonlat.list.size();
      int arr[] = permutation.setarr(size);
      permutation.perm(arr, 0, arr.length, arr.length);

      ArrayList<Integer> Totalroute = permutation.all;
      distance.setDistance(lonlat.route_lon, lonlat.route_lat);
      distance.selectDistance(arr, Totalroute);
      
      ArrayList<Integer> route = distance.finalRoute;
      ArrayList<String> routeName = new ArrayList<String>();
      
      for(int i = 0; i < route.size(); i++)
      {
         routeName.add(lonlat.list.get(route.get(i) - 1));
      }
      
      lonlat.convertlonlat(routeName);
      String data = dataset.shortestDataSet(routeName.size(), lonlat.finalRoute_lon, lonlat.finalRoute_lat);
      
      return data;
   }
}