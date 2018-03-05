<%@page import="com.han.st.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.han.st.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
     <%
    request.setCharacterEncoding("euc-kr");
    %>
<%-- <%
MemberDAO dao = new MemberDAO();
dao.getAllList();
%> --%>

<jsp:useBean id="dao" class="com.han.st.MemberDAO"></jsp:useBean>
 <%
 ArrayList<MemberDTO> list = dao.getAllList();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
table{
border: 1px solid #3377ff;
}
tr{
border: 1px solid #8877ff;
}
th{
border: 1px solid #8877ff;
}
td{
border: 1px solid #8877ff;
}
</style>

<script type="text/javascript">
 function ononclclclfn() {
	<%-- <%response.sendRedirect("jsp05Main.jsp");%> --%>
<%-- 	location.href='jsp07.jsp?id=<%=list.get().getId()%> --%>
	
}
 
 function fndel(id) {
	
	 if(window.confirm("삭삭삭ㄷ삭삭삭????") == true){
		 location.href="jsp07.jsp?id="+id;
		 
	 }
	 
}
</script>
</head>
<body>
모든 회원 목록 보기 <br />
<table>
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>나이</th>
		<th>주소</th>
		<th>전화번호</th>
		<th>삭제</th>
		<th>삭제2</th>
		<th>삭제</th>
		<th>삭제2</th>
		<th>수정</th>
	</tr>
	<tr>
			<%for(int i = 0;i < list.size();i++){%>
			<td><%=list.get(i).getIrum() %> </td>
			<td><%=list.get(i).getId() %> </td>
			<td><%=list.get(i).getPw() %> </td>
			<td><%=list.get(i).getAge() %> </td>
			<td><%=list.get(i).getAddr() %> </td>
			<td><%=list.get(i).getTel() %> </td>
			<td><a href="jsp07.jsp?id=<%=list.get(i).getId()%>">삭제0</a></td>
			<td><button onclick="location.href='jsp07.jsp?id=<%=list.get(i).getId()%>'">삭제1</button></td>
			<td><button onclick="fndel('<%=list.get(i).getId()%>')">삭삭</button></td>
			<td><input type="button" value="삭삭2" onclick="fndel('<%=list.get(i).getId()%>')"></input></td>
			<td><button onclick="location.href='jsp08.jsp?id=<%=list.get(i).getId()%>'">수정</button></td>
			
	</tr>
	<% 	}%>
</table>
<button  onclick="location.href='jsp05Main.jsp'">돌아가기</button>

</body>
</html>