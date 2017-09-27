package com.kilha.www.vo.product;

public class RecipeVO {
	private String m_num;
	private String r_num;
	private String r_name;
	private double wheat;
	private double potatostarch;
	private double palmoil;
	private double driedbeef;
	private double anchovy;
	private double garlic;
	private double onion;
	private double carrot;
	private double salty;
	private double sugar;
	private double redpepperpowder;
	private double mushroom;
	private double seaweed;
	
	public RecipeVO() {
		// TODO Auto-generated constructor stub
	}

	public RecipeVO(String m_num, String r_num, String r_name, double wheat, double potatostarch, double palmoil,
			double driedbeef, double anchovy, double garlic, double onion, double carrot, double salty, double sugar,
			double redpepperpowder, double mushroom, double seaweed) {
		super();
		this.m_num = m_num;
		this.r_num = r_num;
		this.r_name = r_name;
		this.wheat = wheat;
		this.potatostarch = potatostarch;
		this.palmoil = palmoil;
		this.driedbeef = driedbeef;
		this.anchovy = anchovy;
		this.garlic = garlic;
		this.onion = onion;
		this.carrot = carrot;
		this.salty = salty;
		this.sugar = sugar;
		this.redpepperpowder = redpepperpowder;
		this.mushroom = mushroom;
		this.seaweed = seaweed;
	}

	public String getM_num() {
		return m_num;
	}

	public void setM_num(String m_num) {
		this.m_num = m_num;
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

	public double getWheat() {
		return wheat;
	}

	public void setWeat(double wheat) {
		this.wheat = wheat;
	}

	public double getPotatostarch() {
		return potatostarch;
	}

	public void setPotatostarch(double potatostarch) {
		this.potatostarch = potatostarch;
	}

	public double getPalmoil() {
		return palmoil;
	}

	public void setPalmoil(double palmoil) {
		this.palmoil = palmoil;
	}

	public double getDriedbeef() {
		return driedbeef;
	}

	public void setDriedbeef(double driedbeef) {
		this.driedbeef = driedbeef;
	}

	public double getAnchovy() {
		return anchovy;
	}

	public void setAnchovy(double anchovy) {
		this.anchovy = anchovy;
	}

	public double getGarlic() {
		return garlic;
	}

	public void setGarlic(double garlic) {
		this.garlic = garlic;
	}

	public double getOnion() {
		return onion;
	}

	public void setOnion(double onion) {
		this.onion = onion;
	}

	public double getCarrot() {
		return carrot;
	}

	public void setCarrot(double carrot) {
		this.carrot = carrot;
	}

	public double getSalty() {
		return salty;
	}

	public void setSalty(double salty) {
		this.salty = salty;
	}

	public double getSugar() {
		return sugar;
	}

	public void setSugar(double sugar) {
		this.sugar = sugar;
	}

	public double getRedpepperpowder() {
		return redpepperpowder;
	}

	public void setRedpepperpowder(double redpepperpowder) {
		this.redpepperpowder = redpepperpowder;
	}

	public double getMushroom() {
		return mushroom;
	}

	public void setMushroom(double mushroom) {
		this.mushroom = mushroom;
	}

	public double getSeaweed() {
		return seaweed;
	}

	public void setSeaweed(double seaweed) {
		this.seaweed = seaweed;
	}

	@Override
	public String toString() {
		return "RecipeVO [m_num=" + m_num + ", r_num=" + r_num + ", r_name=" + r_name + ", wheat=" + wheat
				+ ", potatostarch=" + potatostarch + ", palmoil=" + palmoil + ", driedbeef=" + driedbeef + ", anchovy="
				+ anchovy + ", garlic=" + garlic + ", onion=" + onion + ", carrot=" + carrot + ", salty=" + salty
				+ ", sugar=" + sugar + ", redpepperpowder=" + redpepperpowder + ", mushroom=" + mushroom + ", seaweed="
				+ seaweed + "]";
	}
	
	
	
}
