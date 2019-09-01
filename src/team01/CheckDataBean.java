package team01;

public class CheckDataBean {

	private int chno;
	private String ques;
	private String ans;
	
	public CheckDataBean() {
		super();

	}
	
	public CheckDataBean(int chno, String ques, String ans) {
		super();
		this.chno = chno;
		this.ques = ques;
		this.ans = ans;
	}
	public int getChno() {
		return chno;
	}
	public void setChno(int chno) {
		this.chno = chno;
	}
	public String getQues() {
		return ques;
	}
	public void setQues(String ques) {
		this.ques = ques;
	}
	public String getAns() {
		return ans;
	}
	public void setAns(String ans) {
		this.ans = ans;
	}
	
	
	
}
