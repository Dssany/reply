<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>reply_view.jsp<br>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="board.BoardDAO"/>
	<c:set var="dto" value="${dao.reply_view(param.id) }"/>
	<div align="center">
	<h2>답글 등록 페이지</h2>
	<form action="reply.jsp" method="post">
		<input type="hidden" name="id" value="${dto.id }">
		<input type="hidden" name="idgroup" value="${dto.idgroup }">
		<input type="hidden" name="steo" value="${dto.step }">
		<input type="hidden" name="indent" value="${dto.indent }">
		<input type="hidden" name="name" value="${dto.name }">
		<table border="1">
			<tr> <td>번호</td> <td>${dto.id }</td> </tr>
			<tr> <td>조회수</td> <td>${dto.hit }</td> </tr>
			<tr> <td>이름</td> <td>${dto.name } </td></tr>
			
			
			<tr> <td>제목</td> <td><input type="text" name="title" value="${dto.title }"></td></tr>
			<tr> <td>내용</td> <td><textarea name="content" rows="10" cols="50"></textarea></td> </tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="답변">&nbsp;&nbsp;
					<a href="list.jsp">목록이동</a>
				</td>
			</tr>		
		
		
		</table>
	</form>
	</div>
</body>
</html>