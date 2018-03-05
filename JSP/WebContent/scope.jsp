<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!--
 scope.jsp ���������� ������ ��ü�� scopeUse.jsp ���� ���
socpe ���尴ü(pageContext,request,session,application) �� �̿�
���� : ���尴ü.setAttribute(key,value);
key : �ĺ��� �̸�, value : ������ü	 
  -->
 
<%
pageContext.setAttribute("pageContextName", "pageContextȫ�浿");
request.setAttribute("requestName", "requestȫ�浿");
session.setAttribute("sessionName", "sessionȫ�浿");
application.setAttribute("applicationName", "applicationȫ�浿");
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
<h1>Scope �Ӽ� ��¼�� ��¼�� ~</h1>
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
<a href="scopeUse.jsp">scopeUse.jsp �������� �̵�</a>


</body>
</html>