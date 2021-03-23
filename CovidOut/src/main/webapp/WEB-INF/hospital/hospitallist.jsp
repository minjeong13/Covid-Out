<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="hospital__list">
        <div id="hospital__list_title">국민안심병원</div>
        <!--탭 박스-->
        <div class="hospital__list_tabbox">
            <div id="hospital__list_tablist">
                <a class="hospital__list_listitem active1">국민안심병원</a>
                <a class="hospital__list_listitem">호흡기전담클리닉</a>
                <a class="hospital__list_listitem">선별진료소</a>
                <a class="hospital__list_listitem">승차검진 선별진료소</a>
            </div>
        </div>
        <!--검색창-->
        <div id="hospital__list_inputform" class="hospital__list_inputform">
            <div class="hospital__list_searchcont">
                <form class="hospital__list_search_area">
                    <input type="hidden" name="page" value="1">
                    <input class="hospital__list_search_text" type="text" name="fname" placeholder="검색어를 입력하세요">
                    <input type="submit" class="hospital__list_search_btn" value="검색" />
                    <button type="button" class="hospital__list_viewlist_btn">전체 목록</button>
                </form>
                <div class="hospital__search_info">
                    <p>시도 및 시군구, 기관명, 전화번호를 통합하여 검색합니다.</p>
                    <span>검색어 예시 : <span class="line">'서울'</span> 또는 <span class="line">'중구'</span>또는 <span
                            class="line">'보건소'</span>또는 <span class="line">'051'</span>(전화번호 일부)</span>
                </div>
            </div>
        </div>

        <!-- Cards section -->
        <div class="hospital__list_container">

            <!-- Grid div -->
            <div class="hospital__list_cards">
                <div class="hospital__list_card">
                    <h3>강남성모병원</h3>
                    <p>서울 강남구</p>
                </div>
                <div class="hospital__list_card">
                    <h3>신촌 세브란스병원</h3>
                    <p>서울 신촌</p>
                </div>
                <div class="hospital__list_card">
                    <h3>서울삼성병원</h3>
                    <p>서울 어디어디</p>
                </div>
                <div class="hospital__list_card">
                    <h3>강남성모병원</h3>
                    <p>서울 강남구</p>
                </div>
                <div class="hospital__list_card">
                    <h3>신촌 세브란스병원</h3>
                    <p>서울 신촌</p>
                </div>
                <div class="hospital__list_card">
                    <h3>서울삼성병원</h3>
                    <p>서울 어디어디</p>
                </div>
                <div class="hospital__list_card">
                    <h3>강남성모병원</h3>
                    <p>서울 강남구</p>
                </div>
                <div class="hospital__list_card">
                    <h3>신촌 세브란스병원</h3>
                    <p>서울 신촌</p>
                </div>
                <div class="hospital__list_card">
                    <h3>서울삼성병원</h3>
                    <p>서울 어디어디</p>
                </div>
                <!-- 페이징처리할것 -->
            </div>
            </div>
            </div>

            <script>
                var tablist = document.getElementById("hospital__list_tablist");
                var title = document.getElementById("hospital__list_title");
                var btns = tablist.getElementsByClassName("hospital__list_listitem");
                for (var i = 0; i < btns.length; i++) {
                    btns[i].addEventListener("click", function () {
                        var current = document.getElementsByClassName("active1");
                        if (current.length > 0) {
                            current[0].className = current[0].className.replace(" active1", "");
                            title.nodeValue = btns.textContent;
                        }
                        this.className += " active1";
                    });
                }

				<!--탭클릭시 타이틀 변경 작동안됨 ㅋㅋ-->
                document.getElementById("hospital__list_title").addEventListener("change", changeTitle);

                function changeTitle() {
                    var x = document.getElementById("hospital__list_title");
                    var tablist = document.getElementById("hospital__list_tablist");
                    var btns = tablist.getElementsByClassName("hospital__list_listitem active1");
                    x.value = btns;
                }
            </script>
</body>