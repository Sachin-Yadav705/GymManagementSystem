package action;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dioimpl.Product_dioimpl;
import pojo.Product;

public class Product_action extends ActionSupport implements ModelDriven<Product>,ServletRequestAware{

	private static final long serialVersionUID = 1L;
	private Product pro=new Product();
	private Product_dioimpl proreg;
	private ServletRequest request;
	private List<Product> prolst=new ArrayList<Product>();
	private File fileUpload;
	private String fileUploadFileName;
	private List<Product> cartlist= new ArrayList<Product>();
	private int count=0;
	private int total=0;
	
	
//INSERT DATA	
	public String ADDDATA()
	{
		try {
			
			byte[] imageData = new byte[(int) fileUpload.length()];
			FileInputStream fileInputStream = new FileInputStream(fileUpload);

			fileInputStream.read(imageData);
			pro.setData(imageData);
			fileInputStream.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		proreg.InsertData(pro);
		return"ProductDataInserted";
	}

	
//SEARCH DATA
	public String SearchProduct()
	{
		try {
		String productid=request.getParameter("proid");
		int proid=Integer.parseInt(productid);
		pro=proreg.SearchProduct(proid);
		pro.setImgstr(Base64.getEncoder().encodeToString(pro.getData()));
		return"ProductSearchSuccessfully";
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return("productErrorFoundSuccess");
		}
	}
	
//UPDATE DATA
	public String UpdatePRODUCT()
	{		
            proreg.UpdateProduct(pro); 
     		return"UdatePRODUCTSuccessfully";
	}

// DELETE DATA
		public String PRODUCTdelete()
		{
			
		String pr=request.getParameter("proid");
			int proid1=Integer.parseInt(pr);
			pro=proreg.SearchProduct(proid1);
		proreg.DeleteProduct(pro);
			return"PRODUCTDeleteSuccessfully";		
		}
		
// SHOW ALL DATA
		public String AllPRODUCT()
		{
			prolst=proreg.ViewAllPRODUCT();
			return"ViewAllProductinoneTable";
		}
	
// View All Product In User dashbord
		
		public String getAllRegistration()
		{
			
			  String pagedata=request.getParameter("pageno"); 
			  int pagecount=0;
			  if(pagedata==null)
			  { 
				  pagecount=0;
				  
			  } 
			  else 
			  { 
				  pagecount= Integer.parseInt(pagedata)*3-3;
			 
			  }
			  	prolst=proreg.ViewAllPRODUCT();
				
				
				  System.out.print("value of count"+prolst.size());
				 
				 count=prolst.size(); count=(int)(Math.ceil(count/3));
				
				 for(int i=0;i<prolst.size();i++)
				 
				  {
				  prolst.get(i).setImgstr(Base64.getEncoder().encodeToString(prolst.get(i).getData()));
				  
				  }
				 
				 prolst=prolst.subList(pagecount, pagecount+3);
		
			return "AllRegistrationSuccess";
			
		}

		// ADD TO CART		
		
		public String AddtoCart()
		{
			
			try
			{
			String prid=request.getParameter("proid");
			int proidn=Integer.parseInt(prid);
			
			pro=proreg.SearchProduct(proidn);
			pro.setImgstr(Base64.getEncoder().encodeToString(pro.getData()));
			
			HttpSession session = ServletActionContext.getRequest().getSession(false);
			
			
				if(null==session.getAttribute("cart"))
			
			 {
					cartlist.add(pro);
				 session.setAttribute("cart",cartlist);	 
			 }
			 else{
				 cartlist=(ArrayList<Product>)session.getAttribute("cart");
				 cartlist.add(pro);
				 session.setAttribute("cart",cartlist);	
			 }
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

			return "ProaddedSuccessfully";

		}
		
//view Cart
		public String ViewCart()
		{
			
			HttpSession session = ServletActionContext.getRequest().getSession(false);
			cartlist=(ArrayList<Product>)session.getAttribute("cart");
			for(int i=0; i<cartlist.size();i++)
			{
				total=(int) (total+cartlist.get(i).getProprice());
			}
			session.setAttribute("Totalrs", total);
			return "ViewAllcartSuccess";
		}
//DELETE FROM CART
		
		public String deleteCart()
		{
			HttpSession session = ServletActionContext.getRequest().getSession(false);
			String prid=request.getParameter("proid");
			int stidn=Integer.parseInt(prid);
			pro=proreg.SearchProduct(stidn);
			
			cartlist=(ArrayList<Product>)session.getAttribute("cart");
			
			for(int i=0;i<cartlist.size();i++)
			{
				if(cartlist.get(i).getProid()==pro.getProid())
				{
					cartlist.remove(i);
					break;
				}
			}
			
			session.setAttribute("cart",cartlist);	
			return "dataDeletedSuccessfully";
		}
	
	public List<Product> getProlst() {
			return prolst;
		}

		public void setProlst(List<Product> prolst) {
			this.prolst = prolst;
		}


	public Product getPro() {
		return pro;
	}

	public void setPro(Product pro) {
		this.pro = pro;
	}

	public Product_dioimpl getProreg() {
		return proreg;
	}

	public void setProreg(Product_dioimpl proreg) {
		this.proreg = proreg;
	}

	public ServletRequest getRequest() {
		return request;
	}

	public void setRequest(ServletRequest request) {
		this.request = request;
	}

	public File getFileUpload() {
		return fileUpload;
	}


	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}


	public String getFileUploadFileName() {
		return fileUploadFileName;
	}


	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public List<Product> getCartlist() {
		return cartlist;
	}


	public void setCartlist(List<Product> cartlist) {
		this.cartlist = cartlist;
	}


	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}


	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}

	@Override
	public Product getModel() {
		
		return pro;
	}

}
