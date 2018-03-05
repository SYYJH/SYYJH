<%@page import="com.han.st.MemberDAO"%>
<%@page import="com.han.st.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("euc-kr");
    %>
    
<jsp:useBean id="dto" class="com.han.st.MemberDTO">
    <jsp:setProperty property="*" name="dto"/>

</jsp:useBean>
    

    <%
    MemberDAO dao = new MemberDAO();
    int succ = dao.update(dto);
    	if(succ > 0 ){
    		out.println("<script>alert('회원 정보 수정 했당');location.href='jsp06.jsp';</script>");
    	}else{
    		out.println("<script>alert('실패패ㅐㅐㅐㅐㅐ');</script>");
    	}
    
    %>
 