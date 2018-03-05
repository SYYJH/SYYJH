<%@page import="com.han.st.MemberDAO"%>
<%@page import="com.han.st.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- JSPMain.jsp 요청 ▶ dto 객체생성(Action Tag) ▶ jsp12.jsp 로 페이지전환 하여 출력  -->
    <!-- 동적 페이지 전환 : request.forward, response.sendRedirect  -->
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


String cIP = request.getRemoteAddr(); //클라이언트의 IP 주소를 가져온다

%>

<!-- JSP Action Tag : forward  -->

<jsp:forward page="jsp12.jsp">
	<jsp:param value="<%=cIP %>" name="cIP"/>

</jsp:forward>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>11번녀석</title>

</head>
<body>

</body>
</html>