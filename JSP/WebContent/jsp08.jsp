<%@page import="com.han.st.MemberDTO"%>
<%@page import="com.han.st.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("euc-kr");
    %>

<%
String id = request.getParameter("id");

MemberDAO dao = new MemberDAO();

MemberDTO dto =  dao.getById(id);

%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
*{
border: 2px solid #7766cc;
}
	.in{
		background-color:#aa44ff;
	}
</style>

<script type="text/javascript">
function fnUpdate() {
	if(confirm("���� �� ����??") == true){}
		return true;
	}else{
		return false;
	}
}

</script>

</head>
<body>
[ȸ������ ����ȭ��]<br/>

<form action="jsp09.jsp" method="post" onsubmit="return fnUpdate()">
<input type="hidden" name = "id" value="<%=dto.getId()%>" />
<table>
	<tr>
		<th>��    ��</th>
		<td>
		<input type="text" name="irum" value="<%=dto.getIrum()%>"class="in"/><br/>
		</td>
	</tr>
	<tr>
		<th>�� �� ��</th>
		<td>
		<input type="text" name="id" value="<%=dto.getId()%>" disabled="disabled"><br/>
		</td>
	</tr>
	<tr>
		<th>��й�ȣ</th>
		<td>
		<input type="text" name="pw" value="<%=dto.getPw()%>"class="in"/><br/>
		</td>
	</tr>
	<tr>
		<th>��    ��</th>
		<td>
		<input type="text" type="number" name="age" value="<%=dto.getAge()%>"class="in"/><br/>
		</td>
	</tr>
	<tr>
		<th>��    ��</th>
		<td>
		<input type="text" name="addr" value="<%=dto.getAddr()%>"class="in"/><br/>
		</td>
	</tr>
	<tr>
		<th>��ȭ��ȣ</th>
		<td>
		<input type="text" name="tel" value="<%=dto.getTel()%>"class="in"/><br/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="ȸ������ ���� �ϱ�" />
			<input type="reset" value="ȸ������ ���� ���ϱ�" />
		</td>
	</tr>
</table>
</form>
			<button  onclick="location.href='jsp06.jsp'">��ü ȸ�� ��� ����</button>


</body>
</html>