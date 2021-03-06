package com.creatorblue.util;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class VideoUtil {
	/*
	 * 视频地址
	 */
		public final static String PATHV="D:\\cbmv\\video\\" ;
		public final static String PTHP="D:\\cbmv\\coverPhoto\\";
		private VideoUtil() {};
		public static final  int upload(CommonsMultipartFile file ,String  path) {
		//new一个文件对象
		File   filepath = new File(path);
		//路径不存在就创建一个
		if(!filepath.exists()) {
			filepath.mkdirs();
		}
		try {
			file.transferTo(new File(path +file.getOriginalFilename()));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return  0;
		}
			return 1;	
		}
		//删除本地文件
		public static final void delfile(String path) {
			File file = new File(path);
			if(file.exists()) {
				file.delete();
			}
		}
}
