package cn.wyx.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import cn.wyx.dao.AdminDao;
import cn.wyx.model.Admin;
import cn.wyx.query.AdminQuery;

public class AdminDaoImpl extends BaseDaoImpl<Admin, AdminQuery> implements AdminDao 
{

	@Override
	public String createHql(AdminQuery equery) 
	{
		String hql = "from Admin t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.adminId desc";	
		return hql;
	}

	@Override
	public String createHqlCount(AdminQuery equery) 
	{
		String hql = "select count(adminId) from Admin t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(AdminQuery equery) 
	{
		String hql = "";		
		
		/*if (StringUtils.isNotBlank(equery.[getxxx]))
		{
			hql = hql + " and t.[xxx] like :[xxx]";
		}
		
		
		if (equery.[getxxx]() != null)
		{
			hql = hql + " and t.[xxx] = :[xxx]";
		}

		
		if (equery.[getxxx]() != null)
		{
			hql = hql + " and t.[xxx] >= :[startTime]";
		}
		if (equery.[getxxx]() != null)
		{
			hql = hql + " and t.[xxx] <= :[endTime]";
		}*/
		
		return hql;
	}

	@Override
	public Admin getAdminByUnameAndPWord(final String username, final String password)
	{
		final String hql = "from Admin u where u.adminName = :adminName and u.adminPassword = :adminPassword";
		Admin admin = this.getHibernateTemplate().execute(new HibernateCallback<Admin>() 
		{
			@Override
			public Admin doInHibernate(Session session) throws HibernateException,SQLException 
			{
				Query query = session.createQuery(hql);
				query.setParameter("adminName",username);
				query.setParameter("adminPassword",password);
				return (Admin) query.uniqueResult();
			}
		});
		return admin;
	}

	@Override
	public Admin getAdminByUname(String username)
	{
		Admin admin = null;
		String hql = "from Admin a where a.adminName = ?";
		List list = this.getHibernateTemplate().find(hql, username);
		if(list.size() > 0)
		{
			admin = (Admin) list.get(0);
		}
		return admin;
	}
	
}
