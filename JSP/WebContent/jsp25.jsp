<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

 int su1 = Integer.parseInt(request.getParameter("su1"));
int su2 = Integer.parseInt(request.getParameter("su2")); 

%>


<!-- �Ű����� ����� getParameter
	  �ٸ� �����       getAttribute
  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function fnfnfn(pp) {
	if(pp == true){
		alert("����"+pp);
	}else if(pp == false){
		alert("�۾󤶤���"+pp);
	}
}

</script>

</head>
<body>
<!-- \jsp25.jsp?su1=20&su2=10  -->

su1 �� : <%=su1 %><br/>
su2 �� : <%=su2 %><br/> 

su1 �� : ${param.su1 }<br/>
su2 �� : ${param.su2 }<br/>

su1+su2 = ${param.su1 + param.su2 }<br/>
su1-su2 = ${param.su1 - param.su2 }<br/>
su1*su2 = ${param.su1 * param.su2 }<br/>
su1/su2 = ${param.su1 / param.su2 }<br/>
su1%su2 = ${param.su1 % param.su2 }<br/>
su1����su2��ŭ? = ${param.su1 - param.su2 < 0 }<br/>
su1����su2������? = ${param.su1 - param.su2 > 0 }<br/>
su1��su2����? = ${param.su1 == param.su2 ?"��":"�ƴϿ�" }<br/>

<button onclick="fnfnfn(${param.su1 - param.su2 > 0 })">����Ʈư</button>


</body>
</html>