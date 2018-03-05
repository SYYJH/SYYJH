<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<% 
 int rr;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>agugu.jsp</title>
<style type="text/css">
table {
	background-color: #77aabb;
	border: 2px solid #000000;
}
tr{
border: 1px solid #000000;
}
th{
border: 1px solid #000000;
}
td:NTH-CHILD(2n+1){
border: 1px solid #000000;
background-color: #4444ff;
}
td:NTH-CHILD(2n){
border: 1px solid #000000;
background-color: #4488ff;
}
td:NTH-CHILD(4){
border: 1px solid #000000;
background-color: #ff0000;
}

tr{
background-color: #00ff00;
}
</style>

</head>
<body>
[그그딘 츨릭]<br/>

<table>
	<tr>
		<%for(int i = 1 ; i <= 9; i++){ %>
			<th><%=i %>단</th>
		<% }%>
	</tr>
</table>
<table>
<tr>
	<%for(int i = 1 ; i <= 9; i++){ %>
			<th><%=i %>단</th>
		<% } %>
</tr>
		<% for(int i=1 ; i <= 9 ;i++){ %>
		<tr>
			<% for(int j = 1; j <=9;j++){ %>
				<td><%=i %> X <%=j %> = <%=i*j %></td>
			<% } %>
		</tr>
		<% } %>
</table>



</body>
</html>