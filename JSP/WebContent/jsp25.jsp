<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

 int su1 = Integer.parseInt(request.getParameter("su1"));
int su2 = Integer.parseInt(request.getParameter("su2")); 

%>


<!-- 매개변수 방식은 getParameter
	  다른 방식은       getAttribute
  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function fnfnfn(pp) {
	if(pp == true){
		alert("투루"+pp);
	}else if(pp == false){
		alert("퍼얼ㅆㅆ쓰"+pp);
	}
}

</script>

</head>
<body>
<!-- \jsp25.jsp?su1=20&su2=10  -->

su1 값 : <%=su1 %><br/>
su2 값 : <%=su2 %><br/> 

su1 값 : ${param.su1 }<br/>
su2 값 : ${param.su2 }<br/>

su1+su2 = ${param.su1 + param.su2 }<br/>
su1-su2 = ${param.su1 - param.su2 }<br/>
su1*su2 = ${param.su1 * param.su2 }<br/>
su1/su2 = ${param.su1 / param.su2 }<br/>
su1%su2 = ${param.su1 % param.su2 }<br/>
su1보다su2이큼? = ${param.su1 - param.su2 < 0 }<br/>
su1보다su2이작음? = ${param.su1 - param.su2 > 0 }<br/>
su1와su2같음? = ${param.su1 == param.su2 ?"예":"아니오" }<br/>

<button onclick="fnfnfn(${param.su1 - param.su2 > 0 })">버어트튼</button>


</body>
</html>