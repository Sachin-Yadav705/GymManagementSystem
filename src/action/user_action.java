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
import dioimpl.user_dioimpl;
import pojo.user;

public class user_action extends ActionSupport implements ModelDriven<user>,ServletRequestAware{

	private static final long serialVersionUID = 1L;

	private user usr=new user();
	private user_dioimpl usrreg;
	private ServletRequest request;
	private List<user> urlist=new ArrayList<user>();
	
//	INSERT DATA
	public String ADDDATA()
	{
		usrreg.InsertData(usr);
		return "DATAinsertSUCCESSFULLy";
	}
	
// SEARCH DATA
	public String SearchUser()
	{
		try {
		String usid=request.getParameter("userid");
		int userid=Integer.parseInt(usid);
		usr=usrreg.SearchUser(userid);
		return"UserSearchSuccess";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return("UserErrorSearchSuccess");
		}
	}

// UPDATE DATA
	public String updateuser()
	{
		
	usrreg.UpdateUser(usr);
	return"UdateUserSuccesss";
	}
		
// DELETE DATA
	public String userdelete()
	{
		
	String ur=request.getParameter("userid");
		int userid1=Integer.parseInt(ur);
		usr=usrreg.SearchUser(userid1);
	usrreg.DeleteUser(usr);
		return"UserDeleteSuccess";		
	}
	
// SHOW ALL DATA
	public String AllUser()
	{
		urlist=usrreg.ViewAllUser();
		return"ViewAllUserinoneTable";
	}
	

//LOGIN USER
	
	public String USERLogin() {
		try {
			
			String userid=request.getParameter("userid");
			String password=request.getParameter("password");
			
			int userid1=Integer.parseInt(userid);
			usr=usrreg.SearchUser(userid1);
			
				
			if ((userid1==usr.getUserid()) && password.equals(usr.getPassword())) {
				HttpSession session = ServletActionContext.getRequest().getSession(false);
	            session.setAttribute("loginid_sess",usr.getName());
	            session.setAttribute("loginid_detail",usr);
	            session.setAttribute("userid_sess",usr.getUserid());
	            
	          
				return "UserLoginSuccess";
				
			}
			else {
				return "UserLoginFail";
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
//USER LOGOUT
	
	public String logout()
	{
		HttpSession session = ServletActionContext.getRequest().getSession();
        session.removeAttribute("loginid_sess");
        session.removeAttribute("cart");
        session.removeAttribute("cart_products");
        return "loggedout";
	}
	
	
	public List<user> getUrlist() {
		return urlist;
	}

	public void setUrlist(List<user> urlist) {
		this.urlist = urlist;
	}

	public user getUsr() {
		return usr;
	}

	public void setUsr(user usr) {
		this.usr = usr;
	}

	public user_dioimpl getUsrreg() {
		return usrreg;
	}

	public void setUsrreg(user_dioimpl usrreg) {
		this.usrreg = usrreg;
	}

	public ServletRequest getRequest() {
		return request;
	}

	public void setRequest(ServletRequest request) {
		this.request = request;
	}

	@Override
	public user getModel() {
		
		return usr;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}

}
