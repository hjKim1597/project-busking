/*
 * package com.busking.board.model;
 * 
 * import java.sql.Connection; import java.sql.PreparedStatement; import
 * java.sql.ResultSet; import java.sql.Timestamp; import java.util.ArrayList;
 * import java.util.List;
 * 
 * import javax.naming.InitialContext; import javax.sql.DataSource;
 * 
 * import jakarta.servlet.jsp.jstl.sql.Result;
 * 
 * public class BoardCustomerDAO<Date> { // 테이블 별로 하나씩 만든다? // DAO는 여러개 만들필요가
 * 없어, 객체가 하나만 생성되도록 singleton방식으로 설계한다
 * 
 * // 1. 나자신의 객체를 1개 생성 후 private 을 붙임 private static BoardCustomerDAO instance
 * = new BoardCustomerDAO();
 * 
 * // 2. 직접 객체를 생성할 수 없도록 생성자에 private을 붙임 private BoardCustomerDAO() {
 * 
 * try { // 커넥션 풀에 사용할 객체를 얻어옴 InitialContext init = new InitialContext(); //
 * 시작설정 객체
 * 
 * //ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle"); ds =
 * (DataSource) init.lookup("jdbc:oracle:thin:@172.30.1.10:1521:xe");
 * 
 * // context.xml 파일에서 name에 해당하는 값을 넣는다
 * 
 * } catch (Exception e) { // TODO: handle exception
 * System.out.println("커넥션 풀 에러났을때"); }
 * 
 * // 복사했으니 // 커넥셔 풀 정보 수정해줘야한다 // 서버에서 context.xml 유저랑 비번 JSP로 바꿈
 * 
 * }
 * 
 * // 3. 객체 생성을 요구할때 getter 메서드를 사용해서 1번의 객체를 반환한다 public static
 * BoardCustomerDAO getInstance() { // static 같은 곳에서 사용 return instance; }
 * 
 * // --------------- // 커넥션 풀 객체정보 private DataSource ds;
 * 
 * // 이제 필요한 메서드를 생성한다 // VO = DTO는 값을 옮겨주는 클래스이다
 * 
 * // -------------------
 * 
 * // 16. 글 등록 메서드 만들기, 매개변수 3개를 받아야한다 // 보이드는 리턴값 여부에 따라 적는다 void 반환 없음 public
 * void regist(String writer, String title, String content) { String sql =
 * "INSERT INTO NOTICE(NOTICE_NUM, MANAGER_ID, NOTICE_TITLE, NOTICE_CONTENT, ) VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?)"
 * ; // String sql
 * ="INSERT INTO NOTICE(NOTICE_NUM, MANAGER_ID, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_REGDATE, NOTICE_HIT) VALUES (BOARD_CUSTOMER_SEQ.NEXTVAL, #{managerId}, #{noticeTitle}, #{noticeContent}, SYSDATE, 0);"
 * // BNO는 시퀀스가 넣어주고 나머지 2개는 디폴트다 // PK숫자이면 시퀀스가 처리해준다
 * 
 * 
 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs = null;
 * 
 * try { conn = ds.getConnection(); pstmt = conn.prepareStatement(sql);
 * 
 * pstmt.setString(1, writer); pstmt.setString(2, title); pstmt.setString(3,
 * content);
 * 
 * pstmt.executeUpdate();//
 * 
 * } catch (Exception e) { // TODO: handle exception e.printStackTrace(); }
 * finally { // jdbcUtil.close(conn, pstmt, null); // 닫기 필수 try { if (conn !=
 * null) conn.close(); if (pstmt != null) pstmt.close(); if (rs != null)
 * rs.close();
 * 
 * } catch (Exception e) { } } // 17. 메서드 끝나면 서비스 }
 * 
 * // 23. 글목록 조회하는 메서드 만들기 // 여러목록의 행이니까 리스트 DTO가 필요하다 public
 * ArrayList<BoardCustomerDTO> getList() { ArrayList<BoardCustomerDTO> list =
 * new ArrayList<>();
 * 
 * String sql = "SELECT * FROM BOARD ORDER BY BNO DESC";
 * 
 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs = null;
 * 
 * try {
 * 
 * conn = ds.getConnection(); pstmt = conn.prepareStatement(sql);
 * 
 * rs = pstmt.executeQuery(); // select는 query로 실행한다
 * 
 * // 24. 어레이 리스트에 하나하나 담아야한다 while (rs.next()) { // 1행의 대한 처리이다 // 칼럼을 DTO에 담고,
 * DTO를 List에 추가한다
 * 
 * int bno = rs.getInt("bno"); String writer = rs.getString("writer"); String
 * title = rs.getString("title"); String content = rs.getString("content"); Date
 * regdate = rs.getTimestamp("regdate"); int hit = rs.getInt("hit"); String
 * resTime =
 * 
 * // 지금까지 1행에 대한 기록값이다
 * 
 * // 하나씩 넣으혀면하려면 셋 set
 * 
 * // 25. 한번에 생성자로 집어넣기 BoardCustomerDTO dto = new BoardCustomerDTO(bno, writer,
 * title, content, regdate, hit, resTime);
 * 
 * // 26. list 추가하기 list.add(dto); // << 모든행이 담기게 된다 }
 * 
 * } catch (Exception e) { // TODO: handle exception e.printStackTrace(); }
 * finally { try { if (conn != null) conn.close(); if (pstmt != null)
 * pstmt.close(); if (rs != null) rs.close();
 * 
 * } catch (Exception e) { } }
 * 
 * return list; }
 * 
 * }
 */