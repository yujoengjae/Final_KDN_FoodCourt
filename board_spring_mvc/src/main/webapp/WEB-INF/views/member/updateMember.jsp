<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<link href="../css/basic.css" rel="stylesheet" type="text/css">
</head>
<body>
<form method="post" action="updateMember.do" >
<table  align='center' >
	<tr><td class="caption" colspan='2'>회원 정보 수정</td></tr>
	<tr><td class='tbasic'>아 이 디</td>
	    <td class='tbasic'><input type='text' name='id'  id='id'></td>
	</tr>
	<tr><td class='tbasic'>비밀번호</td>
	    <td class='tbasic'><input type='text' name='password'  id='password'></td>
	</tr>
	<tr><td class='tbasic'>이 &nbsp;름</td>
	    <td class='tbasic'><input type='text' name='name'  id='name'></td>
	</tr>
	<tr><td class='tbasic'>이메일</td>
	    <td class='tbasic'><input type='text' name='email'  id='email'>
	</tr>
	<tr><td class='tbasic'>주 &nbsp;소</td>
	    <td class='tbasic'><input type='text' name='address'  id='address'>
	</tr>
	<tr>
	   <td colspan='2' align='center' class='tfoot tspacial'>
	     <input type="submit" value='전송'>
		 <input type="reset" value='취소'>
	   </td>
	</tr>
</table>
</form>
</body>
</html>






