<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
1. �⺻���α׷� Tag(����,�迭,if,for,switch~case��) �� core <br/>
<%
int sum = 100; 
%>
JAVA sum : <%=sum %><br/> 

<!-- JSTL ���� �ʱ�ȭ  -->
<c:set var="num" value="200"></c:set>
JSTL num : ${num }<br/> 

<!-- JAVA ���� ������ �������� JSTL num �� �Ҵ� �غ���  -->

<c:set var="num1" value="<%=sum %>"></c:set><br/> 
JSTL num1 : ${num1 }<br/> 

<!-- JSTL num ���� JSTL num1 ���� ���� ��num2  -->
<c:set var="num2" value="${num1+num }"></c:set><br/> 
JSTL num2 : ${num2 }<br/> 
</body>
</html>