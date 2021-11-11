package com.creatorblue.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.creatorblue.domain.UmlistInfo;
@Mapper
public interface UmlistInfoMapper {
	//管理员登录校验
	public UmlistInfo login(@Param("mobile")String mobile,@Param("password")String password);
	//查询当前管理员信息
	public UmlistInfo queryAdmin(@Param("umlistId") Integer umlistId);
	//修改管理员密码 
	public Integer update(@Param("mobile")String mobile, @Param("newpassword") String newpassword);
	//查询所有后台用户信息
	public List<UmlistInfo> queryAll(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize);
	
	//根据ID查询单个用户信息
	public UmlistInfo queryById(@Param("umlistId") Integer umlistId);
	
	//根据手机号和姓名模糊查询
	public List<UmlistInfo> queryByPhoneAndName(@Param("umlistPhone") String umlistPhone,@Param("umlistName") String umlistName,@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize);
	
	//保存新增用户信息
	public Integer save(UmlistInfo umlistInfo);
	
	//根据用户ID删除单条数据
	public void del(@Param("umlistId") Integer umlistId);
	
	//根据用户ID批量删除多条数据
	public void deleteMany(@Param("umlistIds")  Integer[] umlistIds);
	
	//修改用户信息
	public int updateInfo(UmlistInfo umlistInfo);
	
	//查询手机号和身份证是否重复
	public List<UmlistInfo> queryByPhoneAndCard(@Param("umlistPhone") String umlistPhone,@Param("umlistCard") String umlistCard,@Param("umlistId") Integer umlistId);
	
	
}
