<%@ page import="java.sql.*, java.io.*" %>
<%
    String seats = request.getParameter("seats");
    String username = (String) session.getAttribute("username"); // 세션에 저장된 사용자 이름

    if (seats == null || seats.isEmpty() || username == null || username.isEmpty()) {
        out.print("no_seats_or_user");
        return;
    }

    String[] seatArray = seats.split(",");

    Connection conn = null;
    PreparedStatement pstmtUpdate = null;
    PreparedStatement pstmtInsert = null;
    String updateSQL = "UPDATE seats SET is_occupied = TRUE WHERE seat_id = ?";
    String insertSQL = "INSERT INTO user_seats (username, seat_id) VALUES (?, ?)";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/seongdb", "root", "12rhtmdqja");

        // 좌석 상태 업데이트
        pstmtUpdate = conn.prepareStatement(updateSQL);
        for (String seat : seatArray) {
            pstmtUpdate.setInt(1, Integer.parseInt(seat));
            int updatedRows = pstmtUpdate.executeUpdate();
            if (updatedRows == 0) {
                throw new Exception("Seat ID " + seat + " was not updated.");
            }
        }

        // 사용자와 좌석 연결
        pstmtInsert = conn.prepareStatement(insertSQL);
        for (String seat : seatArray) {
            pstmtInsert.setString(1, username);
            pstmtInsert.setInt(2, Integer.parseInt(seat));
            pstmtInsert.executeUpdate();
        }

        out.print("success");
    } catch (Exception e) {
        out.print("error: " + e.getMessage());
    } finally {
        if (pstmtUpdate != null) pstmtUpdate.close();
        if (pstmtInsert != null) pstmtInsert.close();
        if (conn != null) conn.close();
    }
%>
