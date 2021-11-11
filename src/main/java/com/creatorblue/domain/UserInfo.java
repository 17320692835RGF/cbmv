package com.creatorblue.domain;

public class UserInfo {
	private Integer userId;
	private String userPhone;
	private String userPassword;
	private String userNickName;
	private String userPhoto;
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", userPhone=" + userPhone + ", userPassword=" + userPassword
				+ ", userNickName=" + userNickName + ", userPhoto=" + userPhoto + "]";
	}
	
}
