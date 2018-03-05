<%@ page import="com.han.st.MemberDTO" %>
<%@ page import="com.han.st.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

    
    <%--
	request.setCharacterEncoding("euc-kr");
	
	String id = request.getParameter("id");
	String addr = request.getParameter("addr");
	String irum = request.getParameter("irum");
	String pw = request.getParameter("pw");
	int age = Integer.parseInt(request.getParameter("age"));
	String tel = request.getParameter("tel");
    
	MemberDTO dto = new MemberDTO(irum,id,pw,addr,tel,age);
	
	MemberDTO dto2 = new MemberDTO();
	dto2.setIrum(request.getParameter("irum"));
	//중간생략
	dto2.setTel(request.getParameter("tel"));
	
    --%>
    
    <%
    request.setCharacterEncoding("euc-kr");
    %>
    
 
 <jsp:useBean id="dto" class="com.han.st.MemberDTO">
    <jsp:setProperty property="*" name="dto"/>
 	
 </jsp:useBean>
    
 <jsp:useBean id="dao" class="com.han.st.MemberDAO"></jsp:useBean>
<%
int succ = dao.insert(dto);
if(succ > 0){
	response.sendRedirect("jsp06.jsp");
	
}else{
	response.sendRedirect("jsp05Main.jsp");
}
%>
