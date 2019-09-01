package ch13.praise;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PraiseDBBean {
	
    private static PraiseDBBean instance = new PraiseDBBean();
    //.jsp페이지에서 DB연동빈인 FreeBoardDBBean클래스의 메소드에 접근시 필요
    public static PraiseDBBean getInstance() {
        return instance;
    }
    
    private PraiseDBBean() {}
    
    //커넥션풀로부터 Connection객체를 얻어냄
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
        return ds.getConnection();
    }
 
    //board테이블에 글을 추가(inset문)<=writePro.jsp페이지에서 사용
    /*
     * insertArticle(BaordDataBean article) 메소드로 글을 레코드에 추가할 때 사용한다.
     * 즉, 글입력 처리인 writePro.jsp 페이지에서 호출해서 사용한다. insertArticle(FreeBoardDataBean article) 메소드는
     * 한 개의 파라미터를 가지고 있는데, FreeBoardDataBean 객체 타입의 레퍼런스인 member는 writeForm.jsp에서
     * 입력한 글의 내용을 가지고 있다.
     * 
     * */
    public void insertArticle(PraiseDataBean article) 
            throws Exception {
    	/* conn = getConnection();은 24라인의 getConnection() 메소드를 호출하고 커넥션 객체를 리턴해서 conn 레퍼런스에 넘겨준다.*/
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;

		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		int number=0;
        String sql="";

        try {
            conn = getConnection();

            pstmt = conn.prepareStatement("select max(num) from praise");
			rs = pstmt.executeQuery();
			
			if (rs.next())
		      number=rs.getInt(1)+1;
		    else
		      number=1; 
		   /* 제목글과 답변글의 순서를 결정하는 작업을 수행한다. */
		    if (num!=0) {  
		      sql="update praise set re_step=re_step+1 ";
		      sql += "where ref= ? and re_step> ?";
              pstmt = conn.prepareStatement(sql);
              pstmt.setInt(1, ref);
			  pstmt.setInt(2, re_step);
			  pstmt.executeUpdate();
			  re_step=re_step+1;
			  re_level=re_level+1;
		     }else{
		  	  ref=number;
			  re_step=0;
			  re_level=0;
		     }
            // 쿼리를 작성
            sql = "insert into praise(writer,email,subject,passwd,reg_date,";
		    sql+="ref,re_step,re_level,content,ip) values(?,?,?,?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getWriter());
            pstmt.setString(2, article.getEmail());
            pstmt.setString(3, article.getSubject());
            pstmt.setString(4, article.getPasswd());
			pstmt.setTimestamp(5, article.getReg_date());
            pstmt.setInt(6, ref);
            pstmt.setInt(7, re_step);
            pstmt.setInt(8, re_level);
			pstmt.setString(9, article.getContent());
			pstmt.setString(10, article.getIp());
			
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    //board테이블에 저장된 전체글의 수를 얻어냄(select문)<=list.jsp에서 사용
	public int getArticleCount()
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select count(*) from praise");
            rs = pstmt.executeQuery();

            if (rs.next()) {
               x= rs.getInt(1);
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }

	//글의 목록(복수개의 글)을 가져옴(select문) <=list.jsp에서 사용
	public List<PraiseDataBean> getArticles(int start, int end)
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<PraiseDataBean> articleList=null;
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select * from praise order by ref desc, re_step asc limit ?,? ");
            pstmt.setInt(1, start-1);
			pstmt.setInt(2, end);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                articleList = new ArrayList<PraiseDataBean>(end);
                do{
                  PraiseDataBean article= new PraiseDataBean();
				  article.setNum(rs.getInt("num"));
				  article.setWriter(rs.getString("writer"));
                  article.setEmail(rs.getString("email"));
                  article.setSubject(rs.getString("subject"));
                  article.setPasswd(rs.getString("passwd"));
			      article.setReg_date(rs.getTimestamp("reg_date"));
				  article.setReadcount(rs.getInt("readcount"));
                  article.setRef(rs.getInt("ref"));
                  article.setRe_step(rs.getInt("re_step"));
				  article.setRe_level(rs.getInt("re_level"));
                  article.setContent(rs.getString("content"));
			      article.setIp(rs.getString("ip")); 
				  
                  articleList.add(article);
			    }while(rs.next());
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return articleList;
    }
 
	//글의 내용을 보기(1개의 글)(select문)<=content.jsp페이지에서 사용
	public PraiseDataBean getArticle(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PraiseDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            	"update praise set readcount=readcount+1 where num = ?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

            pstmt = conn.prepareStatement(
            	"select * from praise where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new PraiseDataBean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			    article.setIp(rs.getString("ip"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }
    
	//글 수정폼에서 사용할 글의 내용(1개의 글)(select문)<=updateForm.jsp에서 사용
    public PraiseDataBean updateGetArticle(int num)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PraiseDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select * from praise where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new PraiseDataBean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			    article.setIp(rs.getString("ip"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }

    //글 수정처리에서 사용(update문)<=updatePro.jsp에서 사용
    public int updateArticle(PraiseDataBean article)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;

        String dbpasswd="";
        String sql="";
		int x=-1;
        try {
            conn = getConnection();
            
			pstmt = conn.prepareStatement(
            	"select passwd from praise where num = ?");
            pstmt.setInt(1, article.getNum());
            rs = pstmt.executeQuery();
            
			if(rs.next()){
			  dbpasswd= rs.getString("passwd"); 
			  if(dbpasswd.equals(article.getPasswd())){
                sql="update praise set writer=?,email=?,subject=?,passwd=?";
			    sql+=",content=? where num=?";
                pstmt = conn.prepareStatement(sql);

                pstmt.setString(1, article.getWriter());
                pstmt.setString(2, article.getEmail());
                pstmt.setString(3, article.getSubject());
                pstmt.setString(4, article.getPasswd());
                pstmt.setString(5, article.getContent());
			    pstmt.setInt(6, article.getNum());
                pstmt.executeUpdate();
				x= 1;
			  }else{
				x= 0;
			  }
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
    
    //글삭제처리시 사용(delete문)<=deletePro.jsp페이지에서 사용
    public int deleteArticle(int num, String passwd)
        throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        String dbpasswd="";
        int x=-1;
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select passwd from praise where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
            
			if(rs.next()){
				dbpasswd= rs.getString("passwd"); 
				if(dbpasswd.equals(passwd)){
					pstmt = conn.prepareStatement(
            	      "delete from praise where num=?");
                    pstmt.setInt(1, num);
                    pstmt.executeUpdate();
					x= 1; //글삭제 성공
				}else
					x= 0; //비밀번호 틀림
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }

    public int deleteAdmin(int num) {
   	 
   	 Connection conn = null;
        PreparedStatement pstmt = null;
        int res=0;
        
        try {
       	 conn=getConnection();
       	 pstmt=conn.prepareStatement("delete from praise where num=?");
       	 pstmt.setInt(1, num);
       	 res= pstmt.executeUpdate();
       	 
       	 System.out.println("admin 권한으로 삭제");
       	 
        }catch(Exception ex) {
       	ex.printStackTrace(); 
        }finally {
       	
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
       	 return res;
   }

}