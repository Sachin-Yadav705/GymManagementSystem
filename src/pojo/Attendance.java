package pojo;

import java.util.Date;

public class Attendance {

	private int attid;
	private int usid;
	private Date attdate;
	private String status;
	public int getAttid() {
		return attid;
	}
	public void setAttid(int attid) {
		this.attid = attid;
	}
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public Date getAttdate() {
		setAttdate(new Date());
		return attdate;
	}
	public void setAttdate(Date attdate) {
		this.attdate = attdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
