<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Integer su1 = (int)request.getAttribute("su1");
Integer su2 = (int)request.getAttribute("su2");
Integer sum = (Integer)request.getAttribute("sum");
%>

ù��°�� : <%=su1 %><br/>
�ι�°�� : <%=su2 %><br/>
�μ������� ������ : <%=sum %><br/>
</body>
</html>