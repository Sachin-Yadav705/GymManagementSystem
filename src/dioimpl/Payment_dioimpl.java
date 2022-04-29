package dioimpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.Payment;

public class Payment_dioimpl extends HibernateDaoSupport{

//INSERT DATA	
	public void InsertData(Payment obj6)
	{
		getHibernateTemplate().save(obj6);
	}
	
//SEARCH DATA
	@SuppressWarnings("unchecked")
	public Payment SearchPayment(int payid)
	{
		List<Payment> paylst=new ArrayList<Payment>();
		paylst=getHibernateTemplate().find("from Payment where payid='"+payid+"'");
		return paylst.get(0);
	}
	
//UPDATE DATA
	public void UpdatePayment(Payment uppay)
	{	
		getHibernateTemplate().saveOrUpdate(uppay);	
	}
	
//DELETE DATA
	public void DeletePayment(Payment delpay)
	{
		getHibernateTemplate().delete(delpay);
	}
	
//SHOW ALL DATA
	@SuppressWarnings("unchecked")
	public List<Payment> ViewAllPAYMENT()
	{
		List<Payment> paylst=new ArrayList<Payment>();
		paylst=getHibernateTemplate().find("from Payment");
		return paylst;
	}
}
