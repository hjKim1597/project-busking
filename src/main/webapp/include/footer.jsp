<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/index/index.css">
	
     <footer class="index-footer">
        <div class="index-footer-top">
            <div class="footer-service">
                <h4>서비스</h4>
                <ul>
                    <li><a href="#">개발자용 프로그래머스</a></li>
                    <li><a href="#">기업용 프로그래머스</a></li>
                </ul>
            </div>

            <div class="footer-faq">
                <h4>문의</h4>
                <ul>
                    <li><a href="${pageContext.request.contextPath }/board/board_ask_list.board">FAQ/문의</a></li>
                    <li><a href="${pageContext.request.contextPath }/board/board_team_list.board">이용안내</a></li>
                </ul>
            </div>

            <div class="footer-cscenter">
                <h4>고객센터</h4>
                <p>대표번호:1234-1234</p>
                <p>운영시간: 오전 9시 ~ 오후 6시 (주말 및 공휴일 휴무)</p>
                <p>점심시간: 오후 1시 ~ 오후 2시</p>
            </div>

            <div class="footer-familysite">
                <select>
                    <option value="">패밀리사이트</option>
                </select>
            </div>
        </div>
        <div class="footer-mid">
            <div>
                <p>2024 모여락(樂)</p>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="footer-info">
                <p>(회사명) / (팀명) / 서울특별시 강남구 테헤란로7길 7 에스코빌딩 5~7층 / 백수민, 김명석, 김호진, 심유정, 이진석</p>
                <p>모여락(樂) 사이트의 모든 콘텐츠, 정보, UI, HTML 소스 등에 대한 무단 복제, 전송, 배포, 크롤링, 스크래핑 등의 행위를 거부하며, 이러한 행위는 관련 법령에 의해
                    엄격히 금지됩니다.</p>
                <p><a href="https://icons8.kr/icons" class="footer-icon">Designed by Agency. Icons by Icons8</a> |
                    <a href="#" style="color: #999; text-decoration: none;">개인정보 처리방침</a> | <a href="#"
                        style="color: #999; text-decoration: none;">이용약관</a> | 모여락(樂)
                </p>

            </div>
        </div>
    </footer>
    
    <script type="text/javascript">
		var uri = '${pageContext.request.requestURI}';
		var pages = uri.split('/');
		var page = pages[pages.length - 1];
		var jsFile = page.substring(0, page.length - 3);
		var folder = pages[pages.length - 2];
		//console.log('${pageContext.request.contextPath }/resources/css/' + folder + "/" + cssFile + "css");
		
		var script = document.createElement("script");
		script.src = '${pageContext.request.contextPath }/resources/js/' + folder + "/" + jsFile + "js";

		document.querySelector("body").appendChild(script);
	</script> 


</body>
</html>
