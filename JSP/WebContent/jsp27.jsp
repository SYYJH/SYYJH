<%@page import="com.han.st.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String[] study = {"J","A","V","A"};
request.setAttribute("study", study);


ArrayList <String> list = new ArrayList<>();

list.add("��");
list.add("��");
list.add("��");
list.add("��");
list.add("��");
request.setAttribute("list", list);

MemberDTO dto = new MemberDTO();
dto.setIrum("��");
dto.setId("iiIIii");
dto.setPw("PPwW");
dto.setAge(33);
dto.setAddr("Addrrr");
dto.setTel("854-9632-9658");
request.setAttribute("dto", dto);

ArrayList <MemberDTO> mdto = new ArrayList<>();

mdto.add(new MemberDTO("��","��","��","��","��",33));
mdto.add(new MemberDTO("��","��","��","��","��",33));
mdto.add(new MemberDTO("��","��","��","��","��",33));
mdto.add(new MemberDTO("��","��","��","��","��",33));
mdto.add(new MemberDTO("��","��","��","��","��",33));

request.setAttribute("mdto", mdto);


//RequestDispatcher rd = request.getRequestDispatcher("jsp28.jsp");
//rd.forward(request, response);

%>
<jsp:forward page="jsp28.jsp"></jsp:forward>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>




</body>
</html>