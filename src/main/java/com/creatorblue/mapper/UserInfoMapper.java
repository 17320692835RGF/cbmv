package com.creatorblue.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.creatorblue.domain.UserInfo;

@Mapper
public interface UserInfoMapper {
	//用户注册，添加用户信息
	public Integer addUserInfo(UserInfo userInfo);
	
	//查询用户名和密码是否匹配
	public List<UserInfo> queryBy(@Param("userPhone") String userPhone,@Param("userPassword") String userPassword);
	
	//查询手机号的是否重复
	public List<UserInfo> queryByPhone(@Param("userPhone") String userPhone);

}
