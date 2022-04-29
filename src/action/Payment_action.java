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

import dioimpl.Payment_dioimpl;
import pojo.Payment;


public class Payment_action extends ActionSupport implements ModelDriven<Payment>,ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Payment pay =new Payment();
	private Payment_dioimpl payreg;
	private ServletRequest request;
	private List<Payment> pylst=new ArrayList<Payment>();

//INSERT DATA	
	public String ADDDATA()
	{
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		int totalamt=(int)session.getAttribute("Totalrs");
		pay.setPayamt(totalamt);
		payreg.InsertData(pay);
		session.setAttribute("payid", pay.getPayid());
		return"PaymentDataInserted";
	}

// SEARCH DATA
		public String SearchPAYMENT()
		{
			try {
			String pyid=request.getParameter("payid");
			int payid=Integer.parseInt(pyid);
			pay=payreg.SearchPayment(payid);
			return"PaymentSearchSuccessfully";
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return("PaymentErrorFoundSuccess");
			}
		}
		

// UPDATE DATA
			public String UpdatePAYMENT()
			{
				
			payreg.UpdatePayment(pay);
			return"UdatePaymentSuccesssfully";
			}	
//DELETE DATA
			public String PAYMENTdelete()
			{
				
			String py=request.getParameter("payid");
				int payid1=Integer.parseInt(py);
				pay=payreg.SearchPayment(payid1);
			payreg.DeletePayment(pay);
				return"PaymentDeleteSuccessfully";		
			}

// SHOW ALL DATA
			public String AllPAYMENT()
			{
				pylst=payreg.ViewAllPAYMENT();
				return"ViewAllUserinoneTable";
			}			
	
			
			
			
			
			
	public List<Payment> getPylst() {
				return pylst;
			}

			public void setPylst(List<Payment> pylst) {
				this.pylst = pylst;
			}

	public Payment getPay() {
		return pay;
	}

	public void setPay(Payment pay) {
		this.pay = pay;
	}

	public Payment_dioimpl getPayreg() {
		return payreg;
	}

	public void setPayreg(Payment_dioimpl payreg) {
		this.payreg = payreg;
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
	public Payment getModel() {
		
		return pay;
	}

}
