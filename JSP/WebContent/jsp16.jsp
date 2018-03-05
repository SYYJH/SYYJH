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
		var now = new Date();	// Wed Feb 28 2018 16:05:37 GMT+0900 (대한민국 표준시)
		var hour =now.getHours();
		var minute = now.getMinutes();
		var sec = now.getSeconds();
		
//		var strTime = hour > 12 ? "오후":"오전";
		var strTime;
		
		if(hour > 12){
			if(minute < 10){
				
				if(sec < 10){
					strTime = "오후" + " : " +(hour - 12) + "시 "+"0"+minute+"분 "+"0"+sec+"초 ";	
				}else{
					
					strTime = "오후" + " : " +(hour - 12) + "시 "+minute+"분 "+sec+"초 ";		
				}
				
			}else{
				
				if(sec < 10){
					strTime = "오후" + " : " +(hour - 12) + "시 "+minute+"분 "+"0"+sec+"초 ";	
				}else{
					
					strTime = "오후" + " : " +(hour - 12) + "시 "+minute+"분 "+sec+"초 ";		
				}
				
			//	strTime = "오후" + " : " +(hour - 12) + "시 "+minute+"분 "+sec+"초 ";		
			}
		}else if(hour <= 12){
			strTime = "오전";
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
		<td colspan="10">상단 헤더가 들어갈 부분</td>
	</tr>
	<tr>
		<td colspan="1">목록 있는 부분</td>
		<td colspan="9">내용 있는 부분</td>

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