<%@page import="com.han.st.MemberDTO"%>
<%@page import="com.han.st.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("euc-kr");
    %>

<jsp:useBean id="dto" class="com.han.st.MemberDTO">
<jsp:setProperty property="*" name="dto"/>

</jsp:useBean>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert 10 here</title>
</head>
<body>
[�Ű������� ����ϴ� ���]<br/><br/>
<!-- JSP �� �̿��� ���  -->
�̸�(JSP) : <%=dto.getIrum() %><br/>

<!-- JSP Action Tag �� �̿��� ���(jsp:useBean ���� ������� �� �� �����ϴ�)  -->
�̸�(Action Tag) : <jsp:getProperty property="irum" name="dto"/> <br/>

<!-- JSP EL(Expression Language) ����  -->
�̸�(EL) : ${dto.irum }

</body>
</html>