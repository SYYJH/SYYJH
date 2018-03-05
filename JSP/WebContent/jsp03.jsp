<%@page import="com.han.st.TwoSum"%>
<%@page import="com.sun.javafx.scene.paint.GradientUtils.Parser"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- 
	- 클라이언트의 요청을 받는다 : 입력받은 매개변수 su1 과 su2 를 변수에 저장
	- 비지니스 로직 TwoSum.java 에 있는 totalSum() 메서드를 호출 
	- 프리젠테이션 로직 : 결과값(sum)을 jsp04.jsp 넘겨서 출력 ▶request forward 방식
 --%>

<% 

int su1 = Integer.parseInt(request.getParameter("su1"));
int su2 = Integer.parseInt(request.getParameter("su2"));

TwoSum ts = new TwoSum();
int sum = ts.totalSum(su1, su2);

request.setAttribute("su1", su1);
request.setAttribute("su2", su2);
request.setAttribute("sum", sum);
RequestDispatcher rd = request.getRequestDispatcher("jsp04.jsp");
rd.forward(request, response);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
</body>
</html>