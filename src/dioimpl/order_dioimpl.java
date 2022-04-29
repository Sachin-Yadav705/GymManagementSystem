package dioimpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.order;

public class order_dioimpl extends HibernateDaoSupport{
	
//INSERT DATA	
	public void InsertData(order obj4)
	{
		getHibernateTemplate().save(obj4);
	}

//SEARCH DATA
	@SuppressWarnings("unchecked")
	public order SearchOrder(int orderid)
	{
		List<order> orderLST=new ArrayList<order>();
		orderLST=getHibernateTemplate().find("from order where orderid='"+orderid+"'");
		return orderLST.get(0);
	}
	
//UPDATA DATA
	public void UpdateOrder(order updtord)
	{
		getHibernateTemplate().saveOrUpdate(updtord);
	}
	
//DELETE DATA
	public void DeleteOrder(order orddel)
	{
		getHibernateTemplate().delete(orddel);
	}
	
//SHOW ALL ORDER
	@SuppressWarnings("unchecked")
	public List<order> ViewAllOrder()
	{
		List<order> orderli=new ArrayList<order>();
		orderli=getHibernateTemplate().find("from order");
		return orderli;
	}
	
//view my order
	
	  @SuppressWarnings("unchecked") public List<order> Viewmyord(int usrid) {
	  List<order> orderli=new ArrayList<order>();
	  orderli=getHibernateTemplate().find("from order where userid='"+usrid+"'");
	  return orderli; }
	 
}
