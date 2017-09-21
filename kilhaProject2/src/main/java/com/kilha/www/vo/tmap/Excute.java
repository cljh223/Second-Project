package com.kilha.www.vo.tmap;

import java.util.ArrayList;

public class Excute 
{
	public String shortestExcute() 
	{
		long start = System.currentTimeMillis();
		Lonlat lonlat = new Lonlat();
		Permutation permutation = new Permutation();
		Distance distance = new Distance();
		
		lonlat.getlonlat();
		
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
		String last = lonlat.dataSet(routeName.size());
		
		long end = System.currentTimeMillis();
		System.out.println(end - start + "ms");
		
		return last;
	}
}
