package pojo;

import java.util.Date;

public class Payment {

	private int payid;
	private int usid;
	private int orderid;
	private int payamt;
	private Date paydate;
	private String paymode;
	
	public int getPayid() {
		return payid;
	}
	public void setPayid(int payid) {
		this.payid = payid;
	}
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getPayamt() {
		return payamt;
	}
	public void setPayamt(int payamt) {
		this.payamt = payamt;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public String getPaymode() {
		return paymode;
	}
	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}
	
	
}
