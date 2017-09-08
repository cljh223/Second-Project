package com.kilha.www.vo.Purchase;

public class TradeRecords {
	private String dealdate;
	private String rmname;
	private String rmcode;
	private String dealtype;
	private String quantity;
	private String price;
	private String totalprice;
	private String profits;
	private String profitrates;
	
	public TradeRecords() {
		// TODO Auto-generated constructor stub
	}

	public String getDealdate() {
		return dealdate;
	}

	public void setDealdate(String dealdate) {
		this.dealdate = dealdate;
	}

	public String getRmname() {
		return rmname;
	}

	public void setRmname(String rmname) {
		this.rmname = rmname;
	}

	public String getRmcode() {
		return rmcode;
	}

	public void setRmcode(String rmcode) {
		this.rmcode = rmcode;
	}

	public String getDealtype() {
		return dealtype;
	}

	public void setDealtype(String dealtype) {
		this.dealtype = dealtype;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}

	public String getProfits() {
		return profits;
	}

	public void setProfits(String profits) {
		this.profits = profits;
	}

	public String getProfitrates() {
		return profitrates;
	}

	public void setProfitrates(String profitrates) {
		this.profitrates = profitrates;
	}

	@Override
	public String toString() {
		return "TradeRecords [dealdate=" + dealdate + ", rmname=" + rmname + ", rmcode=" + rmcode + ", dealtype="
				+ dealtype + ", quantity=" + quantity + ", price=" + price + ", totalprice=" + totalprice + ", profits="
				+ profits + ", profitrates=" + profitrates + "]";
	}

	
}
