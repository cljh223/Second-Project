package com.kilha.www.vo.Purchase;

public class RM_daily_price {
	private String rmname;
	private String rmdate;
	private String rmopen;
	private String rmhigh;
	private String rmlow;
	private String rmclose;
	private String rmvolume;
	
	public RM_daily_price() {
		// TODO Auto-generated constructor stub
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

	public String getRmopen() {
		return rmopen;
	}

	public void setRmopen(String rmopen) {
		this.rmopen = rmopen;
	}

	public String getRmhigh() {
		return rmhigh;
	}

	public void setRmhigh(String rmhigh) {
		this.rmhigh = rmhigh;
	}

	public String getRmlow() {
		return rmlow;
	}

	public void setRmlow(String rmlow) {
		this.rmlow = rmlow;
	}

	public String getRmclose() {
		return rmclose;
	}

	public void setRmclose(String rmclose) {
		this.rmclose = rmclose;
	}

	public String getRmvolume() {
		return rmvolume;
	}

	public void setRmvolume(String rmvolume) {
		this.rmvolume = rmvolume;
	}

	@Override
	public String toString() {
		return "RM_daily_price [rmname=" + rmname + ", rmdate=" + rmdate + ", rmopen=" + rmopen + ", rmhigh=" + rmhigh
				+ ", rmlow=" + rmlow + ", rmclose=" + rmclose + ", rmvolume=" + rmvolume + "]";
	}

	
}
