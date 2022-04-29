package dioimpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.Product;

public class Product_dioimpl extends HibernateDaoSupport{

//INSERT DATA	
	public void InsertData(Product obj7)
	{
		getHibernateTemplate().save(obj7);
	}

//SEARCH DATA
	@SuppressWarnings("unchecked")
	public Product SearchProduct(int proid)
	{
		List<Product> prolst=new ArrayList<Product>();
		prolst=getHibernateTemplate().find("from Product where proid='"+proid+"'");
		return prolst.get(0);
	}
	
//UPDATE DATA
	public void UpdateProduct(Product uppro)
	{	
		getHibernateTemplate().saveOrUpdate(uppro);	
	}
	
//DELETE DATA
	public void DeleteProduct(Product delpro)
	{
		getHibernateTemplate().delete(delpro);
	}

//SHOW ALL PRODUCT
	@SuppressWarnings("unchecked")
	public List<Product> ViewAllPRODUCT()
	{
		List<Product> proli=new ArrayList<Product>();
		proli=getHibernateTemplate().find("from Product");
		return proli;
	}
	
}
