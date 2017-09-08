package com.kilha.www.vo.Purchase;

public class RawMaterials {

	private String rmcode;
	private String rmname;
	private String rmstock;
	private String rmavgprice;
	
	public RawMaterials() {
		// TODO Auto-generated constructor stub
	}

	public String getRmcode() {
		return rmcode;
	}

	public void setRmcode(String rmcode) {
		this.rmcode = rmcode;
	}

	public String getRmname() {
		return rmname;
	}

	public void setRmname(String rmname) {
		this.rmname = rmname;
	}

	public String getRmstock() {
		return rmstock;
	}

	public void setRmstock(String rmstock) {
		this.rmstock = rmstock;
	}

	public String getRmavgprice() {
		return rmavgprice;
	}

	public void setRmavgprice(String rmavgprice) {
		this.rmavgprice = rmavgprice;
	}

	@Override
	public String toString() {
		return "RawMaterials [rmcode=" + rmcode + ", rmname=" + rmname + ", rmstock=" + rmstock + ", rmavgprice="
				+ rmavgprice + "]";
	}

	
	
}
