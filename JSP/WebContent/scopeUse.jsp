<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String pageContextName = (String)pageContext.getAttribute("pageContextName");
String requestName = (String)request.getAttribute("requestName");
String sessionName = (String)session.getAttribute("sessionName");
String applicationName = (String)application.getAttribute("applicationName");

%>

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

</body>
</html>