package com.kilha.www.util;

import org.apache.commons.math3.distribution.NormalDistribution;

public class MathForProduction {
	
	
	public double getNormdiv(double probability, double mean, double sd){
		double normdiv = 0.0;
		
		NormalDistribution normaldistribution = new NormalDistribution(mean, sd);
		normdiv = normaldistribution.inverseCumulativeProbability(probability);
		
		return normdiv;
	}
	
	public double getNormdist(double x, double mean, double sd){
		double normdist = 0.0;

		NormalDistribution normaldistribution = new NormalDistribution(mean, sd);
		normdist = normaldistribution.cumulativeProbability(x);
		
		return normdist;
	}
	
	
	//작업효율
	public double workEfficiency(double man, double operatingtime, double standardtime, double amount) {
		double result = 0.0;
		double capacity = (man*operatingtime)/standardtime;
		result = (amount/capacity)*100;
		return result;
	}
	//시간 가동률
	public double timeOperatingRate(double worktime, double loadtime){
		double result = 0.0;
		result = (worktime/loadtime)*100;
		return result;
	}
	//성능 가동률
	public double performanceOperatingRate(double standardtime, double amount, double worktime){
		double result = 0.0;
		result = ((standardtime*amount)/worktime)*100;
		return result;
	}
	//설비종합 효율
	public double totalFacilityEfficiency(double standardtime, double amount, double loadtime, double goodrate){
		double result = 0.0;
		result = ((standardtime * amount)/loadtime)*goodrate;
		return result;
	}
}
