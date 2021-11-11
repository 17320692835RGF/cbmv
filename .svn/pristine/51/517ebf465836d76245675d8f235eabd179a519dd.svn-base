package com.creatorblue.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.creatorblue.domain.CustlistInfo;


@Mapper
public interface CustlistInfoMapper {
	//查询全部
	public List<CustlistInfo> queryAll(@Param("pageNum")Integer pageNum,@Param("pageSize")Integer pageSize);
	//条件查询,按手机、姓名、昵称查询
	public List<CustlistInfo> query(@Param("mobile")String mobile,@Param("name")String name,
			@Param("nickname")String nickname);
	//查询所有订单带分页功能
	public List<CustlistInfo> queryAllWithPage(@Param("mobile")String mobile,@Param("name")String name,
			@Param("nickname")String nickname, @Param("pageSize")int pageSize, @Param("pageNum")int pageNum);
	//用户注册，添加用户信息
	public Integer addCustlistInfo(CustlistInfo custlistInfo);
	//查询用户名和密码是否匹配
	public List<CustlistInfo> queryBy(@Param("custlistMobile") String custlistMobile,@Param("custlistPassword") String custlistPassword);	
	//查询手机号的是否重复
	public List<CustlistInfo> queryByPhone(@Param("custlistMobile") String custlistMobile);
	//根据用户ID删除单条数据
	public void deletes(@Param("custlistId") int custlistId);
	
	//通过用户ID查询信息
	public CustlistInfo queryById(@Param("custlistId") Integer custlistId);
	
	//修改用户信息
	public void updateInfo(CustlistInfo custlistInfo);
	
}
