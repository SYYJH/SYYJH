<%@page import="com.han.st.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("euc-kr");
MemberDTO dto = (MemberDTO) request.getAttribute("dto");

String cIP = request.getParameter("cIP");
%>

<jsp:useBean id="dto1" class="com.han.st.MemberDTO">
	<jsp:setProperty property="*" name="dto1"/>

</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>12���༮</title>
</head>
<body>

[���� ��������ȯ]<br/><br/>

�̸��� (JSP) : <%=dto.getIrum() %><br/>
���̵� (Action Tag) : <jsp:getProperty property="id" name="dto1"/> <br/>
��й��� (EL) : ${dto.pw } <br/>
----------------------------------<br/>
IP�ּ� (JSP)	:	<%=cIP %>	<br/>

IP�ּ� (EL)	:	${param.cIP}	<br/>

</body>
</html>