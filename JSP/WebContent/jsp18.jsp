<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
request.setCharacterEncoding("euc-kr");
%>

<%
String irum = (String)request.getAttribute("irum");
String id = (String)request.getAttribute("id");


request.setAttribute("id", id);
//pageContext.setAttribute("irum", irum);
//request.setAttribute("id", id);
%>
<jsp:forward page="jsp19.jsp"></jsp:forward>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
이름 : <%=irum %><br/>
아이디 : <%=id %><br/>

</body>
</html>