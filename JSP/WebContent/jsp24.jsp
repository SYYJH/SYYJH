<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("euc-kr");

//String irum = request.setAttribute("irum", irum);
//String[] animal = request.getParameterValues("animal");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
회원님의 이름은 ${param.irum} 님 입니다.<br/>
${param.irum } 님이 키우로 싶은 동물은 
 ${paramValues.animal[0] }${paramValues.animal[1] }${paramValues.animal[2] }${paramValues.animal[3]{paramValues.animal[4]{paramValues.animal[5] }
입니다<br/>




</body>
</html>