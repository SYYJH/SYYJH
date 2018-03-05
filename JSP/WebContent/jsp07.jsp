<%@page import="com.han.st.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
        <%
    request.setCharacterEncoding("euc-kr");
    %>
    
    <%
    String id = request.getParameter("id");
    MemberDAO dao = new MemberDAO();
    int succ = dao.delete(id);
    if(succ > 0){
    	/* response.sendRedirect("jsp06.jsp"); */
    	out.println("<script>alert('회원정보 삭삭삭 ㅇㅋ'); location.href='jsp06.jsp'; </script>");
    }else{
    	out.println("<script>alert('회원정보 삭삭삭 못..함....'); location.href='jsp06.jsp'; </script>");
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>