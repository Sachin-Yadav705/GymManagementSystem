package dioimpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.Attendance;

public class Attendance_dioimpl extends HibernateDaoSupport{
	
//insert	
	public void InserData(Attendance obj3)
	{
		getHibernateTemplate().save(obj3);
	}
	
//SEARCH	
	@SuppressWarnings("unchecked")
	public Attendance SearchAdmin(int attid)
	{
		List<Attendance> ATTidLSt=new ArrayList<Attendance>();
		ATTidLSt=getHibernateTemplate().find("from Attendance where attid='"+attid+"'");
		return ATTidLSt.get(0);
	}	
	
//UPDATE
	public void UpdateAdmin(Attendance attupdt)
	{
		getHibernateTemplate().saveOrUpdate(attupdt);
	}

//DELETE
	public void DeleteAttendance(Attendance delatt)
	{
		getHibernateTemplate().delete(delatt);	
	}

//SHOW ALL ATTENDANCE
	@SuppressWarnings("unchecked")
	public List<Attendance> ViewAllATTENDANCE()
	{
		List<Attendance> attlst=new ArrayList<Attendance>();
		attlst=getHibernateTemplate().find("from Attendance");
		return attlst;
	}
	
}
