<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String st1 = request.getParameter("st1");
String st2 = request.getParameter("st2");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- \jsp26.jsp?st1=skjuhfs&st2=sdfjhfgjkkjdfjkhgjkfgjhfguorjfnk  -->

�Է� ���ڿ� st1 : <%=st1 %><br/>
�Է� ���ڿ� st2 : <%=st2 %><br/>


�Է� ���ڿ� st1 : ${param.st1 }<br/>
�Է� ���ڿ� st2 : ${param.st2 }<br/>

�Է� ���ڿ� �� ������ : ${param.st1 == param.st2?"����":"����" }<br/>


</body>
</html>