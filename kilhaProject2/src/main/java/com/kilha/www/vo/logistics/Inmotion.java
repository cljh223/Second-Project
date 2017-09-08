package com.kilha.www.vo.logistics;

public class Inmotion {
	private int motion_code;
	private String office;
	private String goods;
	private int quantity;
	private String deliverydate;
	private String status;
	private int truck_code;
	private int facility_code;
	
	public Inmotion() {
		// TODO Auto-generated constructor stub
	}

	public int getMotion_code() {
		return motion_code;
	}

	public void setMotion_code(int motion_code) {
		this.motion_code = motion_code;
	}

	public String getOffice() {
		return office;
	}

	public void setOffice(String office) {
		this.office = office;
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

	public int getTruck_code() {
		return truck_code;
	}

	public void setTruck_code(int truck_code) {
		this.truck_code = truck_code;
	}

	public int getFacility_code() {
		return facility_code;
	}

	public void setFacility_code(int facility_code) {
		this.facility_code = facility_code;
	}

	@Override
	public String toString() {
		return "inmotion [motion_code=" + motion_code + ", office=" + office + ", goods=" + goods + ", quantity="
				+ quantity + ", deliverydate=" + deliverydate + ", status=" + status + ", truck_code=" + truck_code
				+ ", facility_code=" + facility_code + "]";
	}

}
