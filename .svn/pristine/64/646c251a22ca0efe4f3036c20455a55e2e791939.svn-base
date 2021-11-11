package com.creatorblue.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorblue.domain.UserInfo;
import com.creatorblue.mapper.UserInfoMapper;

@Service
public class UserInfoService {
	@Autowired
	private UserInfoMapper userInfoMapper;
	
	public Integer addUserInfo(UserInfo userInfo) {
		return userInfoMapper.addUserInfo(userInfo);
	}
	
	public List<UserInfo> queryBy(String userPhone,String userPassword) {
		return userInfoMapper.queryBy(userPhone, userPassword);
	}
	
	//查询手机号的是否重复
	public List<UserInfo> queryByPhone(String userPhone) {
		return userInfoMapper.queryByPhone(userPhone);
	}
}
