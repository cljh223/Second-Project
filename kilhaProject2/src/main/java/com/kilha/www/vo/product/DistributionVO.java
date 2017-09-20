package com.kilha.www.vo.product;

public class DistributionVO {
	private int distribution;
	private int range;
	
	public DistributionVO() {
		// TODO Auto-generated constructor stub
	}

	public DistributionVO(int distribution, int range) {
		super();
		this.distribution = distribution;
		this.range = range;
	}

	public int getDistribution() {
		return distribution;
	}

	public void setDistribution(int distribution) {
		this.distribution = distribution;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	@Override
	public String toString() {
		return "DistributionVO [distribution=" + distribution + ", range=" + range + "]";
	}
	
	
}
