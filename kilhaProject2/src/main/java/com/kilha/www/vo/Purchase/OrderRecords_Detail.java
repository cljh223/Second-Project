package com.kilha.www.vo.Purchase;

public class OrderRecords_Detail {

	private String taskcode;
	private String rmname;
	private int quantity;
	private double price;
	private int total;
	
	public OrderRecords_Detail() {
		// TODO Auto-generated constructor stub
	}

	public String getTaskcode() {
		return taskcode;
	}

	public void setTaskcode(String taskcode) {
		this.taskcode = taskcode;
	}

	public String getRmname() {
		return rmname;
	}

	public void setRmname(String rmname) {
		this.rmname = rmname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "OrderRecords_Detail [taskcode=" + taskcode + ", rmname=" + rmname + ", quantity=" + quantity
				+ ", price=" + price + ", total=" + total + "]";
	}

}
