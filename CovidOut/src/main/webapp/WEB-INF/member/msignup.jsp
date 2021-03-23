<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="insert_member_container">
	<div class="insert_member_wrapper">
		<form action="savemember" method="post">
			<input type="hidden" name="mrole" value="0">
			<input type="text" name="mid" class="mid" placeholder="id">
			<input type="text" name="mnick" class="mnick" placeholder="nick">
			<input type="text" name="mpw" class="mpw" placeholder="pw">
			<input type="text" name="mhp" class="mhp" placeholder="hp">
			<input type="hidden" name="mchat" value="0">
			
			<div class="insert_member_btn">
				<button type="submit">가입</button>
				<button type="button" onclick="history.back();">취소</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>