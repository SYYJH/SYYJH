<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
int sum = (Integer)request.getAttribute("sum");
Integer sum1 = (Integer)request.getAttribute("sum");
int sum2 = (int)request.getAttribute("sum");
Integer sum3 = (int)request.getAttribute("sum");
//String sum4 = (String)request.getAttribute("sum");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div{
border: 4px solid #33ff88;
background-color: #dd22ff;
text-align: center;
width: 50px;
height: 30px;
}
</style>
</head>
<body>
<div>
	<div>
		<%=sum %>
	</div>
	<div>
		<%=sum1 %>
	</div>
	<div>
		<%=sum2 %>
	</div>
	<div>
		<%=sum3 %>
	</div>

</div>
</body>
</html>