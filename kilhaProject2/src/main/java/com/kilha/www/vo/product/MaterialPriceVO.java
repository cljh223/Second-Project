package com.kilha.www.vo.product;

public class MaterialPriceVO {
	private String rmname;
	private String rmdate;
	private double rmopen;
	private double rmhigh;
	private double rmlow;
	private double rmclose;
	private double rmvolume;
	
	public MaterialPriceVO() {
		// TODO Auto-generated constructor stub
	}

	public MaterialPriceVO(String rmname, String rmdate, double rmopen, double rmhigh, double rmlow, double rmclose,
			double rmvolume) {
		super();
		this.rmname = rmname;
		this.rmdate = rmdate;
		this.rmopen = rmopen;
		this.rmhigh = rmhigh;
		this.rmlow = rmlow;
		this.rmclose = rmclose;
		this.rmvolume = rmvolume;
	}

	public String getRmname() {
		return rmname;
	}

	public void setRmname(String rmname) {
		this.rmname = rmname;
	}

	public String getRmdate() {
		return rmdate;
	}

	public void setRmdate(String rmdate) {
		this.rmdate = rmdate;
	}

	public double getRmopen() {
		return rmopen;
	}

	public void setRmopen(double rmopen) {
		this.rmopen = rmopen;
	}

	public double getRmhigh() {
		return rmhigh;
	}

	public void setRmhigh(double rmhigh) {
		this.rmhigh = rmhigh;
	}

	public double getRmlow() {
		return rmlow;
	}

	public void setRmlow(double rmlow) {
		this.rmlow = rmlow;
	}

	public double getRmclose() {
		return rmclose;
	}

	public void setRmclose(double rmclose) {
		this.rmclose = rmclose;
	}

	public double getRmvolume() {
		return rmvolume;
	}

	public void setRmvolume(double rmvolume) {
		this.rmvolume = rmvolume;
	}

	@Override
	public String toString() {
		return "MaterialPriceVO [rmname=" + rmname + ", rmdate=" + rmdate + ", rmopen=" + rmopen + ", rmhigh=" + rmhigh
				+ ", rmlow=" + rmlow + ", rmclose=" + rmclose + ", rmvolume=" + rmvolume + "]";
	}
}
