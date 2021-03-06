package com.creatorblue.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorblue.mapper.AdminInfoMapper;
import com.creatorblue.util.StringUtil;

@Service
public class AdminInfoService {
	@Autowired
	private AdminInfoMapper adminInfoMapper;
	
	//记录在线人数
	public int addCurrUser(String CurrUserName,HttpSession session) {
		int staticics = 2;
		String staticicsId = StringUtil.getUUIDvalue();
		session.setAttribute("Id", staticicsId);
		return 	adminInfoMapper.addCurrUser(staticics, CurrUserName, staticicsId);
	}
	//按时、天、周、月统计
	public List<Integer> count(int time) {
		List<Integer> list = new ArrayList<Integer>();
		if(time == 1) {
			list.add(adminInfoMapper.onlieHour());
			list.add(adminInfoMapper.registHour());
			list.add(adminInfoMapper.goodsHour());
			list.add(adminInfoMapper.videotimeHour());
		}
		if(time == 2) {
			list.add(adminInfoMapper.onlieDay());
			list.add(adminInfoMapper.registDay());
			list.add(adminInfoMapper.goodsDay());
			list.add(adminInfoMapper.videotimeDay());
		}
		if(time == 3) {
			list.add(adminInfoMapper.onlieWeek());
			list.add(adminInfoMapper.registWeek());
			list.add(adminInfoMapper.goodsWeek());
			list.add(adminInfoMapper.videotimeWeek());
		}
		if(time == 4) {
			list.add(adminInfoMapper.onlieMoney());
			list.add(adminInfoMapper.registMoney());
			list.add(adminInfoMapper.goodsMoney());
			list.add(adminInfoMapper.videotimeMoney());
		}
		return list;
	}
	//退出登录记录
	public int delOutLogin(String statisticsId) {
		return adminInfoMapper.delOutLogin(statisticsId);
	}
}
