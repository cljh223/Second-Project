package com.kilha.www.vo.common;

public class MapData 
{
	private String stnNm;
	private float lati;
	private float lngt;
	private String shopAddress;
	private String shopTel;
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
	public String getShopAddress() {
		return shopAddress;
	}
	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}
	public String getShopTel() {
		return shopTel;
	}
	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "MapData [stnNm=" + stnNm + ", lati=" + lati + ", lngt=" + lngt + ", shopAddress=" + shopAddress
				+ ", shopTel=" + shopTel + ", status=" + status + "]";
	}
	
	
}