package com.creatorblue.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorblue.domain.VideoInfo;
import com.creatorblue.mapper.CbmvVideoMapper;
import com.creatorblue.util.StringUtil;

@Service
public class CbmvVideoService {
		@Autowired
		private CbmvVideoMapper cbmvVideoMapper;
		//查询所有和按类别查询
		public List<VideoInfo> queryVideos(String techDirection){
			List<VideoInfo> list = new   ArrayList<VideoInfo>();
			System.out.println(techDirection);
			if(techDirection.equals("全部")) {
				list = cbmvVideoMapper.queryVideos();
				return list ;
			}
			list  = cbmvVideoMapper.queryVidesByName(techDirection);
			return  list ;
		}
		//根据id查询
		public VideoInfo video (String videoId,HttpSession session) {
				String userName =(String)session.getAttribute("name");
				int  staticics = 4;
				String statisticsId = StringUtil.getUUIDvalue();
				//统计表插入一条播放记录
			    cbmvVideoMapper.videoNum(videoId, userName, statisticsId, staticics);
			    //查询视频一共多少记录
			    int videoNum = cbmvVideoMapper.selectVideoNum(videoId);
			    cbmvVideoMapper.updateVideoNum(videoId, videoNum);	
			return cbmvVideoMapper.video(videoId);
		}
		//点赞
		public  void addup(String  videoId,HttpSession session) {
			String statisticsId= StringUtil.getUUIDvalue();
			String userName = (String)session.getAttribute("name");
			int staticics = 3;
			String phone = (String) session.getAttribute("phone");
			cbmvVideoMapper.upadd(videoId, userName, statisticsId, staticics,phone);
		}
		//判断是否重复点赞
		public int booleanup(HttpSession session,String videoId) {
			String	phone = (String)session.getAttribute("phone");
			int  bl  = cbmvVideoMapper.booleanup(videoId, phone);
			return bl;
		}
		public void delup(HttpSession session , String videoId) {
			String	phone = (String)session.getAttribute("phone");
			 cbmvVideoMapper.delup(videoId, phone);
		}
		public int countup(String videoId) {
			int  count = cbmvVideoMapper.countup(videoId);
			return  count;
		}
		//更新点赞数
		public void updategood(String videoId , int count) {
			cbmvVideoMapper.updategood(videoId, count);
		}
		
		//判断
		public int booleancol(HttpSession session,String videoId) {
			String	phone = (String)session.getAttribute("phone");
			int  bl  = cbmvVideoMapper.booleancol(videoId, phone);
			return bl;
		}
		//收藏
		public  void colup(String  videoId,HttpSession session) {
			String statisticsId= StringUtil.getUUIDvalue();
			String userName = (String)session.getAttribute("name");
			int staticics = 1;
			String phone = (String) session.getAttribute("phone");
			cbmvVideoMapper.coladd(videoId, userName, statisticsId, staticics,phone);
		}
		//删除
		public void delcol(HttpSession session , String videoId) {
			String	phone = (String)session.getAttribute("phone");
			 cbmvVideoMapper.delcol(videoId, phone);
		}
		//统计并更新收藏数
		public int countcol(String videoId) {
			int  count = cbmvVideoMapper.countcol(videoId);
			  cbmvVideoMapper.updatecol(videoId, count);
			  return count;
		}
		
}
