package com.kilha.www.vo.product;

public class TotalinfoVO {
	private int t_num;
	private String r_num;
	private String r_name;
	private double t_amount;
	private double t_time;
	private double t_man;
	private double t_cost;
	private String startdate;
	private String enddate;
	private String buydate;
	
	public TotalinfoVO() {
		
	}

	public TotalinfoVO(int t_num, String r_num, String r_name, double t_amount, double t_time, double t_man,
			double t_cost, String startdate, String enddate, String buydate) {
		super();
		this.t_num = t_num;
		this.r_num = r_num;
		this.r_name = r_name;
		this.t_amount = t_amount;
		this.t_time = t_time;
		this.t_man = t_man;
		this.t_cost = t_cost;
		this.startdate = startdate;
		this.enddate = enddate;
		this.buydate = buydate;
	}

	public int getT_num() {
		return t_num;
	}

	public void setT_num(int t_num) {
		this.t_num = t_num;
	}

	public String getR_num() {
		return r_num;
	}

	public void setR_num(String r_num) {
		this.r_num = r_num;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public double getT_amount() {
		return t_amount;
	}

	public void setT_amount(double t_amount) {
		this.t_amount = t_amount;
	}

	public double getT_time() {
		return t_time;
	}

	public void setT_time(double t_time) {
		this.t_time = t_time;
	}

	public double getT_man() {
		return t_man;
	}

	public void setT_man(double t_man) {
		this.t_man = t_man;
	}

	public double getT_cost() {
		return t_cost;
	}

	public void setT_cost(double t_cost) {
		this.t_cost = t_cost;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getBuydate() {
		return buydate;
	}

	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}

	@Override
	public String toString() {
		return "TotalinfoVO [t_num=" + t_num + ", r_num=" + r_num + ", r_name=" + r_name + ", t_amount=" + t_amount
				+ ", t_time=" + t_time + ", t_man=" + t_man + ", t_cost=" + t_cost + ", startdate=" + startdate
				+ ", enddate=" + enddate + ", buydate=" + buydate + "]";
	}

	
}
