<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="ch13.IDT_marketplace.IDTMarketplaceDBBean" %>    

<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum=request.getParameter("pageNum");
	
	IDTMarketplaceDBBean dbPro = IDTMarketplaceDBBean.getInstance();
	int res = dbPro.deleteAdmin(num);
	System.out.println("delete res : " + res);
	
	if(res>0){
%>
	<meta http-equiv="Refresh" content="0;url=IDT_market.jsp?pageNum=<%=pageNum%>">

<%				
	}else{%>
    <script type="text/javascript">      
       <!--      
         alert("비밀번호가 맞지 않습니다");
         history.go(-1);
       -->
   </script>
   <%} %>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>