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
	 * ���ڽ�����֤��
	 */
	private String captcha;
	private String date;
		
	//�û�ע��
	public void ajax_u_register() throws IOException
	{	
		//=========ʵ�ʿ������ȥ���˲���==============
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
	
	//�û�ajax�첽��¼
	public void ajax_u_login() throws IOException
	{	
		//=========ʵ�ʿ������ȥ���˲���==============
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
		
		//����Ҫ�����ĵ�����������
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
				//���û�����Ϣ����session��
				session.put("admin", admin);
				response.getWriter().write("success");
			}
			else
			{
				response.getWriter().write("forbid");
			}
		}
	}
	
	//ע��
	public String ajax_u_logout()
	{
		ActionContext context = ActionContext.getContext();		
		Map<String, Object> session = context.getSession();
		session.remove("admin");
		return LOGIN;
	}
	
	//У����֤��
	public void ajax_u_validRcode() throws IOException
	{
		//�����ȷ����֤��
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
	 * ������֤���ͼƬ
	 * @throws Exception
	 */
	public void ajax_u_getImage() throws Exception
	{
		System.out.println("#######################�������ֺ���ĸ����֤��#######################");
		BufferedImage img = new BufferedImage(68, 22,BufferedImage.TYPE_INT_RGB);
		// �õ���ͼƬ�Ļ�ͼ����
		Graphics g = img.getGraphics();
		Random r = new Random();
		Color c = new Color(200, 150, 255);
		g.setColor(c);
		// �������ͼƬ����ɫ
		g.fillRect(0, 0, 68, 22);
		// ��ͼƬ��������ֺ���ĸ
		StringBuffer sb = new StringBuffer();
		char[] ch = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
		int index, len = ch.length;
		for (int i = 0; i < 4; i++)
		{
			index = r.nextInt(len);
			g.setColor(new Color(r.nextInt(88), r.nextInt(188), r.nextInt(255)));
			g.setFont(new Font("Arial", Font.BOLD | Font.ITALIC, 22));
			// ����� ����ʹ�С
			g.drawString("" + ch[index], (i * 15) + 3, 18);
			// дʲô���֣���ͼƬ ��ʲôλ�û�
			sb.append(ch[index]);
		}
		// ����֤���ֵ����session��
		request.getSession().setAttribute("piccode", sb.toString());
		// ����֤���ͼƬд�������
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
