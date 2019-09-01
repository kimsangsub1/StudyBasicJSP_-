package team01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class CheckDBBean {

	private static CheckDBBean instance = new CheckDBBean();

	public static CheckDBBean getInstance() {
		return instance;
	}
	
	// 기본생성자
	CheckDBBean(){}
	
	private Connection getConnection() throws Exception {
		
		
		Context initCtx = new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("jdbc/basicjsp");
		
		return ds.getConnection();

	}
	
	public CheckDataBean getCheck(int chno) {
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		CheckDataBean cklist=null;
		
		
		try {
			conn=getConnection();
			System.out.println("<1>");
			pstmt=conn.prepareStatement("select * from checkidt where chno=?");
			pstmt.setInt(1, chno);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cklist = new CheckDataBean();
				cklist.setChno(rs.getInt("chno"));
				cklist.setQues(rs.getString("ques"));
				cklist.setAns(rs.getString("ans"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					pstmt.close();
				}catch(SQLException sqle) {
					
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				}catch(SQLException sqle) {
					
				}
			}
			if(conn!=null) {
				try {
					pstmt.close();
				}catch(SQLException sqle) {
					
				}
			}
		}
		
		return cklist;
	}
	
}















