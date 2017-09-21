package com.kilha.www.vo.logistics;

public class Truck {
	private String truck_code;
	private String space;
	private int width;
	private int length;
	private int height;
	
	public Truck() {
		// TODO Auto-generated constructor stub
	}

	public String getTruck_code() {
		return truck_code;
	}

	public void setTruck_code(String truck_code) {
		this.truck_code = truck_code;
	}

	public String getSpace() {
		return space;
	}

	public void setSpace(String space) {
		this.space = space;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	@Override
	public String toString() {
		return "truck [truck_code=" + truck_code + ", space=" + space + ", width=" + width + ", length=" + length
				+ ", height=" + height + "]";
	}
	
}
