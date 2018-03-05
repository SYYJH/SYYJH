<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
request.setCharacterEncoding("euc-kr");
%>

<%
String irum = request.getParameter("irum");
String id = request.getParameter("id");

pageContext.setAttribute("irum", irum);
request.setAttribute("id", id);
%>

<jsp:forward page="jsp18.jsp" ></jsp:forward>

	



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
이름 : <%=irum %><br/>
아이디 : <%=id %><br/>


<!-- 	var irum = document.regForm.irum.value;
	var id = document.regForm.id.value;
	var pw = document.regForm.pw.value;
	var age = document.regForm.age.value;
	var addr = document.regForm.addr.value;
	var tel = document.regForm.tel.value; -->
</body>
</html>