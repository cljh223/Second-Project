package com.kilha.www.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.net.ssl.HttpsURLConnection;
import javax.swing.SpringLayout.Constraints;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.aspectj.annotation.LazySingletonAspectInstanceFactoryDecorator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kilha.www.vo.tmap.Distance;
import com.kilha.www.vo.tmap.Lonlat;
import com.kilha.www.vo.tmap.Permutation;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MapController {
	
	@RequestMapping(value = "shortest", method = RequestMethod.GET)
	public String shortest(Model model) 
	{
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
		String data = lonlat.dataSet(routeName.size()); // 경유지 총 갯수
		
		model.addAttribute("data", data);
		return "test";
	}
}
