package pojo;

import java.util.Date;
import java.util.Set;

public class order {
	private int orderid;
	private int usid;
	private Date orddate;
	private int ordamt;
	private String orddeladdress;
	private String ordstatus;
	 private Set<Product> products; 
	private int payid;

	  public int getPayid() {
		return payid;
	}
	public void setPayid(int payid) {
		this.payid = payid;
	}
	public Set<Product> getProducts() { return products; } public void
	  setProducts(Set<Product> products) { this.products = products; }
	 
	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getUsid() {
		return usid;
	}

	public void setUsid(int usid) {
		this.usid = usid;
	}

	public Date getOrddate() {
		return orddate;
	}

	public void setOrddate(Date orddate) {
		this.orddate = orddate;
	}

	public int getOrdamt() {
		return ordamt;
	}

	public void setOrdamt(int ordamt) {
		this.ordamt = ordamt;
	}

	public String getOrddeladdress() {
		return orddeladdress;
	}

	public void setOrddeladdress(String orddeladdress) {
		this.orddeladdress = orddeladdress;
	}

	public String getOrdstatus() {
		return ordstatus;
	}

	public void setOrdstatus(String ordstatus) {
		this.ordstatus = ordstatus;
	}

}
