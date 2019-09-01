package team01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class LogonDBBean {

	private static LogonDBBean instance=new LogonDBBean();

	public static LogonDBBean getInstance() {
		return instance;
	}
	
	// 기본생성자
	LogonDBBean() {
		
	}
	
	private Connection getConnection() throws Exception {
		
		Context initCtx = new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("jdbc/basicjsp");
		
		return ds.getConnection();
	}
	// SelectOne
	
	public List<team01.LogonDataBean> selectOne(String id){
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<team01.LogonDataBean> memberList=null;
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(
					"select email,passwd,reg_date from MEMBER"
					+ "where email=?"
					);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				memberList=new ArrayList<team01.LogonDataBean>();
				
				team01.LogonDataBean member=new team01.LogonDataBean();
				
				member.setEmail(rs.getString("email"));
				member.setPasswd(rs.getString("passwd"));
				member.setReg_date(rs.getTimestamp("reg_date"));
				
				memberList.add(member);
			}
					
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
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
		return memberList;
	}

	public void insertMember(LogonDataBean member) throws Exception {
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=getConnection();
			
			pstmt=conn.prepareStatement("insert into MEMBER values(?,?,?)");
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPasswd());
			pstmt.setTimestamp(3, member.getReg_date());
			
			pstmt.executeUpdate();
			
			System.out.println("여기는 DBBean " +member.getEmail());
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
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
	}
	
	
	// 비밀번호 확인
	public int userCheck(String email, String passwd){
		System.out.println("hello debug");
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String dbpasswd="";
		int x=-1;
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement("SELECT passwd FROM MEMBER WHERE email=?");
			pstmt.setString(1, email);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd=rs.getString("passwd");
				if(dbpasswd.equals(passwd)) {
					// 인증완료
					x=1;
					System.out.println("x change");
				}else {
					// 인증실패
					x=0;
				}
			}else {
				// 해당 아이디 없음
				x=-1;
			}
			
		}catch(Exception ex) {
			//ex.printStackTrace();
		}finally{
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
		// 인증확인 int return
		return x;
		
	}
	
}








