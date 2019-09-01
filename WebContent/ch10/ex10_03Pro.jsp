<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8");%>
<!-- set부분 -->
<jsp:useBean id="exBean" class="ch10.bean.ExBean">
	<!-- id는 이러한 이름으로 할거고  class는 저기서 따올 것이다 -->
	<jsp:setProperty name="exBean" property="id" />
	<jsp:setProperty name="exBean" property="passwd" />
	<jsp:setProperty name="exBean" property="number" />
</jsp:useBean>

<!-- get부분 -->
<h2>입력한 정보 표시</h2>
아이디 :
<jsp:getProperty name="exBean" property="id" /><br>
패스워드 :<jsp:getProperty name="exBean" property="passwd" />입니다.
<br>
좋아하는 숫자:<jsp:getProperty name="exBean" property="number" />입니다.



