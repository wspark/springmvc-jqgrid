<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login page</title>
</head>
<body>
<center>
<form action="login.do" method="post">
		<h2>로그인하세요</h2>
		<table boadr="1">
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="id"/>
				</td>
			</tr>
			<tr>
				<td>암호</td>
				<td>
					<input type="password" name="password"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인"/>&nbsp;&nbsp;
					<input type="reset" value="취소"/>	
				</td>				
			</tr>			
			
		</table>
</form>
</center>

</body>
</html>