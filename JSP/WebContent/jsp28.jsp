<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
String[] study = (String[])request.getAttribute("study"); 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

�迭�� �޴� ��� <br/>

<% for(int i=0; i < study.length;i++){%>
	�迭�� <%=i %>������ : <%=study[i] %><br/>
<%} %><br/><br/>

�迭�� �޴� ���(EL)<br/>
0����  : ${study[0]} <br/>1����  : ${study[1]} <br/>2����  : ${study[2]} <br/>3����  : ${study[3]} <br/><br/><br/>

����Ʈ�� �޴¹�� <br/>
ArrayList �迭�� 0���� �� : ${list[0] } <br/>ArrayList �迭�� 1���� �� : ${list[1] } <br/>ArrayList �迭�� 2���� �� : ${list[2] } <br/>ArrayList �迭�� 3���� �� : ${list[3] } <br/>ArrayList �迭�� 4���� �� : ${list[4] }<br/><br/>

���ε��� ��ü dto �� �޴� ��� <br/>

�̸� : ${dto.irum } <br/>
���̵� : ${dto.id } <br/>
��й�ȣ : ${dto.pw } <br/>
���� : ${dto.age } <br/>
�ּ� : ${dto.addr } <br/>
�������� : ${dto.tel } <br/><br/><br/>

����Ʈ ������ ��ü�� ����ִ� ��� �޴� ���<br/>
List 0������ : ${mdto[0].irum},${mdto[0].id},${mdto[0].pw},${mdto[0].age},${mdto[0].addr},${mdto[0].tel} <br/>
List 1������ : ${mdto[1].irum},${mdto[1].id},${mdto[1].pw},${mdto[1].age},${mdto[1].addr},${mdto[1].tel} <br/>
List 2������ : ${mdto[2].irum},${mdto[2].id},${mdto[2].pw},${mdto[2].age},${mdto[2].addr},${mdto[2].tel} <br/>
List 3������ : ${mdto[3].irum},${mdto[3].id},${mdto[3].pw},${mdto[3].age},${mdto[3].addr},${mdto[3].tel} <br/>

</body>
</html>