<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%! 

public int totalSum(int su1 ,int su2){
	int sum = 0;
	
	for(int i = su1; i <= su2; i++){
		sum = sum+i;
		
	}
	return sum;
}
	%>
<%
int sum = totalSum(1, 100);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- J S P �� �� �� �� �� ��? ? ? ? ?  --%>
<!-- H T M L �� �� �� �� �� �� ��  -->
�� �� �� �� �� �� �� �� : <%=sum %>

</body>
</html>