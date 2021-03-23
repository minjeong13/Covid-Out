<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="hospital__rsv">	
		<div class="hospital__rsv_form">
			<p class="hospital__rsv_hname">산넘어산 병원</p>
			<span class="hospital__rsv_hnamesub">운영시간 기재</span><br>
		
		<p class="hospital__rsv_pname">예약자명</p>
		<input class="hospital__rsv_pname"></input>

		<p class="hospital__rsv_pphone">예약자 연락처</p>
		<div class="form-group">
						<select name="hp1" class="form-control" style="margin-right: 10px;">
							<option value="010" selected="selected">010</option>
							<option value="011" >011</option>
							<option value="019">019</option>
						</select> 
						<input type="text" name="hp2" id="hp2" 
						class="form-control"
						maxlength="4" style="width: 80px;" required="required"> 
						<input type="text" name="hp3" id="hp3" 
						class="form-control" 
						maxlength="4" style="width: 80px;" required="required">
					</div>
		
				<p class="hospital__rsv_ptime">진료시간</p>
				<div class="hospital__rsv_htimeselect">
					<input type="radio" id="radio-one" name="temp" value="8:30-9:30" checked/>
					<label for="radio-one">8:30-9:30</label>
					<input type="radio" id="radio-two" name="temp" value="9:30-10:30" />
					<label for="radio-two">9:30-10:30</label>
					<input type="radio" id="radio-three" name="temp" value="11:30-12:30" />
					<label for="radio-three">11:30-12:30</label>
					<input type="radio" id="radio-four" name="temp" value="13:30-14:30" />
					<label for="radio-four">13:30-14:30</label>
					<input type="radio" id="radio-five" name="temp" value="15:30-16:30" />
					<label for="radio-five">15:30-16:30</label>
					<input type="radio" id="radio-six" name="temp" value="17:30-18:30" />
					<label for="radio-six">17:30-18:30</label>
				</div>
			
				<p class="hospital__rsv_psymt">증상메모</p>
				<textarea rows="10" cols="20"></textarea>
		</div>
		<button type="button" id="btncsl" class="btn btn-outline-warning">1대1 상담</button>
		<button type="submit" id="btnrsv" class="btn btn-warning">예약하기</button>
	
</div>

</body>
</html>