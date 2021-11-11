package com.creatorblue.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.creatorblue.domain.UmlistInfo;
import com.creatorblue.mapper.UmlistInfoMapper;

@Service
public class UmlistInfoService {
	@Autowired
	private UmlistInfoMapper umlistInfoMapper;
	//管理员登录校验
	public UmlistInfo login(String mobile,String password) {
		return umlistInfoMapper.login(mobile,password);
	}
	//查询当前管理员信息
	public UmlistInfo queryAdmin(Integer umlistId) {
		return umlistInfoMapper.queryAdmin(umlistId);
	}
	//修改管理员密码
	public Integer update(String mobile, String newpassword) {
	    return umlistInfoMapper.update(mobile, newpassword);
	}
	//查询所有后台用户信息
	public List<UmlistInfo> queryAll(Integer pageNum,Integer pageSize) {
		return umlistInfoMapper.queryAll(pageNum, pageSize);
	}
	
	//根据ID查询单个用户信息
	public UmlistInfo queryById(Integer umlistId) {
		return umlistInfoMapper.queryById(umlistId);
	}
	
	//保存新增用户信息
	public Integer save(UmlistInfo umlistInfo) {
		return umlistInfoMapper.save(umlistInfo);
	}
	//根据用户ID删除单条数据
	public void del(Integer umlistId) {
		umlistInfoMapper.del(umlistId);
	}
	
	//根据用户ID批量删除多条数据
	public void deleteMany(Integer[] umlistIds) {
		umlistInfoMapper.deleteMany(umlistIds);
	}
	
	//根据手机号和姓名模糊查询
	public List<UmlistInfo> queryByPhoneAndName(String umlistPhone,String umlistName,Integer pageNum,Integer pageSize) {
		return umlistInfoMapper.queryByPhoneAndName(umlistPhone, umlistName, pageNum, pageSize);	
	}
	
	//修改用户信息
	public int updateInfo(UmlistInfo umlistInfo) {
		return umlistInfoMapper.updateInfo(umlistInfo);
	}
	
	//查询手机号和身份证是否重复
	public List<UmlistInfo> queryByPhoneAndCard(String umlistPhone,String umlistCard,Integer umlistId){
		return umlistInfoMapper.queryByPhoneAndCard(umlistPhone, umlistCard, umlistId);
	}
		
}
