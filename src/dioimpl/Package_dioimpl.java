package dioimpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.Package;

public class Package_dioimpl extends HibernateDaoSupport {

//INSERT DATA	
	public void InsertData(Package obj5)
	{
		getHibernateTemplate().save(obj5);
	}
	
//SEARCH DATA
	@SuppressWarnings("unchecked")
	public Package SearchPackage(int packid)
	{
		List<Package> packli=new ArrayList<Package>();
		packli=getHibernateTemplate().find("from Package where packid='"+packid+"'");
		return packli.get(0);
	}
	
//UPADTE PACKAGE
	public void UpdatePackage(Package updtpack)
	{	
		getHibernateTemplate().saveOrUpdate(updtpack);
	}

//DELETE PACKAGE
	public void DeletePackage(Package delpack)
	{
		getHibernateTemplate().delete(delpack);
	}
	
//SHOW ALL PACKAGE
	@SuppressWarnings("unchecked")
	public List<Package> ViewAllPackage()
	{
		List<Package> packlst=new ArrayList<Package>();
		packlst=getHibernateTemplate().find("from Package");
		return packlst;
	}
}
