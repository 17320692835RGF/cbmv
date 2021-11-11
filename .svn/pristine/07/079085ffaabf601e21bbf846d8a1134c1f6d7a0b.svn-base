package com.creatorblue.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorblue.domain.VideoInfo;
import com.creatorblue.mapper.VideoInfoMapper;
import com.creatorblue.util.StringUtil;

@Service
public class VideoInfoService {
		@Autowired
		private VideoInfoMapper videoInfoMapper;
		//查询所有
		public  List<VideoInfo> queryVideoAll(){
			return videoInfoMapper.queryVideoAll();
		}
		//增加
		public int  saveVideo (VideoInfo videoInfo) {
			videoInfo.setVideoId(StringUtil.getUUIDvalue());
			return videoInfoMapper.saveVideo(videoInfo);
		}
		//删除
		public int delVideo(String videoId) {
			return  videoInfoMapper.delVideo(videoId);
		}
		//清空
		public int delAll() {
			return 	videoInfoMapper.delAll();
		}
		//删除勾选
		public int delVideos(String[] arr) {
			return videoInfoMapper.delVideos(arr);
		}
		//根据Id查找
		public VideoInfo change(String videoId) {
			return videoInfoMapper.change(videoId);
		}
		//更新
		public int changesave(VideoInfo videoInfo) {
			Date date = new Date();
			
			String time=  String.valueOf(date.getTime());
			System.err.println(time);
			/*videoInfo.setUploadTime(time);*/
			return videoInfoMapper.changesave(videoInfo);
		}
		//下拉框
		public  List<String> selectAll(){
			return videoInfoMapper.selectAll();
		}
		//条件查询
		public List<VideoInfo> selectVideos(String videoName,String techDirection){
			return videoInfoMapper.selectVideos(videoName, techDirection);
		}
		//视频或者图片更改
		public int updateVideos(VideoInfo videoInfo) {
			return  videoInfoMapper.updateVideos(videoInfo);
		}
}
