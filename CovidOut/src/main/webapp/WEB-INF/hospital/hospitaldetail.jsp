<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지도 생성하기</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=87ba928e25c8fcc2c9de8e5b9ed0814f"></script>
    
</head>

<body>
<div class="hospital_detail">
<div id="hospital__detail_title">산넘어산 병원</div>
<!-- 지도를 표시할 div 입니다 -->
<div id="hospital__map"></div>
<div class="hospital__detail_addr">서울 강남구 삼성동(삼성2동) 8 강남구보건소
</div>
<div class="hospital__detail_time">평일: 09:00 ~ 21:00	토요일: 09:00 ~ 19:00	일요일: 09:00 ~ 19:00
</div>
<div class="hospital__detail_tel">02-3423-5555</div>
</div>
<div class="map_popup_wrap">
	<!-- <div class="mp_header">
		<div><h2><span>코로나바이러스감염증-19</span><em>(COVID-19)</em></h2></div>
		<div>
			<div class="mph_link">
				<ul>
					<li><a href="" target="_blank"><span>홈페이지 바로가기</span></a></li>
					<li><a href="" target="_blank"><span>국민안심 병원목록</span></a></li>
					<li><a href="" target="_blank"><span>검사채취 가능목록</span></a></li>
					<li><a href="" target="_blank"><span>선별 진료소 목록</span></a></li>
	
				</ul>
			</div>
		</div>
	</div> -->
	
	<div class="mp_content">
		<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
		<div class="side_wrap">
			<div id="menu_wrap">
				<div class="mp_option">
					<div class="btn_area">
						<ul>
							<li><button class="btn btn_sm btn_blue" onclick="searchPlaces('국민안심병원')"><span>국민안심병원</span></button></li>
							<li><button class="btn btn_sm btn_blue" onclick="searchPlaces('호흡기전담클리닉')"><span>호흡기전담클리닉</span></button></li>
							<li><button class="btn btn_sm btn_blue" onclick="searchPlaces('선별진료소')"><span>선별진료소</span></button></li>
						</ul>
						
					</div>
					<form onsubmit="searchPlaces(); return false;">
						<!-- 
						<div class="mpo_form">
							<select name="region" onChange="regionChange(this.value, town)">
								<option>시/도</option>
								<option value='1'>서울</option>
								<option value='2'>부산</option>
								<option value='3'>대구</option>
								<option value='4'>인천</option>
								<option value='5'>광주</option>
								<option value='6'>대전</option>
								<option value='7'>울산</option>
								<option value='8'>강원</option>
								<option value='9'>경기</option>
								<option value='10'>경남</option>
								<option value='11'>경북</option>
								<option value='12'>전남</option>
								<option value='13'>전북</option>
								<option value='14'>제주</option>
								<option value='15'>충남</option>
								<option value='16'>충북</option>
								<option value='17'>세종</option>
							</select> 
							<select name="town">
								<option>-선택-</option>
							</select>
							<button type="submit"><span class="hdn">검색하기</span></button>
						</div>
						 -->
						<div class="mpo_check">
<!-- 							<div><input type="checkbox" id="useMapBounds" /><label for="useMapBounds">지도 내 검색</label></div> -->
							<div><a id="list_view_btn"><span>목록</span><em class="txt_open">보기</em><em class="txt_close">닫기</em></a></div>
							<div><a class="btn_reset" onclick="initPlacesList(true);return false;"><span>검색 초기화</span></a></div>
						</div>
					</form>
				</div>
				<div class="mp_place_list">
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="w_catch">
	<div class="wc_p t_dp_n m_dp_n"></div>
	<div class="wc_t p_dp_n m_dp_n"></div>
	<div class="wc_m p_dp_n t_dp_n"></div>
</div>
</body>
</html>