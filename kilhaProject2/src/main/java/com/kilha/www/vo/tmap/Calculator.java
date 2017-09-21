package com.kilha.www.vo.tmap;

public class Calculator 
{
	public double distance(double lon1, double lat1, double lon2, double lat2) 
	{
		double theta = lon1 - lon2;
		double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2))
				+ Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));

		dist = Math.acos(dist);
		dist = rad2deg(dist);
		dist = dist * 60 * 1.1515 * 1.609344;

		return Double.parseDouble(String.format("%.2f", dist));
	}

	private double deg2rad(double deg) 
	{
		return (deg * Math.PI / 180.0);
	}

	private double rad2deg(double rad) 
	{
		return (rad * 180 / Math.PI);
	}
}
