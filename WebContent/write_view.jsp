<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
	<form action="write_save.jsp" method="post">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="50"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="150"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit">&nbsp;&nbsp;<a href="list.jsp">목록보기</a>
				</td>
			</tr>
		</table>
	
	</form>



</div>
	

</body>
</html>