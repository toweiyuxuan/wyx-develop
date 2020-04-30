package cn.wyx.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;

import org.apache.commons.lang.StringUtils;

import cn.wyx.model.Admin;
import cn.wyx.query.AdminQuery;
import cn.wyx.service.AdminService;
import cn.wyx.utils.MD5Utils;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class AdminAction extends BaseAction 
{	

	private Admin admin;
	private AdminService adminService;
	
	/**
	 * 用于接收验证码
	 */
	private String captcha;
	private String date;
		
	//用户注册
	public void ajax_u_register() throws IOException
	{	
		//=========实际开发务必去除此部分==============
		try
		{
			Thread.sleep(3000);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		//=======================================
				
		ActionContext context = ActionContext.getContext();
		
		Admin admin1 = adminService.getAdminByUname(admin.getAdminName());
		if(admin1!=null)
		{
			response.getWriter().write("fail");
		}
		else
		{
			String password = admin.getAdminPassword();
			password = MD5Utils.md5(password);		
			admin.setAdminPassword(password);
			admin.setAdminName(admin.getAdminName());
			admin.setAdminPassword(admin.getAdminPassword());
			admin.setAdminReallyname(admin.getAdminReallyname());
			admin.setAdminEmail(admin.getAdminEmail());
			admin.setAdminDate(new Date());
			adminService.save(admin);
			response.getWriter().write("success");
		}
	}
	
	//用户ajax异步登录
	public void ajax_u_login() throws IOException
	{	
		//=========实际开发务必去除此部分==============
		try
		{
			Thread.sleep(3000);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		//=======================================
		
		ActionContext context = ActionContext.getContext();
		
		//我们要给明文的密码做加密
		String newPass = MD5Utils.md5(admin.getAdminPassword());
		Admin admin1 = adminService.getAdminByUnameAndPWord(admin.getAdminName(), newPass);
		if(admin1 == null)
		{
			response.getWriter().write("fail");
		}
		else
		{
			if(admin.getAdminName().equals("weiyuxuan") || admin.getAdminName().equals("kmust"))
			{
				Map<String, Object> session = context.getSession();
				//把用户的信息放入session中
				session.put("admin", admin);
				response.getWriter().write("success");
			}
			else
			{
				response.getWriter().write("forbid");
			}
		}
	}
	
	//注销
	public String ajax_u_logout()
	{
		ActionContext context = ActionContext.getContext();		
		Map<String, Object> session = context.getSession();
		session.remove("admin");
		return LOGIN;
	}
	
	//校验验证码
	public void ajax_u_validRcode() throws IOException
	{
		//获得正确的验证码
		String rightCap = (String) session.getAttribute("piccode");
		
		if(!StringUtils.equalsIgnoreCase(rightCap, captcha))
		{			
			response.getWriter().write("no");
		}
		else
		{			
			response.getWriter().write("yes");
		}
	}
	
	/**
	 * 生成验证码的图片
	 * @throws Exception
	 */
	public void ajax_u_getImage() throws Exception
	{
		System.out.println("#######################生成数字和字母的验证码#######################");
		BufferedImage img = new BufferedImage(68, 22,BufferedImage.TYPE_INT_RGB);
		// 得到该图片的绘图对象
		Graphics g = img.getGraphics();
		Random r = new Random();
		Color c = new Color(200, 150, 255);
		g.setColor(c);
		// 填充整个图片的颜色
		g.fillRect(0, 0, 68, 22);
		// 向图片中输出数字和字母
		StringBuffer sb = new StringBuffer();
		char[] ch = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
		int index, len = ch.length;
		for (int i = 0; i < 4; i++)
		{
			index = r.nextInt(len);
			g.setColor(new Color(r.nextInt(88), r.nextInt(188), r.nextInt(255)));
			g.setFont(new Font("Arial", Font.BOLD | Font.ITALIC, 22));
			// 输出的 字体和大小
			g.drawString("" + ch[index], (i * 15) + 3, 18);
			// 写什么数字，在图片 的什么位置画
			sb.append(ch[index]);
		}
		// 把验证码的值放入session中
		request.getSession().setAttribute("piccode", sb.toString());
		// 把验证码的图片写回浏览器
		ImageIO.write(img, "JPG", response.getOutputStream());
	}
	
	//============================================setter and getter=====================================================
	public AdminService getAdminService() 
	{
		return adminService;
	}
	public void setAdminService(AdminService adminService) 
	{
		this.adminService = adminService;
	}

	public Admin getAdmin()
	{
		return admin;
	}

	public void setAdmin(Admin admin)
	{
		this.admin = admin;
	}

	public String getCaptcha()
	{
		return captcha;
	}

	public void setCaptcha(String captcha)
	{
		this.captcha = captcha;
	}

	public String getDate()
	{
		return date;
	}

	public void setDate(String date)
	{
		this.date = date;
	}
	
}
