package com.kilha.www.vo.product;

public class FactoryVO {
	private int f_num;
	private String fac_name;
	private String fac_address;
	private String fac_tel;
	private int maxamount;
	
	public FactoryVO() {
		// TODO Auto-generated constructor stub
	}

	public FactoryVO(int f_num, String fac_name, String fac_address, String fac_tel, int maxamount) {
		super();
		this.f_num = f_num;
		this.fac_name = fac_name;
		this.fac_address = fac_address;
		this.fac_tel = fac_tel;
		this.maxamount = maxamount;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	public String getFac_name() {
		return fac_name;
	}

	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}

	public String getFac_address() {
		return fac_address;
	}

	public void setFac_address(String fac_address) {
		this.fac_address = fac_address;
	}

	public String getFac_tel() {
		return fac_tel;
	}

	public void setFac_tel(String fac_tel) {
		this.fac_tel = fac_tel;
	}

	public int getMaxamount() {
		return maxamount;
	}

	public void setMaxamount(int maxamount) {
		this.maxamount = maxamount;
	}

	@Override
	public String toString() {
		return "FactoryVO [f_num=" + f_num + ", fac_name=" + fac_name + ", fac_address=" + fac_address + ", fac_tel="
				+ fac_tel + ", maxamount=" + maxamount + "]";
	}
	
	
	
}
