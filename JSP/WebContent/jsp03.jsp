<%@page import="com.han.st.TwoSum"%>
<%@page import="com.sun.javafx.scene.paint.GradientUtils.Parser"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- 
	- Ŭ���̾�Ʈ�� ��û�� �޴´� : �Է¹��� �Ű����� su1 �� su2 �� ������ ����
	- �����Ͻ� ���� TwoSum.java �� �ִ� totalSum() �޼��带 ȣ�� 
	- ���������̼� ���� : �����(sum)�� jsp04.jsp �Ѱܼ� ��� ��request forward ���
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