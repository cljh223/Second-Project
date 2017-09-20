package com.kilha.www.vo.Purchase;

public class OrderRecords {
	private String taskcode;
	private String requestdate;
	private String acceptdate;
	private String enddate;
	private String etc;
	private int staff_code;
	
	public OrderRecords() {
		// TODO Auto-generated constructor stub
	}
	
	

	public String getTaskcode() {
		return taskcode;
	}



	public void setTaskcode(String taskcode) {
		this.taskcode = taskcode;
	}



	public String getRequestdate() {
		return requestdate;
	}



	public void setRequestdate(String requestdate) {
		this.requestdate = requestdate;
	}



	public String getAcceptdate() {
		return acceptdate;
	}



	public void setAcceptdate(String acceptdate) {
		this.acceptdate = acceptdate;
	}



	public String getEnddate() {
		return enddate;
	}



	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}



	public String getEtc() {
		return etc;
	}



	public void setEtc(String etc) {
		this.etc = etc;
	}



	public int getStaff_code() {
		return staff_code;
	}



	public void setStaff_code(int staff_code) {
		this.staff_code = staff_code;
	}



	@Override
	public String toString() {
		return "OrderRecords [taskcode=" + taskcode + ", requestdate=" + requestdate + ", acceptdate=" + acceptdate
				+ ", enddate=" + enddate + ", etc=" + etc + ", staff_code=" + staff_code + "]";
	}

}
