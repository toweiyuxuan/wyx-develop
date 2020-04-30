package cn.wyx.model;

import java.util.Date;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable
{

	// Fields

	private Integer adminId;
	private String adminName;
	private String adminPassword;
	private String adminReallyname;
	private String adminEmail;
	private Date adminDate;

	// Constructors

	/** default constructor */
	public Admin()
	{
	}

	/** full constructor */
	public Admin(String adminName, String adminPassword,
			String adminReallyname, String adminEmail, Date adminDate)
	{
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.adminReallyname = adminReallyname;
		this.adminEmail = adminEmail;
		this.adminDate = adminDate;
	}

	// Property accessors

	public Integer getAdminId()
	{
		return this.adminId;
	}

	public void setAdminId(Integer adminId)
	{
		this.adminId = adminId;
	}

	public String getAdminName()
	{
		return this.adminName;
	}

	public void setAdminName(String adminName)
	{
		this.adminName = adminName;
	}

	public String getAdminPassword()
	{
		return this.adminPassword;
	}

	public void setAdminPassword(String adminPassword)
	{
		this.adminPassword = adminPassword;
	}

	public String getAdminReallyname()
	{
		return this.adminReallyname;
	}

	public void setAdminReallyname(String adminReallyname)
	{
		this.adminReallyname = adminReallyname;
	}

	public String getAdminEmail()
	{
		return this.adminEmail;
	}

	public void setAdminEmail(String adminEmail)
	{
		this.adminEmail = adminEmail;
	}

	public Date getAdminDate()
	{
		return this.adminDate;
	}

	public void setAdminDate(Date adminDate)
	{
		this.adminDate = adminDate;
	}

}