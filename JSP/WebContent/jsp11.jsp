<%@page import="com.han.st.MemberDAO"%>
<%@page import="com.han.st.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- JSPMain.jsp ��û �� dto ��ü����(Action Tag) �� jsp12.jsp �� ��������ȯ �Ͽ� ���  -->
    <!-- ���� ������ ��ȯ : request.forward, response.sendRedirect  -->
    <%
    request.setCharacterEncoding("euc-kr");
    %>
<jsp:useBean id="dto" class="com.han.st.MemberDTO">
<jsp:setProperty property="*" name="dto"/>

</jsp:useBean>

<%
request.setAttribute("dto", dto);
//RequestDispatcher rd = request.getRequestDispatcher("jsp12.jsp");
//rd.forward(request, response);


String cIP = request.getRemoteAddr(); //Ŭ���̾�Ʈ�� IP �ּҸ� �����´�

%>

<!-- JSP Action Tag : forward  -->

<jsp:forward page="jsp12.jsp">
	<jsp:param value="<%=cIP %>" name="cIP"/>

</jsp:forward>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>11���༮</title>

</head>
<body>

</body>
</html>