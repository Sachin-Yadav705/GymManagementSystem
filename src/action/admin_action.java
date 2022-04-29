package action;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dioimpl.admin_dioimpl;
import pojo.admin;

public class admin_action  extends ActionSupport implements ModelDriven<admin>,ServletRequestAware{

	private static final long serialVersionUID = 1L;

	private admin adm=new admin();
	private admin_dioimpl admreg;
	private ServletRequest request;
	private List<admin> lsadmin=new ArrayList<admin>();
	
	
//	INSERT DATA
	public String ADDDATA()
	{
		admreg.InsertData(adm);
		return "ADMINdataInserted";
	}
	
// SEARCH DATA
	public String AdminSearch()
	{
		try {

		String usrid=request.getParameter("adminid");
		int adminid=Integer.parseInt(usrid);
		adm=admreg.SearchAdmin(adminid);
		return"AdminSearchSuccess";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return("AdminErrorFoundSuccess");
		}
	}
//UPDATE DATA 
	public String UpdateAdmin()
	{
		admreg.UpdateAdmin(adm);
		return"AdminUpdateSuccess";
	}
//DELETE DATA
	public String DeleteAdm()
	{
		admreg.DeleteAdmin(adm);
		return"AdminDeleteSuccess";
	}
	
//SHOW ALL DATA	
	
	public String SHOWAlladmin()
	{
		lsadmin=admreg.viewALLADMIN();
		return"ViewAllAdmin";
	}
	
//LOGIN ADMIN
	public String ADMINLogin() {
		try {
			
			String adminid=request.getParameter("adminid");
			String password=request.getParameter("password");
			
			int adminid1=Integer.parseInt(adminid);
			adm=admreg.SearchAdmin(adminid1);
			
				
			if ((adminid1==adm.getAdminid()) && password.equals(adm.getPassword())) {
				HttpSession session = ServletActionContext.getRequest().getSession(false);
	           session.setAttribute("loginid_sess",adm.getAdminid());
	            session.setAttribute("loginid_detail",adm);
	            session.setAttribute("adminnm_sess",adm.getName());
	          
				return "AdminLoginSuccess";
				
			}
			else {
				return "AdminLoginFail";
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	
//ADMIN LOGOUT
	
		public String logout()
		{
			HttpSession session = ServletActionContext.getRequest().getSession();
	        session.removeAttribute("loginid_sess");
	        session.removeAttribute("cart");
	        session.removeAttribute("cart_products");
	        return "ADMINloggedout";
		}	
	
	
	public List<admin> getLsadmin() {
		return lsadmin;
	}

	public void setLsadmin(List<admin> lsadmin) {
		this.lsadmin = lsadmin;
	}

	public admin getAdm() {
		return adm;
	}

	public void setAdm(admin adm) {
		this.adm = adm;
	}

	public admin_dioimpl getAdmreg() {
		return admreg;
	}

	public void setAdmreg(admin_dioimpl admreg) {
		this.admreg = admreg;
	}

	public ServletRequest getRequest() {
		return request;
	}

	public void setRequest(ServletRequest request) {
		this.request = request;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
	}

	@Override
	public admin getModel() {
		
		return adm;
	}

}
