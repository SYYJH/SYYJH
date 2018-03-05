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

<c:set value="acv001" var="code" scope="request"></c:set>
<c:set value="컴퓨터" var="name" scope="request"></c:set>
<c:set value="60000" var="price" scope="request"></c:set>
<jsp:forward page="jsp31.jsp"></jsp:forward>


</body>
</html>