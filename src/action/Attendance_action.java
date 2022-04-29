package action;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dioimpl.Attendance_dioimpl;
import pojo.Attendance;

public class Attendance_action extends ActionSupport implements ModelDriven<Attendance>,ServletRequestAware {

	private static final long serialVersionUID = 1L;
	private Attendance att = new Attendance();
	private Attendance_dioimpl attreg;
	private ServletRequest request;
	private List<Attendance> attlist=new ArrayList<Attendance>();
	
//INSERT DATA	
	public String ADDDATA()
	{
		attreg.InserData(att);
		return"AttendanceDataInserted";
	}
	
//SEARCH DATA
	public String AdminSearch()
	{
		try {
		String ATTID=request.getParameter("attid");
		int attid=Integer.parseInt(ATTID);
		att=attreg.SearchAdmin(attid);
		return"AttendanceSearchSuccess";
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
			return("AttendanceErrorFoundSuccess");
		}
	}
	
//UPDATA DATA
	public String UpdateATTendance()
	{
		attreg.UpdateAdmin(att);
		return"AdminUpdateSuccess";
	}

//DELETE DATA
	public String DeleteAtt()
	{
		attreg.DeleteAttendance(att);
		return"ATTendanceDeleteSuccess";
	}
	
//SHOW ALL ATTENDANCE
	public String AllATTENDANCE()
	{
		attlist=attreg.ViewAllATTENDANCE();
		return"ViewAllATTENDANCEinoneTable";
	}
	
	
	
	public List<Attendance> getAttlist() {
		return attlist;
	}

	public void setAttlist(List<Attendance> attlist) {
		this.attlist = attlist;
	}

	public Attendance getAtt() {
		return att;
	}



	public void setAtt(Attendance att) {
		this.att = att;
	}



	public Attendance_dioimpl getAttreg() {
		return attreg;
	}



	public void setAttreg(Attendance_dioimpl attreg) {
		this.attreg = attreg;
	}



	public ServletRequest getRequest() {
		return request;
	}



	public void setRequest(ServletRequest request) {
		this.request = request;
	}

	@Override
	public Attendance getModel() {
		
		return att;
	}



	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		
		this.request=arg0;
	}

}
