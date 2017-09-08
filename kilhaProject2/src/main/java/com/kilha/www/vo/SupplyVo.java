package com.kilha.www.vo;

import java.util.List;

public class SupplyVo {
	private String shopName;
	private String addressDetail1;
	private String addressDetail2;
	private String addressDetail3;
	private String addressDetail4;
	private String shopTel;
	private String productUnit;
	private List<SupplyListVo> supplyList;
	private String processInsertDate;
	private String processTerm;
	private String processEndDate;

	public SupplyVo() {
		super();
	}

	public String getProductUnit() {
		return productUnit;
	}

	public void setProductUnit(String productUnit) {
		this.productUnit = productUnit;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getAddressDetail1() {
		return addressDetail1;
	}

	public void setAddressDetail1(String addressDetail1) {
		this.addressDetail1 = addressDetail1;
	}

	public String getAddressDetail2() {
		return addressDetail2;
	}

	public void setAddressDetail2(String addressDetail2) {
		this.addressDetail2 = addressDetail2;
	}

	public String getAddressDetail3() {
		return addressDetail3;
	}

	public void setAddressDetail3(String addressDetail3) {
		this.addressDetail3 = addressDetail3;
	}

	public String getAddressDetail4() {
		return addressDetail4;
	}

	public void setAddressDetail4(String addressDetail4) {
		this.addressDetail4 = addressDetail4;
	}

	public String getShopTel() {
		return shopTel;
	}

	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}

	public List<SupplyListVo> getSupplyList() {
		return supplyList;
	}

	public void setSupplyList(List<SupplyListVo> supplyList) {
		this.supplyList = supplyList;
	}

	public String getProcessInsertDate() {
		return processInsertDate;
	}

	public void setProcessInsertDate(String processInsertDate) {
		this.processInsertDate = processInsertDate;
	}

	public String getProcessTerm() {
		return processTerm;
	}

	public void setProcessTerm(String processTerm) {
		this.processTerm = processTerm;
	}

	public String getProcessEndDate() {
		return processEndDate;
	}

	public void setProcessEndDate(String processEndDate) {
		this.processEndDate = processEndDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addressDetail1 == null) ? 0 : addressDetail1.hashCode());
		result = prime * result + ((addressDetail2 == null) ? 0 : addressDetail2.hashCode());
		result = prime * result + ((addressDetail3 == null) ? 0 : addressDetail3.hashCode());
		result = prime * result + ((addressDetail4 == null) ? 0 : addressDetail4.hashCode());
		result = prime * result + ((processEndDate == null) ? 0 : processEndDate.hashCode());
		result = prime * result + ((processInsertDate == null) ? 0 : processInsertDate.hashCode());
		result = prime * result + ((processTerm == null) ? 0 : processTerm.hashCode());
		result = prime * result + ((productUnit == null) ? 0 : productUnit.hashCode());
		result = prime * result + ((shopName == null) ? 0 : shopName.hashCode());
		result = prime * result + ((shopTel == null) ? 0 : shopTel.hashCode());
		result = prime * result + ((supplyList == null) ? 0 : supplyList.hashCode());
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
		SupplyVo other = (SupplyVo) obj;
		if (addressDetail1 == null) {
			if (other.addressDetail1 != null)
				return false;
		} else if (!addressDetail1.equals(other.addressDetail1))
			return false;
		if (addressDetail2 == null) {
			if (other.addressDetail2 != null)
				return false;
		} else if (!addressDetail2.equals(other.addressDetail2))
			return false;
		if (addressDetail3 == null) {
			if (other.addressDetail3 != null)
				return false;
		} else if (!addressDetail3.equals(other.addressDetail3))
			return false;
		if (addressDetail4 == null) {
			if (other.addressDetail4 != null)
				return false;
		} else if (!addressDetail4.equals(other.addressDetail4))
			return false;
		if (processEndDate == null) {
			if (other.processEndDate != null)
				return false;
		} else if (!processEndDate.equals(other.processEndDate))
			return false;
		if (processInsertDate == null) {
			if (other.processInsertDate != null)
				return false;
		} else if (!processInsertDate.equals(other.processInsertDate))
			return false;
		if (processTerm == null) {
			if (other.processTerm != null)
				return false;
		} else if (!processTerm.equals(other.processTerm))
			return false;
		if (productUnit == null) {
			if (other.productUnit != null)
				return false;
		} else if (!productUnit.equals(other.productUnit))
			return false;
		if (shopName == null) {
			if (other.shopName != null)
				return false;
		} else if (!shopName.equals(other.shopName))
			return false;
		if (shopTel == null) {
			if (other.shopTel != null)
				return false;
		} else if (!shopTel.equals(other.shopTel))
			return false;
		if (supplyList == null) {
			if (other.supplyList != null)
				return false;
		} else if (!supplyList.equals(other.supplyList))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "SupplyVo [shopName=" + shopName + ", addressDetail1=" + addressDetail1 + ", addressDetail2="
				+ addressDetail2 + ", addressDetail3=" + addressDetail3 + ", addressDetail4=" + addressDetail4
				+ ", shopTel=" + shopTel + ", productUnit=" + productUnit + ", supplyList=" + supplyList
				+ ", processInsertDate=" + processInsertDate + ", processTerm=" + processTerm + ", processEndDate="
				+ processEndDate + "]";
	}

}
