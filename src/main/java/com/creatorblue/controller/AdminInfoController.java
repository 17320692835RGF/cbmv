package com.creatorblue.controller;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.creatorblue.service.AdminInfoService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/AdminInfo")
public class AdminInfoController {
	@Autowired
	private AdminInfoService adminInfoService;
	
	//注销
	 @RequestMapping(value="/outLogin",produces="text/htm;charset=utf-8")
	 public String outLogin(HttpSession session) {
		session.removeAttribute("currUser");
		session.invalidate();
		return "redirect:../login.html";
	 }
	 
	 //查一小时
	 @RequestMapping("/count")
	 @ResponseBody
	 public String count(int time) {
		 List<Integer> list ;
		 list =adminInfoService.count(time);
		return  JSONArray.fromObject(list).toString();
	 }
	 
	 //验证码
	@RequestMapping("/validCode")
	public void validCode(HttpSession session,HttpServletResponse response) {
		//定义存放验证码的数组
		char[]  cs = new  char[62];
		int count = 0;
		for(int i =65;i<= 90; i++){
			cs[count++] = (char)i;
		}
		for(int i=97;i<=122;i++){
			cs[count++] =(char)i;
		}
		for(int i=48;i<= 57; i++){
			cs[count++] =(char)i;
		}
		//创建一个图像
		BufferedImage bi = new BufferedImage(150,50,BufferedImage.TYPE_3BYTE_BGR);
		//获取画板
		Graphics gi = bi.getGraphics();
		//填充背景
		gi.fillRect(0, 0, 150, 50);
		gi.setColor(Color.white);
		//随机取一个值
		Random r = new Random();
		char[] ch = new char[62];
		char one =cs[r.nextInt(61)];
		char two =cs[r.nextInt(61)];
		char three =cs[r.nextInt(61)];
		char four =cs[r.nextInt(61)];
		//存入到session
		String lc ="";
		lc=lc+ one+two+three+four;
		session.setAttribute("chatp", lc);
		Font f =new Font("宋体",Font.ITALIC|Font.BOLD,r.nextInt(45-30)+30);
		gi.setFont(f);
		//产生四种颜色
		Object[] c = new Object[4];
		for(int i = 0; i<4; i++){
		int cr = r.nextInt(200);
		int cg = r.nextInt(200);
		int cb = r.nextInt(200);
		 c[i] = new Color(cr,cg,cb);
		}
		gi.setColor((Color)c[0]);
		gi.drawString(String.valueOf(one), 20, 30);
		gi.setColor((Color)c[1]);
		gi.drawString(String.valueOf(two), 60, 30);
		gi.setColor((Color)c[2]);
		gi.drawString(String.valueOf(three), 80, 40);
		gi.setColor((Color)c[3]);
		gi.drawString(String.valueOf(four), 100, 25);
		//生成干扰线
		for(int i =0 ; i<4;i++){
			int lr = r.nextInt(200);
			int lg = r.nextInt(200);
			int lb = r.nextInt(200);
			Color lrgb = new Color(lr,lg,lb);
			gi.setColor(lrgb);
			((Graphics2D)gi).setStroke(new BasicStroke(r.nextInt(2)+1));
			gi.drawLine(r.nextInt(30),r.nextInt(20), r.nextInt(150-30)+30, r.nextInt(50));
		}
		//创建输出流
		OutputStream os = null;
		try {
			// 禁止图像缓存。
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			response.setContentType("image/jpeg");

			os = response.getOutputStream();
			//释放响应对象
			response.reset();
			//输出图像
			ImageIO.write(bi, "jpg", os);
			os.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
