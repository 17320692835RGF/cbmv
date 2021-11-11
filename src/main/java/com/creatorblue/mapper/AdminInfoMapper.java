package com.creatorblue.mapper;

import org.apache.ibatis.annotations.Param;


public interface AdminInfoMapper {
	//记录在线人数
	public int addCurrUser(@Param("staticics")int staticics,@Param("CurrUserName")String CurrUserName,@Param("staticicsId")String staticicsId);
	
	//一小时在线人数
	public int onlieHour();
	//一小时注册人数
	public int registHour();
	//一小时点赞量
	public int goodsHour();
	//一小时播放量
	public int videotimeHour();
	
	//一天在线人数
	public int onlieDay();
	//一天注册人数
	public int registDay();
	//一天点赞量
	public int goodsDay();
	//一天播放量
	public int videotimeDay();
	
	//一周在线人数
	public int onlieWeek();
	//一周注册人数
	public int registWeek();
	//一周点赞量
	public int goodsWeek();
	//一周播放量
	public int videotimeWeek();
	
	//月在线人数
	public int onlieMoney();
	//月注册人数
	public int registMoney();
	//月点赞量
	public int goodsMoney();
	//月播放量
	public int videotimeMoney();
	
	//退出登录删除数据
	public int delOutLogin(String statisticsId);
	
}
