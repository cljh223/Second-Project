package com.kilha.www.vo.tmap;

import java.util.ArrayList;

public class Excute 
{
	public String shortestExcute(ArrayList<String> shopAddresslist) 
	{
		Lonlat lonlat = new Lonlat();
		Permutation permutation = new Permutation();
		Distance distance = new Distance();
		
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
		System.out.println(routeName.toString());
		
		lonlat.convertlonlat(routeName);
		String data = lonlat.dataSet(routeName.size());
		
		return data;
	}
}
