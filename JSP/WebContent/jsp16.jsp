<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
*{
margin: 0 auto;
width: 80%;
}
table {

border: 1px solid #33ccff;
text-align: center;
}
td{
	width: 80%;
border: 1px solid #33ccff;
text-align: center;
}
}
</style>
<script type="text/javascript">
	function fnToday() {
		var now = new Date();	// Wed Feb 28 2018 16:05:37 GMT+0900 (���ѹα� ǥ�ؽ�)
		var hour =now.getHours();
		var minute = now.getMinutes();
		var sec = now.getSeconds();
		
//		var strTime = hour > 12 ? "����":"����";
		var strTime;
		
		if(hour > 12){
			if(minute < 10){
				
				if(sec < 10){
					strTime = "����" + " : " +(hour - 12) + "�� "+"0"+minute+"�� "+"0"+sec+"�� ";	
				}else{
					
					strTime = "����" + " : " +(hour - 12) + "�� "+minute+"�� "+sec+"�� ";		
				}
				
			}else{
				
				if(sec < 10){
					strTime = "����" + " : " +(hour - 12) + "�� "+minute+"�� "+"0"+sec+"�� ";	
				}else{
					
					strTime = "����" + " : " +(hour - 12) + "�� "+minute+"�� "+sec+"�� ";		
				}
				
			//	strTime = "����" + " : " +(hour - 12) + "�� "+minute+"�� "+sec+"�� ";		
			}
		}else if(hour <= 12){
			strTime = "����";
		}
		
		
	//	document.getElementById("time").innerHTML = now;
		document.getElementById("time").innerHTML = strTime;
		setTimeout("fnToday()",1000);
	}
</script>
</head>
<body onload="fnToday()">
<div id="time"></div>
<table>
	<tr>
		<td colspan="10">��� ����� �� �κ�</td>
	</tr>
	<tr>
		<td colspan="1">��� �ִ� �κ�</td>
		<td colspan="9">���� �ִ� �κ�</td>

	</tr>	
	<tr>
	<td colspan="10">
		<jsp:include page="jsp15.jsp">
			<jsp:param value="Date&Time" name="msg"/>
		</jsp:include>
	
	</td>
	</tr>
</table>

</body>
</html>