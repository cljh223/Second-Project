package com.kilha.www.vo;
import java.io.Serializable;

/**
 * ��ǰ������̺� �� Ŭ����.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Supply implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	private int supplyNum;
	
	/** ��ǰ���̺�. */
	private String productCode;

	/** �������μ������̺�. */
	private String processCode;

	/** ����. */
	private Integer supplyVolume;

	/** ��ǰ����. */
	private Integer supplyPrice;

	/**
	 * ������.
	 */
	public Supply() {
	}

	
	
	public int getSupplyNum() {
		return supplyNum;
	}



	public void setSupplyNum(int supplyNum) {
		this.supplyNum = supplyNum;
	}



	public String getProductCode() {
		return productCode;
	}



	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}



	public String getProcessCode() {
		return processCode;
	}



	public void setProcessCode(String processCode) {
		this.processCode = processCode;
	}



	/**
	 * ������ �����մϴ�..
	 * 
	 * @param supplyVolume
	 *            ����
	 */
	public void setSupplyVolume(Integer supplyVolume) {
		this.supplyVolume = supplyVolume;
	}

	/**
	 * ������ �����ɴϴ�..
	 * 
	 * @return ����
	 */
	public Integer getSupplyVolume() {
		return this.supplyVolume;
	}

	/**
	 * ��ǰ������ �����մϴ�..
	 * 
	 * @param supplyPrice
	 *            ��ǰ����
	 */
	public void setSupplyPrice(Integer supplyPrice) {
		this.supplyPrice = supplyPrice;
	}

	/**
	 * ��ǰ������ �����ɴϴ�..
	 * 
	 * @return ��ǰ����
	 */
	public Integer getSupplyPrice() {
		return this.supplyPrice;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((processCode == null) ? 0 : processCode.hashCode());
		result = prime * result + ((productCode == null) ? 0 : productCode.hashCode());
		result = prime * result + supplyNum;
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
		Supply other = (Supply) obj;
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
		if (supplyNum != other.supplyNum)
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
		return "Supply [supplyNum=" + supplyNum + ", productCode=" + productCode + ", processCode=" + processCode
				+ ", supplyVolume=" + supplyVolume + ", supplyPrice=" + supplyPrice + "]";
	}

	
}
