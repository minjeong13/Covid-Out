<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root}/css/medicine/mainlayout.css" />
<title>Insert title here</title>

<script>
	function test() {
		//document.getElementById(“test1”).innerHTML = “이렇게”;
		var input = document.getElementById("med_text1").value;

		var test1 = document.getElementById("med_test1");
		test1.innerHTML = "<b><font color='red'>" + input + "</font></b>";

	}
</script>

</head>

<body>
	<div class="med_layout">
		<div class ="med_layout_title">
		<h3>메디신 레이아웃입니다. </h3>
		<div class="med_search">
			<h3>검색 시작 화면 레이아웃입니다. </h3>
			<input class="med_text1" id="med_text1" type="text" />
			<button type="button" class="med_searchbtn" onclick="test()">
				검색하기</button>
			<div class="med_test" id="med_test1"></div>
			<div class="med_test2" id="med_test2"></div>
		</div>
		</div>
		<div class="med_searchlist">
			리스트</br>

		</div>

	</div>
</body>
</html>