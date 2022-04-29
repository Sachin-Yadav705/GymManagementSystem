package action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dioimpl.order_dioimpl;
import pojo.Product;
import pojo.order;

public class order_action extends ActionSupport implements ModelDriven<order>,ServletRequestAware{

	private static final long serialVersionUID = 1L;
	private order ord=new order();
	private order_dioimpl ordreg;
	private ServletRequest request;
	private List<order> ordlist=new ArrayList<order>();	
	  private List<Product> crtlist=new ArrayList<Product>(); private Set<Product>
	  prolist=new HashSet<Product>();
	 
	
//INSERT DATA	
	public String ADDDATA()
	{
		
		  HttpSession session = ServletActionContext.getRequest().getSession(false);
		  int usrid= (int)session.getAttribute("userid_sess");
		  int totalamt=(int)session.getAttribute("Totalrs"); 
		  int payid=(int)session.getAttribute("payid");
		  crtlist=(ArrayList<Product>)session.getAttribute("cart"); 
		  prolist=new HashSet<Product>(crtlist); 
		  ord.setUsid(usrid);
		  ord.setOrdamt(totalamt);
		  ord.setOrddate(new Date());
		  ord.setPayid(payid); 
		  ord.setProducts(prolist);
		 
		  ordreg.InsertData(ord);
		session.setAttribute("orderidd", ord.getOrderid()); 
		return"OrderDataInserted";
	}
	
	
	
//SEARCH DATA
	public String SEARCHorder()
	{
	 
		try {
		String ORDLT=request.getParameter("orderid");
		int orderid=Integer.parseInt(ORDLT);
		ord=ordreg.SearchOrder(orderid);
		return"OrderSearchSuccessfully";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return("OrderErrorFoundSuccess");
		}
	}

//UPDATE DATA 
		public String UpdateORDER()
		{
			ordreg.UpdateOrder(ord);
			return"OrderUpdateSuccessfully";
		}	
	
//DELETE DATA 
		public String Deleteorder()
		{
			ordreg.DeleteOrder(ord);
			return"DeleteOrderSuccessfully";
		}
		
//SHOW ALL ORDRE
		public String AllORDER()
		{
			ordlist=ordreg.ViewAllOrder();
			return"ViewAllOrderinoneTable";
		}
	
//view my order
		
		  public String Viewmyorder()
		  {
			  HttpSession session =ServletActionContext.getRequest().getSession(false);
			  int usrid=(int)session.getAttribute("userid_sess"); 
			  ordlist=ordreg.Viewmyord(usrid);
			  for(int i=0;i<ordlist.size();i++) 
			  	{ 
				  System.out.print("Order Number is:"+ordlist.get(i).getOrderid());
				} 
			 
			  return"ViewMyorderSuccess"; 
		  }
	
		
	public static long getSerialversionuid() {
			return serialVersionUID;
		}
			
		  public List<Product> getCrtlist() { return crtlist; } public void
		  setCrtlist(List<Product> crtlist) { this.crtlist = crtlist; }
		 
	
	public List<order> getOrdlist() {
			return ordlist;
		}
		public void setOrdlist(List<order> ordlist) {
			this.ordlist = ordlist;
		}
	public order getOrd() {
		return ord;
	}

	public void setOrd(order ord) {
		this.ord = ord;
	}

	public order_dioimpl getOrdreg() {
		return ordreg;
	}

	public void setOrdreg(order_dioimpl ordreg) {
		this.ordreg = ordreg;
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
	public order getModel() {
		
		return ord;
	}

}
