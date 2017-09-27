package com.kilha.www.vo.product;

public class InventoryVO {
	private int materialnum;
	private String materialname;
	private double m_min;
	private double p_amount;
	private double stackrate;
	
	public InventoryVO() {
		// TODO Auto-generated constructor stub
	}

	public InventoryVO(int materialnum, String materialname, double m_min, double p_amount, double stackrate) {
		super();
		this.materialnum = materialnum;
		this.materialname = materialname;
		this.m_min = m_min;
		this.p_amount = p_amount;
		this.stackrate = stackrate;
	}

	public int getMaterialnum() {
		return materialnum;
	}

	public void setMaterialnum(int materialnum) {
		this.materialnum = materialnum;
	}

	public String getMaterialname() {
		return materialname;
	}

	public void setMaterialname(String materialname) {
		this.materialname = materialname;
	}

	public double getM_min() {
		return m_min;
	}

	public void setM_min(double m_min) {
		this.m_min = m_min;
	}

	public double getP_amount() {
		return p_amount;
	}

	public void setP_amount(double p_amount) {
		this.p_amount = p_amount;
	}

	public double getStackrate() {
		return stackrate;
	}

	public void setStackrate(double stackrate) {
		this.stackrate = stackrate;
	}

	@Override
	public String toString() {
		return "InventoryVO [materialnum=" + materialnum + ", materialname=" + materialname + ", m_min=" + m_min
				+ ", p_amount=" + p_amount + ", stackrate=" + stackrate + "]";
	}
	
	
}
