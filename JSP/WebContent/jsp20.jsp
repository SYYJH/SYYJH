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

ㆄ 이름출력<br/>

ㆅ : <%=irum %>					<br/>
ㅫ : <%=dto.getIrum() %>		<br/>
ㅩ : <%=dto1.getIrum() %>		<br/>


ㅾ?	<br/><br/>

EL 문법 출력 <br/>
ㅥ : ${param.irum}<br/>
<%-- ㅨ : ${dto.getIrum }<br/> --%>
ㅰ : ${dto1.irum}<br/>

<br/><br/>
Action Tag 출력 :  <br/>



ㅱ : <jsp:getProperty property="irum" name="dto1"/><br/>
ㅽ : <jsp:getProperty property="id" name="dto1"/><br/>
ㆋㆊ : <jsp:getProperty property="pw" name="dto1"/><br/>

</body>
</html>