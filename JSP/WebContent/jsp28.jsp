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

배열을 받는 방법 <br/>

<% for(int i=0; i < study.length;i++){%>
	배열의 <%=i %>번지값 : <%=study[i] %><br/>
<%} %><br/><br/>

배열을 받는 방법(EL)<br/>
0번지  : ${study[0]} <br/>1번지  : ${study[1]} <br/>2번지  : ${study[2]} <br/>3번지  : ${study[3]} <br/><br/><br/>

리스트를 받는방법 <br/>
ArrayList 배열의 0번지 값 : ${list[0] } <br/>ArrayList 배열의 1번지 값 : ${list[1] } <br/>ArrayList 배열의 2번지 값 : ${list[2] } <br/>ArrayList 배열의 3번지 값 : ${list[3] } <br/>ArrayList 배열의 4번지 값 : ${list[4] }<br/><br/>

바인딩된 객체 dto 를 받는 방법 <br/>

이름 : ${dto.irum } <br/>
아이디 : ${dto.id } <br/>
비밀번호 : ${dto.pw } <br/>
나이 : ${dto.age } <br/>
주소 : ${dto.addr } <br/>
저나버노 : ${dto.tel } <br/><br/><br/>

리스트 구조에 객체가 들어있는 경우 받는 방법<br/>
List 0번지값 : ${mdto[0].irum},${mdto[0].id},${mdto[0].pw},${mdto[0].age},${mdto[0].addr},${mdto[0].tel} <br/>
List 1번지값 : ${mdto[1].irum},${mdto[1].id},${mdto[1].pw},${mdto[1].age},${mdto[1].addr},${mdto[1].tel} <br/>
List 2번지값 : ${mdto[2].irum},${mdto[2].id},${mdto[2].pw},${mdto[2].age},${mdto[2].addr},${mdto[2].tel} <br/>
List 3번지값 : ${mdto[3].irum},${mdto[3].id},${mdto[3].pw},${mdto[3].age},${mdto[3].addr},${mdto[3].tel} <br/>

</body>
</html>