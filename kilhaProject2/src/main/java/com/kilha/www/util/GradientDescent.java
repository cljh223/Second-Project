package com.kilha.www.util;

public class GradientDescent {

	private static final double TOLERANCE = 1E-11; // 한계범위
	
	private double theta0;
	private double theta1;
	private int iteration;
	
	public double getTheta0() {
	    return theta0; // 가중치 w
	}
	
	public double getTheta1() {
	    return theta1; // bias b
	}
	
	
	public GradientDescent(double theta0, double theta1) {
	     this.theta0 = theta0;
	     this.theta1 = theta1;
	}
	
	//선형 회귀 방정식 도출
	public double getHypothesisResult(double x){
	    return theta0 + theta1*x; 
	}
	
	//COST FUNCTION을 계산하는 부분 bias의 유무에 따라 식을 나눔
	private double getResult(double[][] trainingData, boolean enableFactor){
	    double result = 0;
	    for (int i = 0; i < trainingData.length; i++) {
	        result = (getHypothesisResult(trainingData[i][0]) - trainingData[i][1]); 
	        if (enableFactor) result = result*trainingData[i][0];  
	    }
	    return result;
	}

	public void train(double learningRate, double[][] trainingData){
	    iteration = 0;
	    double delta0, delta1;
	    
	    do{
	        iteration++;
	      /*  System.out.println("SUBS: " + (learningRate*((double) 1/trainingData.length))*getResult(trainingData, false));*/
	        
	        double temp0 = theta0 - learningRate*(((double) 1/trainingData.length)*getResult(trainingData, false));
	        double temp1 = theta1 - learningRate*(((double) 1/trainingData.length)*getResult(trainingData, true));
	        
	        delta0 = theta0-temp0; 
	        delta1 = theta1-temp1;
	        
	        theta0 = temp0; 
	        theta1 = temp1;
	    }while((Math.abs(delta0) + Math.abs(delta1)) > TOLERANCE);
	    
	    /*System.out.println(iteration);
	    System.out.println(theta0 +", "+theta1);*/
	}
	
	public double[][] linegraph(double theta0, double theta1){
		double[][] lineValue = new double[34][2];
		double start = 200;
		for (int i = 0; i < 34; i++) {
			lineValue[i][0] = start;
			lineValue[i][1] = this.getHypothesisResult(lineValue[i][0]);
			start +=100;
		}
		return lineValue;
	}
}