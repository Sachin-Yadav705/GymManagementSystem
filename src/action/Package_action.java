package action;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dioimpl.Package_dioimpl;
import pojo.Package;

public class Package_action  extends ActionSupport implements ModelDriven<Package>,ServletRequestAware{
	
	private static final long serialVersionUID = 1L;
	private Package pack =new Package();
	private Package_dioimpl packreg;
	private ServletRequest request;
	private List<Package> packlist=new ArrayList<Package>();
	private int count=0;
	
	
//INSERT DATA	
	public String ADDDATA()
	{
		packreg.InsertData(pack);
		return"PackageDataInserted";
	}
	
//SEARCH DATA
	public String SearchPACKAGE()
	{
		try {
		String pakid=request.getParameter("packid");
		int packid=Integer.parseInt(pakid);
		pack=packreg.SearchPackage(packid);
		return"PACKAGESearchSuccessfully";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return("PackageErrorFoundSuccess");
		}
	}
	
//UPDATE DATA
	public String UpdatePACKAGE()
	{		
	packreg.UpdatePackage(pack);
	return"UdatePackageSuccessFully";
	}

//DELETE DATA
	public String DELETEPACKAGE()
	{
		packreg.DeletePackage(pack);
		return"PAckageDeleteSuccessfully";
	}
	
	
// SHOW ALL DATA
		public String AllPACKAGE()
		{
			packlist=packreg.ViewAllPackage();
			return"ViewAllPACKAGEinoneTable";
		}	
		
		
//View All Packages
		public String Packgedisplay()
		{ 
			/*
			 * String pagedata=request.getParameter("pageno"); int pagecount=0;
			 * if(pagedata==null) { pagecount=0; } else { pagecount=
			 * Integer.parseInt(pagedata)*3-3; }
			 */
			 
			packlist=packreg.ViewAllPackage();			
			
			/*
			 * System.out.print("value of count"+packlist.size()); count=packlist.size();
			 * count=(int)(Math.ceil(count/3)); packlist=packlist.subList(pagecount,
			 * pagecount+3);
			 */
			return "AllPackageDisplayed";
			
		}
	
	public List<Package> getPacklist() {
			return packlist;
		}

		public void setPacklist(List<Package> packlist) {
			this.packlist = packlist;
		}

	public Package getPack() {
		return pack;
	}

	public void setPack(Package pack) {
		this.pack = pack;
	}

	public Package_dioimpl getPackreg() {
		return packreg;
	}

	public void setPackreg(Package_dioimpl packreg) {
		this.packreg = packreg;
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
	public Package getModel() {
		
		return pack;
	}

}
