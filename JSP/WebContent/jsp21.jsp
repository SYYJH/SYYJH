<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
int sum = 0;
for(int i = 1; i <= 10;i++){
	sum = sum + i;
	
}

//sum 값을 jsp22.jsp 로 넘기자 ▶ request.forward : 바인딩 객체 로 넘김

request.setAttribute("sum", sum);
//RequestDispatcher rd = request.getRequestDispatcher("jsp22.jsp");
//rd.forward(request, response);

%>

<jsp:forward page="jsp22.jsp"></jsp:forward>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>