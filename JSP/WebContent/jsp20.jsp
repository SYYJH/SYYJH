<%@page import="com.han.st.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
String irum = request.getParameter("irum");
String id = (String)session.getAttribute("id");
//String id = request.getParameter("id");
String pw = request.getParameter("pw");
int age = Integer.parseInt(request.getParameter("age"));
String addr = (String)application.getAttribute("addr");
//String addr = request.getParameter("addr");
String tel = (String)pageContext.getAttribute("tel");
//String tel = request.getParameter("tel");

MemberDTO dto = new MemberDTO(irum,id,pw,addr,tel,age);
pageContext.setAttribute("dto", dto);

%>

<jsp:useBean id="dto1" class="com.han.st.MemberDTO">
	<jsp:setProperty property="*" name="dto1"/>

</jsp:useBean>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>jsp20</title>
</head>
<body>

�� �̸����<br/>

�� : <%=irum %>					<br/>
�� : <%=dto.getIrum() %>		<br/>
�� : <%=dto1.getIrum() %>		<br/>


��?	<br/><br/>

EL ���� ��� <br/>
�� : ${param.irum}<br/>
<%-- �� : ${dto.getIrum }<br/> --%>
�� : ${dto1.irum}<br/>

<br/><br/>
Action Tag ��� :  <br/>



�� : <jsp:getProperty property="irum" name="dto1"/><br/>
�� : <jsp:getProperty property="id" name="dto1"/><br/>
���� : <jsp:getProperty property="pw" name="dto1"/><br/>

</body>
</html>