package com.creatorblue.domain;

public class VideoInfo {
	private String videoId;
	private String  videoName;
	private String  techDirection;
	private String  lecturer;
	private int  videoNum;
	private int  fabulousNum;
	private int  collectNum;
	private int  shareNum;
	private  String coverPhoto;
	private String  uploadTime;
	private String  upLoader;
	private String videoAddress;
	private String videoDescription;
	public String getVideoId() {
		return videoId;
	}
	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public String getTechDirection() {
		return techDirection;
	}
	public void setTechDirection(String techDirection) {
		this.techDirection = techDirection;
	}
	public String getLecturer() {
		return lecturer;
	}
	public void setLecturer(String lecturer) {
		this.lecturer = lecturer;
	}
	public int getVideoNum() {
		return videoNum;
	}
	public void setVideoNum(int videoNum) {
		this.videoNum = videoNum;
	}
	public int getFabulousNum() {
		return fabulousNum;
	}
	public void setFabulousNum(int fabulousNum) {
		this.fabulousNum = fabulousNum;
	}
	public int getCollectNum() {
		return collectNum;
	}
	public void setCollectNum(int collectNum) {
		this.collectNum = collectNum;
	}
	public int getShareNum() {
		return shareNum;
	}
	public void setShareNum(int shareNum) {
		this.shareNum = shareNum;
	}
	public String getCoverPhoto() {
		return coverPhoto;
	}
	public void setCoverPhoto(String coverPhoto) {
		this.coverPhoto = coverPhoto;
	}
	public String getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(String uploadTime) {
		this.uploadTime = uploadTime;
	}
	public String getUpLoader() {
		return upLoader;
	}
	public void setUpLoader(String upLoader) {
		this.upLoader = upLoader;
	}
	public String getVideoAddress() {
		return videoAddress;
	}
	public void setVideoAddress(String videoAddress) {
		this.videoAddress = videoAddress;
	}
	public String getVideoDescription() {
		return videoDescription;
	}
	public void setVideoDescription(String videoDescription) {
		this.videoDescription = videoDescription;
	}
	@Override
	public String toString() {
		return "VideoInfo [videoId=" + videoId + ", videoName=" + videoName + ", techDirection=" + techDirection
				+ ", lecturer=" + lecturer + ", videoNum=" + videoNum + ", fabulousNum=" + fabulousNum + ", collectNum="
				+ collectNum + ", shareNum=" + shareNum + ", coverPhoto=" + coverPhoto + ", uploadTime=" + uploadTime
				+ ", upLoader=" + upLoader + ", videoAddress=" + videoAddress + ", videoDescription=" + videoDescription
				+ "]";
	}
	
}
