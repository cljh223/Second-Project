package com.kilha.www.vo.sal;

public class SupplyListVo {
	
	private String productCode;

	private String productName;
	
	private String productUnit;
	
	private String processCode;

	private Integer supplyVolume;

	private Integer supplyPrice;

	public SupplyListVo() {
		super();
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductUnit() {
		return productUnit;
	}

	public void setProductUnit(String productUnit) {
		this.productUnit = productUnit;
	}

	public String getProcessCode() {
		return processCode;
	}

	public void setProcessCode(String processCode) {
		this.processCode = processCode;
	}

	public Integer getSupplyVolume() {
		return supplyVolume;
	}

	public void setSupplyVolume(Integer supplyVolume) {
		this.supplyVolume = supplyVolume;
	}

	public Integer getSupplyPrice() {
		return supplyPrice;
	}

	public void setSupplyPrice(Integer supplyPrice) {
		this.supplyPrice = supplyPrice;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((processCode == null) ? 0 : processCode.hashCode());
		result = prime * result + ((productCode == null) ? 0 : productCode.hashCode());
		result = prime * result + ((productName == null) ? 0 : productName.hashCode());
		result = prime * result + ((productUnit == null) ? 0 : productUnit.hashCode());
		result = prime * result + ((supplyPrice == null) ? 0 : supplyPrice.hashCode());
		result = prime * result + ((supplyVolume == null) ? 0 : supplyVolume.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SupplyListVo other = (SupplyListVo) obj;
		if (processCode == null) {
			if (other.processCode != null)
				return false;
		} else if (!processCode.equals(other.processCode))
			return false;
		if (productCode == null) {
			if (other.productCode != null)
				return false;
		} else if (!productCode.equals(other.productCode))
			return false;
		if (productName == null) {
			if (other.productName != null)
				return false;
		} else if (!productName.equals(other.productName))
			return false;
		if (productUnit == null) {
			if (other.productUnit != null)
				return false;
		} else if (!productUnit.equals(other.productUnit))
			return false;
		if (supplyPrice == null) {
			if (other.supplyPrice != null)
				return false;
		} else if (!supplyPrice.equals(other.supplyPrice))
			return false;
		if (supplyVolume == null) {
			if (other.supplyVolume != null)
				return false;
		} else if (!supplyVolume.equals(other.supplyVolume))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "SupplyListVo [productCode=" + productCode + ", productName=" + productName + ", productUnit="
				+ productUnit + ", processCode=" + processCode + ", supplyVolume=" + supplyVolume + ", supplyPrice="
				+ supplyPrice + "]";
	}
	
	
}
