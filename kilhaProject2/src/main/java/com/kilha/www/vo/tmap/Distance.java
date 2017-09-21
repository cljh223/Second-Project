package com.kilha.www.vo.tmap;

import java.util.ArrayList;

public class Distance 
{
	public ArrayList<Integer> routeA = new ArrayList<Integer>();
	public ArrayList<Integer> routeB = new ArrayList<Integer>();
	public ArrayList<Integer> finalRoute = new ArrayList<Integer>();
	
	public double[][] distance_sum;
	public double sumA = 0.0;
	public double sumB = 0.0;
	public double finalSum = 0.0;
	
	public int cnt = 0;
	
	public void setDistance(ArrayList<String> lon, ArrayList<String> lat)
	{
		Calculator cal = new Calculator();
		distance_sum = new double[lon.size()][lat.size()];
		
		for(int i = 0; i < lon.size(); i++)
		{
			for(int j = 0; j < lon.size(); j++)
			{
				if(i == j)
				{
					distance_sum[i][j] = 0.0;
					//System.out.print(distance_sum[i][j] + " ");
					continue;
				}
				
				distance_sum[i][j] = cal.distance(Double.valueOf((lon.get(i))), Double.valueOf((lat.get(i))), Double.valueOf((lon.get(j))), Double.valueOf((lat.get(j))));
				//System.out.print(distance_sum[i][j] + " ");
			}
			//System.out.println();
		}
	}
	
	public void compareDistance(int arr[])
	{
		if(routeA.size() == routeB.size())
		{
			sumDistance(arr.length);
			
			if(sumA > sumB)
			{
				finalRoute = routeB;
				finalSum = sumB;
				
				sumA = 0;
				sumB = 0;
				routeA.clear();
			}
			
			else if(sumA < sumB)
			{
				finalRoute = routeA;
				finalSum = sumA;
				
				sumA = 0;
				sumB = 0;
				routeB.clear();
			}
			
			else if(sumA == sumB)
			{
				if(routeA.get(0).equals(1))
				{
					finalRoute = routeA;
					cnt++;
				}
				else if(routeB.get(0).equals(1))
				{
					finalRoute = routeB;
					cnt++;
				}
			}
			cnt++;
			//System.out.println(cnt);
		}
	}
	
	public void sumDistance(int size)
	{
		//System.out.println(routeA.toString());
		//System.out.println(routeB.toString());
		
		for(int i = 0; i < size - 1; i++)
		{
			sumA += distance_sum[routeA.get(i) - 1][routeA.get(i + 1) - 1];
			sumB += distance_sum[routeB.get(i) - 1][routeB.get(i + 1) - 1];
		}
	}
	
	public void selectDistance(int[] arr, ArrayList<Integer> Totalroute)
	{
		for(int i = 0; i < Totalroute.size(); i++)
		{
			if((routeB.size() == 0 && routeA.size() != arr.length) || (routeB.size() == arr.length && routeA.size() != arr.length))
			{
				routeA.add(Totalroute.get(i));
				
				if(routeA.size() == routeB.size())
				{
					sumDistance(arr.length);
					compareDistance(arr);
				}
			}
			else if((routeA.size() == 0 && routeB.size() != arr.length) || (routeA.size() == arr.length && routeB.size() != arr.length))
			{
				routeB.add(Totalroute.get(i));
				
				if(routeA.size() == routeB.size())
				{
					sumDistance(arr.length);
					compareDistance(arr);
				}
			}
		}
		
		if(cnt == (Totalroute.size() / arr.length) - 1)
		{
			System.out.println("Shortest");
			System.out.println(finalRoute.toString());
			System.out.println();
			System.err.println(finalSum + "km");
		}
	}
}
