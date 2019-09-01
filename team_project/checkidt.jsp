<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="team01.CheckDBBean" %>  
<%@ page import="team01.CheckDataBean" %>  
<%@ page import="team01.LogonDataBean" %>
<%@ page import="team01.LogonDBBean" %>

<%
	//int chno=Integer.parseInt(request.getParameter("chno"));
	String email=request.getParameter("email");
	String passwd=request.getParameter("passwd");
	
	LogonDataBean member = new LogonDataBean();
	member.setEmail(email);
	member.setPasswd(passwd);
	
	System.out.println("check에서 뽑아본다 : "+member.getEmail());
	

	int chno=1;
	
	
	CheckDataBean cklist= new CheckDataBean();
	
	CheckDBBean chPro = CheckDBBean.getInstance();
	// 질문과 답 추출
	cklist=chPro.getCheck(chno);
	
	//String email=request.getParameter("email");
	//System.out.println("checkidt : " + email);

%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>아시아나IDT 직원 인증</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
	function check01(){
		var result= confirm(" 정말 취소 하시겠습니까 ?");
		
		if (result){
			location.href='register.jsp';
		}
	}
	
	function check02(){

		var val1=$("#answer").val();
		var val2=$("#dbanswer").val();
		
			
		if(val1==val2){
			alert("인증되었습니다");
			return true;
			
		}else{
			alert("직원임을 확인할 수 없습니다");
			return false;
		}
		
	}
			

</script>


<!-- Bootstrap-->
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">


  <div class="container">
    <div class="card card-register mx-auto mt-5" style="background-color : #747474">
      <div class="card-header" style="color : white">질문 : <%=cklist.getQues()%></div>
      <input type="hidden" id="dbanswer" name="dbanswer" value=<%=cklist.getAns() %>>
       
      <div class="card-body">
        <form  method="post" onsubmit="return check02()" action="registerPro.jsp">      
         <div class="form-group">
             <label for="inputEmail" style="color : white">답변란 : </label>
             <br>
              <input type="text" id="answer" class="form-control" placeholder="위의 질문에 답해주세요" >
          </div>
         <div class="hiddenval">
        	<input type="hidden" id="email" name="email" value=<%=member.getEmail() %>>
        	<input type="hidden" id="passwd" name="passwd" value=<%=member.getPasswd() %>>
        </div>
          <div class=" text-center">
          	<input type="submit" id="aw-submit" class="btn btn-light"  value="답변제출" onsubmit=""/> 	
          	<input type="button" id="cancel" class="btn btn-light " value="뒤로가기" onclick="check01()"/>
          </div>
         
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login.html">Login Page</a>
          
        </div>

        
      </div>
    </div>
  </div>
	
</body>
</html>

















