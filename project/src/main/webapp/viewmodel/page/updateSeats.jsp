<%@ page import="java.sql.*, java.io.*" %>
<%
    String seats = request.getParameter("seats");
    if (seats == null || seats.isEmpty()) {
        out.print("no_seats");
        return;
    }

    String[] seatArray = seats.split(",");

    Connection conn = null;
    PreparedStatement pstmt = null;
    String updateSQL = "UPDATE seats SET is_occupied = TRUE WHERE seat_id = ?";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ProjectDB", "root", "1234");

        pstmt = conn.prepareStatement(updateSQL);
        for (String seat : seatArray) {
            pstmt.setInt(1, Integer.parseInt(seat));
            int updatedRows = pstmt.executeUpdate();
            if (updatedRows == 0) {
                throw new Exception("Seat ID " + seat + " was not updated.");
            }
        }
        out.print("success");
    } catch (Exception e) {
        out.print("error: " + e.getMessage());
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
