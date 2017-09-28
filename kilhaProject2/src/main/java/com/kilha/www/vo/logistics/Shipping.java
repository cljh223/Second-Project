package com.kilha.www.vo.logistics;

public class Shipping {
	private int orderNum; //주문번호
	private String truck_code; // 트럭번호
	private String process_code; // 프로세스 번호
	
	
	public Shipping() {
		// TODO Auto-generated constructor stub
	}


	public int getOrderNum() {
		return orderNum;
	}


	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}


	public String getTruck_code() {
		return truck_code;
	}


	public void setTruck_code(String truck_code) {
		this.truck_code = truck_code;
	}


	public String getProcess_code() {
		return process_code;
	}


	public void setProcess_code(String process_code) {
		this.process_code = process_code;
	}


	@Override
	public String toString() {
		return "Shipping [orderNum=" + orderNum + ", truck_code=" + truck_code + ", process_code=" + process_code + "]";
	}

	
}
