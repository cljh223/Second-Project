package com.kilha.www.vo.product;

public class ProductinfoVO {
	private String info_num;
	private String r_num;
	private String r_name;
	private String r_factory;
	private String line_num;
	private double loadtime;
	private double standardtime;
	private double operatingtime;
	private double amount;
	private double inputman;
	private double material;
	private double worktime;
	private double losstime;
	private double capa;
	private double goodrate;
	private double fault;
	private String production_date;
	
	public ProductinfoVO() {
		
	}

	public ProductinfoVO(String info_num, String r_num, String r_name, String r_factory, String line_num,
			double loadtime, double standardtime, double operatingtime, double amount, double inputman, double material,
			double worktime, double losstime, double capa, double goodrate, double fault, String production_date) {
		super();
		this.info_num = info_num;
		this.r_num = r_num;
		this.r_name = r_name;
		this.r_factory = r_factory;
		this.line_num = line_num;
		this.loadtime = loadtime;
		this.standardtime = standardtime;
		this.operatingtime = operatingtime;
		this.amount = amount;
		this.inputman = inputman;
		this.material = material;
		this.worktime = worktime;
		this.losstime = losstime;
		this.capa = capa;
		this.goodrate = goodrate;
		this.fault = fault;
		this.production_date = production_date;
	}

	public String getInfo_num() {
		return info_num;
	}

	public void setInfo_num(String info_num) {
		this.info_num = info_num;
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

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getInputman() {
		return inputman;
	}

	public void setInputman(double inputman) {
		this.inputman = inputman;
	}

	public double getMaterial() {
		return material;
	}

	public void setMaterial(double material) {
		this.material = material;
	}

	public double getWorktime() {
		return worktime;
	}

	public void setWorktime(double worktime) {
		this.worktime = worktime;
	}

	public double getLosstime() {
		return losstime;
	}

	public void setLosstime(double losstime) {
		this.losstime = losstime;
	}

	public double getCapa() {
		return capa;
	}

	public void setCapa(double capa) {
		this.capa = capa;
	}

	public double getGoodrate() {
		return goodrate;
	}

	public void setGoodrate(double goodrate) {
		this.goodrate = goodrate;
	}

	public double getFault() {
		return fault;
	}

	public void setFault(double fault) {
		this.fault = fault;
	}

	public String getProduction_date() {
		return production_date;
	}

	public void setProduction_date(String production_date) {
		this.production_date = production_date;
	}

	@Override
	public String toString() {
		return "ProductinfoVO [info_num=" + info_num + ", r_num=" + r_num + ", r_name=" + r_name + ", r_factory="
				+ r_factory + ", line_num=" + line_num + ", loadtime=" + loadtime + ", standardtime=" + standardtime
				+ ", operatingtime=" + operatingtime + ", amount=" + amount + ", inputman=" + inputman + ", material="
				+ material + ", worktime=" + worktime + ", losstime=" + losstime + ", capa=" + capa + ", goodrate="
				+ goodrate + ", fault=" + fault + ", production_date=" + production_date + "]";
	}
	
	
	
}