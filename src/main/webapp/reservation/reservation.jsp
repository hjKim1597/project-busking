<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ include file="../include/header.jsp" %>

    <div class="res-wrap">
        <div class="res-search">
            <form action="#" method="post">
                <fieldset>
                    <legend class="hide">검색영역</legend>
                    <select name="locations" id="locations" class="select-loca">
                        <option value="*">전체</option>
                        <option value="광나루">광나루</option>
                        <option value="잠실">잠실</option>
                        <option value="뚝섬">뚝섬</option>
                        <option value="잠원">잠원</option>
                        <option value="이촌">이촌</option>
                        <option value="반포">반포</option>
                        <option value="망원">망원</option>
                        <option value="여의도">여의도</option>
                        <option value="난지">난지</option>
                        <option value="양화">양화</option>
                        <option value="강서">강서</option>
                    </select>

                    <input type="text" class="search-text" name="search_text" placeholder="검색어를 입력하세요">
                    <input type="submit" class="search-btn" value="검색">
                </fieldset>
            </form>
        </div>
    
        <div class="res-loca">
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca01.jpg" alt="">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca02.jpg" alt="">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box"><img src="../resources/img/reservation/loca03.jpg" alt=""></div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box"><img src="../resources/img/reservation/loca04.jpg" alt=""></div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box"><img src="../resources/img/reservation/loca05.jpg" alt=""></div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box"><img src="../resources/img/reservation/loca06.jpg" alt=""></div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box"><img src="../resources/img/reservation/loca07.jpg" alt=""></div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box"><img src="../resources/img/reservation/loca08.jpg" alt=""></div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box"><img src="../resources/img/reservation/loca09.jpg" alt="9"></div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca10.jpg" alt="10">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca11.jpg" alt="11">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca12.jpg" alt="12">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca13.jpg" alt="13">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca14.jpg" alt="14">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca15.jpg" alt="15">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca16.jpg" alt="16">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca17.jpg" alt="17">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca18.jpg" alt="18">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca19.jpg" alt="19">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
            <div class="loca-box">
                <a href="#">
                    <div class="loca-img-box">
                        <img src="../resources/img/reservation/loca20.jpg" alt="20">
                    </div>
                    <div class="loca-cont-box">
                        <h4>장소이름</h4>
                        <ul>
                            <li>
                                <b>관할구역</b>
                                <div>구역이름</div>
                            </li>
                            <li>
                                <b>상세주소</b>
                                <div>주소내용</div>
                            </li>
                            <li>
                                <b>관리자이메일</b>
                                <div>이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
           
<%@ include file="../include/footer.jsp" %>