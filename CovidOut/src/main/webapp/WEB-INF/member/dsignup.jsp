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
		<form action="savemember" method="post" id="signupform">
			<input type="hidden" name="mrole" value="1">
			
			<h1>전문인 회원가입</h1>
			
			<label class="signup_input">
				<input type="text" name="mid" class="mid" required>
				<span class="signup_input_sp">ID</span>
			</label>
			
			<label class="signup_input">
				<input type="text" name="mnick" class="mnick" required>
				<span class="signup_input_sp">Nick Name</span>
			</label>
			
			<label class="signup_input">
				<input type="text" name="mpw" class="mpw">
				<span class="signup_input_sp">Password</span>
			</label>
			
			<label class="signup_input">
				<input type="text" name="mpw2" class="mpw">
				<span class="signup_input_sp">Check Your Password</span>
			</label>
			
			<label class="signup_input">
			<input type="text" name="mhp" class="mhp">
			<span class="signup_input_sp">Phone Number</span>
			</label>
			
			
			
			저희 코드아웃사이트는 고객과의 채팅프로그램이 설계되어 있습니다.
			해당 기능을 희망하시면 희망함에 체크해주세요.
			<div>
				<label><input type="radio" name="mchat" value="1">희망함</label>
				<label><input type="radio" name="mchat" value="0">희망안함</label>
			</div>
			<div class="insert_member_btn">
				<button type="submit">가입</button>
				<button type="button" onclick="history.back();">취소</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>