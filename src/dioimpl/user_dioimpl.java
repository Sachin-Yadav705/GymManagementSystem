package dioimpl;
import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.user;
public class user_dioimpl extends HibernateDaoSupport{
	
	public void InsertData(user obj1)
	{
		getHibernateTemplate().save(obj1);
	}
	@SuppressWarnings("unchecked")
	public user SearchUser(int userid)
	{
		List<user> userli=new ArrayList<user>();
		userli=getHibernateTemplate().find("from user where userid='"+userid+"'");
		return userli.get(0);
	}
	
	public void UpdateUser(user up)
	{	
		getHibernateTemplate().saveOrUpdate(up);	
	}
	
	public void DeleteUser(user dl)
	{
		getHibernateTemplate().delete(dl);
	}
	
	@SuppressWarnings("unchecked")
	public List<user> ViewAllUser()
	{
		List<user> userli=new ArrayList<user>();
		userli=getHibernateTemplate().find("from user");
		return userli;
	}
	
}
