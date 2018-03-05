<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!--
 scope.jsp 페이지에서 공유한 객체를 scopeUse.jsp 에서 사용
socpe 내장객체(pageContext,request,session,application) 를 이용
형식 : 내장객체.setAttribute(key,value);
key : 식별자 이름, value : 공유객체	 
  -->
 
<%
pageContext.setAttribute("pageContextName", "pageContext홍길동");
request.setAttribute("requestName", "request홍길동");
session.setAttribute("sessionName", "session홍길동");
application.setAttribute("applicationName", "application홍길동");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Scope.jsp</title>
</head>
<body>
<%
String pageContextName = (String)pageContext.getAttribute("pageContextName");
String requestName = (String)request.getAttribute("requestName");
String sessionName = (String)session.getAttribute("sessionName");
String applicationName = (String)application.getAttribute("applicationName");

%>
<h1>Scope 속성 어쩌고 저쩌고 ~</h1>
<hr/>
<ul>
	<li>
		pageContext : <%=pageContextName %>
	</li>
	<li>
		request : <%=requestName %>
	</li>
	<li>
		session : <%=sessionName %>
	</li>
	<li>
		application : <%=applicationName %>
	</li>

</ul>

<hr/>
<a href="scopeUse.jsp">scopeUse.jsp 페이지로 이동</a>


</body>
</html>