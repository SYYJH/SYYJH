<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>17번녀석  메인녀석</title>
<script type="text/javascript">
function fnCheckForm() {
	
	var irum = document.regForm.irum.value;
	var id = document.regForm.id.value;
	var pw = document.regForm.pw.value;
	var age = document.regForm.age.value;
	var addr = document.regForm.addr.value;
	var tel = document.regForm.tel.value;
	
//	alert(irum + id + pw + age + addr + tel);

	if(irum == null || irum.length < 1){
		alert("이름이 잘못..");
		document.regForm.irum.focus();
		return false;
	}else if(id == null || id.length < 1){
		alert("id 잘못..");
		document.regForm.id.focus();
		return false;
	}else if(pw == null || pw.length < 1){
		alert("pw 잘못..");
		document.regForm.pw.focus();
		return false;
	}else if(age == null || age.length < 1){
		alert("age 잘못..");
		document.regForm.age.focus();
		return false;
	}else if(addr == null || addr.length < 1){
		alert("addr 잘못..");
		document.regForm.addr.focus();
		return false;
	}else if(tel == null || tel.length < 1){
		alert("tel 잘못..");
		document.regForm.tel.focus();
		return false;
	}else{
	}
	
	var msg = "아래 내용으로 가입할래?";
	msg += "\n이름 : " + irum;
	msg += "\n아이디 : " + id;
	msg += "\n비번 : " + pw;
	msg += "\n나이 : " + age;
	msg += "\n주소 : " + addr;
	msg += "\n전화 : " + tel;
	
	if(confirm(msg) == true){
		return true;
	}else{
		return false;	
	}
}


</script>
</head>
<body>

<form action="jsp20.jsp" method="post" name="regForm" onsubmit="return fnCheckForm()">
<table>
	<tr>
		<th>이름</th>
		<td>
		<input type="text" name="irum"/><br/>
		</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>
		<input type="text" name="id"/><br/>
		</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>
		<input type="password" name="pw"/><br/>
		</td>
	</tr>
	<tr>
		<th>나이</th>
		<td>
		<input type="number" name="age" placeholder="숫자만 입력하세얌" /><br/>
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td>
		<input type="text" name="addr"/><br/>
		</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>
		<input type="text" name="tel"/><br/>
		</td>
	</tr>

<tr>
	<td colspan="2">
<input type="submit" value="회원가입하기" />
<input type="reset" value="회원가입안하기" /><br/>
	</td>
</tr>
</table>
</form>
<button  onclick="location.href='jsp06.jsp'">돌아가기</button>


</body>
</html>