<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- section 지정 -->
	<div id="full-page">
		<div class="section sec0">
			<div class="sec0_content">
				내용1
			</div>
			<div class="sec0_content">
				내용2
			</div>
		</div>
		<div class="section sec1">
			<div class="sec1_content">
				내용1
			</div>
			<div class="sec1_content">
				내용2
			</div>
		</div>
		<div class="section sec2">
			<div class="sec2_content">
				내용1
			</div>
		</div>
		<div class="section sec3 fp-auto-height">
			<div class="main_footer">
				<div class="main_footer1">
					개인정보약관
				</div>
				<div class="main_footer2">
					뭐시기뭐시기
				</div>
			</div>
		</div>
	</div>
	
	

</body>
<!-- 풀페이지를 위해 body가 끝나는 부분에 script 작성. -->
<script>
	new fullpage('#full-page',{
		licenseKey:'6619A8BC-AED84394-82634D72-D582DA68',
		navigation:true,
		navigationTooltips:['Home','About','Contact'],
		scrollingSpeed:1000,
		//스크롤이 시작할 때.
		//origin : 원래 있었던 섹션에 대한 정보(0부터)
		//destination : 이동하는 섹션에 대한 정보
		//direction : 방향
		onLeave:function(origin, destination, direction){
			if(destination.index == 1){
				$('.sec1 .fp-tableCell > div.sec1_content').css('opacity','0');
			}
		},
		//스크롤이 끝났을 때.
		afterLoad:function(origin, destination, direction){
			if(destination.index == 1){
				$('.sec1 .fp-tableCell > div.sec1_content').css('opacity','1');
			}
		}
		
	});
</script>
</html>