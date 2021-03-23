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
<div class="login_container">
	<div class="login_wrapper">
		<form action="#" method="post">
			<div class="login_symbol_background">
				<img src="${root}/image/covid_symbol.png" >
			</div>
			<div class="login_input1">
				<input type="text" name="login_id" class="login_id" required />
				<div class="underline"></div>
				<label><span class="glyphicon glyphicon-user"></span>  ID</label>
			</div>
			<div class="login_input1">
				<input type="text" name="login_pw" class="login_id" required />
				<div class="underline"></div>
				<label><span class="glyphicon glyphicon-lock"></span>  Password</label>
			</div>
			<div class="login_btns">
				<button type="submit" class="login_btn">L o g  I n</button><br>
				<button type="button" class="login_btn signup_btn" onclick="location.href='signup'">S I G N  U P</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>