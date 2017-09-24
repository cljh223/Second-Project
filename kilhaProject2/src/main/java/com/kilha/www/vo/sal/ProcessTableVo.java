package com.kilha.www.vo.sal;

public class ProcessTableVo {
	private String staffName;
	private String warehouseName;
	private String processTerm;
	private String processEndDate;

	public ProcessTableVo() {
		super();
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
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
		result = prime * result + ((processEndDate == null) ? 0 : processEndDate.hashCode());
		result = prime * result + ((processTerm == null) ? 0 : processTerm.hashCode());
		result = prime * result + ((staffName == null) ? 0 : staffName.hashCode());
		result = prime * result + ((warehouseName == null) ? 0 : warehouseName.hashCode());
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
		ProcessTableVo other = (ProcessTableVo) obj;
		if (processEndDate == null) {
			if (other.processEndDate != null)
				return false;
		} else if (!processEndDate.equals(other.processEndDate))
			return false;
		if (processTerm == null) {
			if (other.processTerm != null)
				return false;
		} else if (!processTerm.equals(other.processTerm))
			return false;
		if (staffName == null) {
			if (other.staffName != null)
				return false;
		} else if (!staffName.equals(other.staffName))
			return false;
		if (warehouseName == null) {
			if (other.warehouseName != null)
				return false;
		} else if (!warehouseName.equals(other.warehouseName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ProcessTableVo [staffName=" + staffName + ", warehouseName=" + warehouseName + ", processTerm="
				+ processTerm + ", processEndDate=" + processEndDate + "]";
	}

}
