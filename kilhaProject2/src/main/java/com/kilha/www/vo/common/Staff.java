package com.kilha.www.vo.common;

public class Staff {
	private int staff_code;
	private String staff_name;
	private String staff_password;
	private int dep_code;
	private String staff_department;
	
	// 직원코드가 직원 아이디가 되어야 하지 않을까?
	
	public Staff() {
		// TODO Auto-generated constructor stub
	}

	public int getStaff_code() {
		return staff_code;
	}

	public void setStaff_code(int staff_code) {
		this.staff_code = staff_code;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getStaff_password() {
		return staff_password;
	}

	public void setStaff_password(String staff_password) {
		this.staff_password = staff_password;
	}

	public int getDep_code() {
		return dep_code;
	}

	public void setDep_code(int dep_code) {
		this.dep_code = dep_code;
	}

	public String getStaff_department() {
		return staff_department;
	}

	public void setStaff_department(String staff_department) {
		this.staff_department = staff_department;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + dep_code;
		result = prime * result + staff_code;
		result = prime * result + ((staff_department == null) ? 0 : staff_department.hashCode());
		result = prime * result + ((staff_name == null) ? 0 : staff_name.hashCode());
		result = prime * result + ((staff_password == null) ? 0 : staff_password.hashCode());
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
		Staff other = (Staff) obj;
		if (dep_code != other.dep_code)
			return false;
		if (staff_code != other.staff_code)
			return false;
		if (staff_department == null) {
			if (other.staff_department != null)
				return false;
		} else if (!staff_department.equals(other.staff_department))
			return false;
		if (staff_name == null) {
			if (other.staff_name != null)
				return false;
		} else if (!staff_name.equals(other.staff_name))
			return false;
		if (staff_password == null) {
			if (other.staff_password != null)
				return false;
		} else if (!staff_password.equals(other.staff_password))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Staff [staff_code=" + staff_code + ", staff_name=" + staff_name + ", staff_password=" + staff_password
				+ ", dep_code=" + dep_code + ", staff_department=" + staff_department + "]";
	}

	

}
