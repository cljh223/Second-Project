package com.kilha.www.vo.common;

public class MapData 
{
	private String stnNm;
	private float lati;
	private float lngt;
	private String address;
	private String tel;
	private String status;
	public String getStnNm() {
		return stnNm;
	}
	public void setStnNm(String stnNm) {
		this.stnNm = stnNm;
	}
	public float getLati() {
		return lati;
	}
	public void setLati(float lati) {
		this.lati = lati;
	}
	public float getLngt() {
		return lngt;
	}
	public void setLngt(float lngt) {
		this.lngt = lngt;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "MapData [stnNm=" + stnNm + ", lati=" + lati + ", lngt=" + lngt + ", address=" + address + ", tel=" + tel
				+ ", status=" + status + "]";
	}
	
	
}