package com.creatorblue.domain;

public class UmlistInfo {
	private Integer umlistId;
	private String umlistName;
	private String umlistPhone;
	private String umlistCard;
	private String umlistPwd;
	public Integer getUmlistId() {
		return umlistId;
	}
	public void setUmlistId(Integer umlistId) {
		this.umlistId = umlistId;
	}
	public String getUmlistName() {
		return umlistName;
	}
	public void setUmlistName(String umlistName) {
		this.umlistName = umlistName;
	}
	public String getUmlistPhone() {
		return umlistPhone;
	}
	public void setUmlistPhone(String umlistPhone) {
		this.umlistPhone = umlistPhone;
	}
	public String getUmlistCard() {
		return umlistCard;
	}
	public void setUmlistCard(String umlistCard) {
		this.umlistCard = umlistCard;
	}
	public String getUmlistPwd() {
		return umlistPwd;
	}
	public void setUmlistPwd(String umlistPwd) {
		this.umlistPwd = umlistPwd;
	}
	@Override
	public String toString() {
		return "UmlistInfo [umlistId=" + umlistId + ", umlistName=" + umlistName + ", umlistPhone=" + umlistPhone
				+ ", umlistCard=" + umlistCard + ", umlistPwd=" + umlistPwd + "]";
	}
	
}
