package com.kilha.www.vo.sal;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Stock;
import com.kilha.www.vo.logistics.Warehouse;
import com.kilha.www.vo.sal.Supply;

/**
 * �������μ������̺� �� Ŭ����.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Process implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** ���μ��� �ڵ�. */
	private String processCode;

	/** �Է³�¥. */
	private Date processInsertDate;

	/** ��ȿ�Ⱓ. */
	private Date processTerm;

	/** ��ǰ ������. */
	private Date processEndDate;

	/** ���Ῡ��. */
	private Integer processState;

	/** �������̺�. */
	private int shopCode;
	
	private List<Supply> supplySet;

	public Process() {
		super();
	}

	public String getProcessCode() {
		return processCode;
	}

	public void setProcessCode(String processCode) {
		this.processCode = processCode;
	}

	public Date getProcessInsertDate() {
		return processInsertDate;
	}

	public void setProcessInsertDate(Date processInsertDate) {
		this.processInsertDate = processInsertDate;
	}

	public Date getProcessTerm() {
		return processTerm;
	}

	public void setProcessTerm(Date processTerm) {
		this.processTerm = processTerm;
	}

	public Date getProcessEndDate() {
		return processEndDate;
	}

	public void setProcessEndDate(Date processEndDate) {
		this.processEndDate = processEndDate;
	}

	public Integer getProcessState() {
		return processState;
	}

	public void setProcessState(Integer processState) {
		this.processState = processState;
	}

	public int getShopCode() {
		return shopCode;
	}

	public void setShopCode(int shopCode) {
		this.shopCode = shopCode;
	}

	public List<Supply> getSupplySet() {
		return supplySet;
	}

	public void setSupplySet(List<Supply> supplySet) {
		this.supplySet = supplySet;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((processCode == null) ? 0 : processCode.hashCode());
		result = prime * result + ((processEndDate == null) ? 0 : processEndDate.hashCode());
		result = prime * result + ((processInsertDate == null) ? 0 : processInsertDate.hashCode());
		result = prime * result + ((processState == null) ? 0 : processState.hashCode());
		result = prime * result + ((processTerm == null) ? 0 : processTerm.hashCode());
		result = prime * result + shopCode;
		result = prime * result + ((supplySet == null) ? 0 : supplySet.hashCode());
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
		Process other = (Process) obj;
		if (processCode == null) {
			if (other.processCode != null)
				return false;
		} else if (!processCode.equals(other.processCode))
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
		if (processState == null) {
			if (other.processState != null)
				return false;
		} else if (!processState.equals(other.processState))
			return false;
		if (processTerm == null) {
			if (other.processTerm != null)
				return false;
		} else if (!processTerm.equals(other.processTerm))
			return false;
		if (shopCode != other.shopCode)
			return false;
		if (supplySet == null) {
			if (other.supplySet != null)
				return false;
		} else if (!supplySet.equals(other.supplySet))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Process [processCode=" + processCode + ", processInsertDate=" + processInsertDate + ", processTerm="
				+ processTerm + ", processEndDate=" + processEndDate + ", processState=" + processState + ", shopCode="
				+ shopCode + ", supplySet=" + supplySet + ", getProcessCode()=" + getProcessCode()
				+ ", getProcessInsertDate()=" + getProcessInsertDate() + ", getProcessTerm()=" + getProcessTerm()
				+ ", getProcessEndDate()=" + getProcessEndDate() + ", getProcessState()=" + getProcessState()
				+ ", getShopCode()=" + getShopCode() + ", getSupplySet()=" + getSupplySet() + ", hashCode()="
				+ hashCode() + ", getClass()=" + getClass() + ", toString()=" + super.toString() + "]";
	}
	
}
