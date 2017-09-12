package com.kilha.www.vo.product;

public class ProductVO {
	private String product_num;
	private String r_num;
	private String line_num;
	private double weight;
	
	public ProductVO() {

	}

	public ProductVO(String product_num, String r_num, String line_num, double weight) {
		super();
		this.product_num = product_num;
		this.r_num = r_num;
		this.line_num = line_num;
		this.weight = weight;
	}

	public String getProduct_num() {
		return product_num;
	}

	public void setProduct_num(String product_num) {
		this.product_num = product_num;
	}

	public String getR_num() {
		return r_num;
	}

	public void setR_num(String r_num) {
		this.r_num = r_num;
	}

	public String getLine_num() {
		return line_num;
	}

	public void setLine_num(String line_num) {
		this.line_num = line_num;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		return "ProductVO [product_num=" + product_num + ", r_num=" + r_num + ", line_num=" + line_num + ", weight="
				+ weight + "]";
	}
	
	
}
