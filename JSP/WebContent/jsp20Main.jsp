<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>17���༮  ���γ༮</title>
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
		alert("�̸��� �߸�..");
		document.regForm.irum.focus();
		return false;
	}else if(id == null || id.length < 1){
		alert("id �߸�..");
		document.regForm.id.focus();
		return false;
	}else if(pw == null || pw.length < 1){
		alert("pw �߸�..");
		document.regForm.pw.focus();
		return false;
	}else if(age == null || age.length < 1){
		alert("age �߸�..");
		document.regForm.age.focus();
		return false;
	}else if(addr == null || addr.length < 1){
		alert("addr �߸�..");
		document.regForm.addr.focus();
		return false;
	}else if(tel == null || tel.length < 1){
		alert("tel �߸�..");
		document.regForm.tel.focus();
		return false;
	}else{
	}
	
	var msg = "�Ʒ� �������� �����ҷ�?";
	msg += "\n�̸� : " + irum;
	msg += "\n���̵� : " + id;
	msg += "\n��� : " + pw;
	msg += "\n���� : " + age;
	msg += "\n�ּ� : " + addr;
	msg += "\n��ȭ : " + tel;
	
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
		<th>�̸�</th>
		<td>
		<input type="text" name="irum"/><br/>
		</td>
	</tr>
	<tr>
		<th>���̵�</th>
		<td>
		<input type="text" name="id"/><br/>
		</td>
	</tr>
	<tr>
		<th>��й�ȣ</th>
		<td>
		<input type="password" name="pw"/><br/>
		</td>
	</tr>
	<tr>
		<th>����</th>
		<td>
		<input type="number" name="age" placeholder="���ڸ� �Է��ϼ���" /><br/>
		</td>
	</tr>
	<tr>
		<th>�ּ�</th>
		<td>
		<input type="text" name="addr"/><br/>
		</td>
	</tr>
	<tr>
		<th>��ȭ��ȣ</th>
		<td>
		<input type="text" name="tel"/><br/>
		</td>
	</tr>

<tr>
	<td colspan="2">
<input type="submit" value="ȸ�������ϱ�" />
<input type="reset" value="ȸ�����Ծ��ϱ�" /><br/>
	</td>
</tr>
</table>
</form>
<button  onclick="location.href='jsp06.jsp'">���ư���</button>


</body>
</html>