<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    $(document).ready(function(){
    
       $('.total').click(function(){
            $(this).toggleClass('on');
            $('.slide_bar').toggleClass('on');
       });
       
       $('.menu_login').hover(function(){
    	   $('.login_icon0').css('opacity','0');
    	   $('.login_icon1').css('opacity','1');
       },function(){
    	   $('.login_icon0').css('opacity','1');
    	   $('.login_icon1').css('opacity','0');
       });
       
    });
    
</script>

</head>
<body>
<div class="menu_bar">
	<div class="total">
        <span></span>
    </div>
    <div class="menu_title">
    	<a href="${root}/home">
    	<img id="coout_icon" src="${root}/image/covid_symbol.png">
    	<b>COVID-OUT</b>
    	</a>
    </div>
    <div class="menu_login">
    	<a href="${root}/member/login">
    		<img class="login_icon" src="${root}/image/login_red.svg"/>
    		<img class="login_icon1" src="${root}/image/login_green.svg"/>
    	</a>
    </div>
</div>


<div class="slide_bar">
	<ul class="slide_bar_list">
		<li><a href="">우리집</a></li>
		<li><a href="">강아지는</a></li>
		<li><a href="">복슬강</a></li>
		<li><a href="">아지~</a></li>
	</ul>
	<div class="slide_bar_login">
		
	</div>
</div>
</body>
</html>