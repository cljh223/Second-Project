package com.kilha.www.vo.logistics;

public class Shipping {
	private int orderNum; //주문번호
	private String dept; // 부서명
	private String goods; // 상품명
	private int quantity; // 수량
	private String office; // 주문처
	private String deliverydate; // 배송일자
	private String status; // 상태
	private int staff_code; // 직원코드
	private int truck_code; // 트럭번호
	private int warehouse_code; // 시설번호
	
	
	public Shipping() {
		// TODO Auto-generated constructor stub
	}


	public int getOrderNum() {
		return orderNum;
	}


	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}


	public String getDept() {
		return dept;
	}


	public void setDept(String dept) {
		this.dept = dept;
	}


	public String getGoods() {
		return goods;
	}


	public void setGoods(String goods) {
		this.goods = goods;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getOffice() {
		return office;
	}


	public void setOffice(String office) {
		this.office = office;
	}


	public String getDeliverydate() {
		return deliverydate;
	}


	public void setDeliverydate(String deliverydate) {
		this.deliverydate = deliverydate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getStaff_code() {
		return staff_code;
	}


	public void setStaff_code(int staff_code) {
		this.staff_code = staff_code;
	}


	public int getTruck_code() {
		return truck_code;
	}


	public void setTruck_code(int truck_code) {
		this.truck_code = truck_code;
	}


	public int getWarehouse_code() {
		return warehouse_code;
	}


	public void setWarehouse_code(int warehouse_code) {
		this.warehouse_code = warehouse_code;
	}


	@Override
	public String toString() {
		return "Shipping [orderNum=" + orderNum + ", dept=" + dept + ", goods=" + goods + ", quantity=" + quantity
				+ ", office=" + office + ", deliverydate=" + deliverydate + ", status=" + status + ", staff_code="
				+ staff_code + ", truck_code=" + truck_code + ", warehouse_code=" + warehouse_code + "]";
	}


	
}
