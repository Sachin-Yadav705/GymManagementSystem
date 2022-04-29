package dioimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojo.admin;

public class admin_dioimpl extends HibernateDaoSupport {

	public void InsertData(admin obj2)
	{
		getHibernateTemplate().save(obj2);
	}
	
	@SuppressWarnings("unchecked")
	public admin SearchAdmin(int adminid)
	{
		List<admin> adminidli=new ArrayList<admin>();
		adminidli=getHibernateTemplate().find("from admin where adminid='"+adminid+"'");
		return adminidli.get(0);
	}
	
	public void UpdateAdmin(admin upad)
	{
		getHibernateTemplate().saveOrUpdate(upad);
	}
	
	public void DeleteAdmin(admin deladmin)
	{
		getHibernateTemplate().delete(deladmin);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<admin> viewALLADMIN()
	{
		List<admin> adminidli=new ArrayList<admin>();
		adminidli=getHibernateTemplate().find("from admin");
		return adminidli;
	}
	
}
