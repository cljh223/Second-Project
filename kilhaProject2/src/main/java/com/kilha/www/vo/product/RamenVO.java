package com.kilha.www.vo.product;

public class RamenVO {
	private String r_num;
	private String r_name;
	private String r_factory;
	private String line_num;
	private double loadtime;
	private double standardtime;
	private double operatingtime;
	private double usl;
	private double lsl;
	private int recentAmount;
	private String imageurl;
	
	public RamenVO() {

	}

	public RamenVO(String r_num, String r_name, String r_factory, String line_num, double usl, double lsl,
			double loadtime, double standardtime, double operatingtime, int recentAmount, String imageurl) {
		super();
		this.r_num = r_num;
		this.r_name = r_name;
		this.r_factory = r_factory;
		this.line_num = line_num;
		this.usl = usl;
		this.lsl = lsl;
		this.loadtime = loadtime;
		this.standardtime = standardtime;
		this.operatingtime = operatingtime;
		this.recentAmount = recentAmount;
		this.imageurl = imageurl;
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

	public String getR_factory() {
		return r_factory;
	}

	public void setR_factory(String r_factory) {
		this.r_factory = r_factory;
	}

	public String getLine_num() {
		return line_num;
	}

	public void setLine_num(String line_num) {
		this.line_num = line_num;
	}

	public double getUsl() {
		return usl;
	}

	public void setUsl(double usl) {
		this.usl = usl;
	}

	public double getLsl() {
		return lsl;
	}

	public void setLsl(double lsl) {
		this.lsl = lsl;
	}

	public double getLoadtime() {
		return loadtime;
	}

	public void setLoadtime(double loadtime) {
		this.loadtime = loadtime;
	}

	public double getStandardtime() {
		return standardtime;
	}

	public void setStandardtime(double standardtime) {
		this.standardtime = standardtime;
	}

	public double getOperatingtime() {
		return operatingtime;
	}

	public void setOperatingtime(double operatingtime) {
		this.operatingtime = operatingtime;
	}

	public int getRecentAmount() {
		return recentAmount;
	}

	public void setRecentAmount(int recentAmount) {
		this.recentAmount = recentAmount;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	@Override
	public String toString() {
		return "RamenVO [r_num=" + r_num + ", r_name=" + r_name + ", r_factory=" + r_factory + ", line_num=" + line_num
				+ ", usl=" + usl + ", lsl=" + lsl + ", loadtime=" + loadtime + ", standardtime=" + standardtime
				+ ", operatingtime=" + operatingtime + ", recentAmount=" + recentAmount + ", imageurl=" + imageurl
				+ "]";
	}
	
	
}