package team01;

import java.sql.Timestamp;

public class LogonDataBean {
	
	private String email;
	private String passwd;
	private Timestamp reg_date;
	
	public LogonDataBean() {}
	
	
	public LogonDataBean(String email, String passwd) {
		super();
		this.email = email;
		this.passwd = passwd;
	}


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	public LogonDataBean(String email, String passwd, Timestamp reg_date) {
		super();
		this.email = email;
		this.passwd = passwd;
		this.reg_date = reg_date;
	}
	
	
	
	
}
