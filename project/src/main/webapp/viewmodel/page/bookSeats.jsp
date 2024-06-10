<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.StringWriter, java.io.PrintWriter" %>
<%
String seatParam = request.getParameter("seats");
if (seatParam != null && !seatParam.isEmpty()) {
    String[] seatArray = seatParam.split(",");

    Connection conn = null;
    PreparedStatement stmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/seongdb", "root", "12rhtmdqja");
        conn.setAutoCommit(false);

        String sql = "UPDATE seats SET is_occupied = TRUE WHERE seat_id = ?";
        stmt = conn.prepareStatement(sql);

        for (String seat : seatArray) {
            stmt.setInt(1, Integer.parseInt(seat));
            stmt.addBatch();
        }

        stmt.executeBatch();
        conn.commit();

        out.print("선택된 좌석이 성공적으로 예약되었습니다.");
    } catch (Exception e) {
        if (conn != null) {
            conn.rollback();
        }
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        e.printStackTrace(pw);
        out.print("좌석 예약 중 오류가 발생했습니다.<br>");
        out.print(sw.toString()); // 스택 트레이스를 문자열로 출력
    } finally {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
} else {
    out.print("선택된 좌석이 없습니다.");
}
%>
