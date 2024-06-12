<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h1>마이페이지입니다.</h1>
<%
    String username = (String) session.getAttribute("username"); // 세션에 저장된 사용자 이름

    if (username != null) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/seongdb", "root", "12rhtmdqja");

            pstmt = conn.prepareStatement("SELECT seat_id FROM user_seats WHERE username = ?");
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();

            out.println("<h2>구매한 좌석</h2>");
            out.println("<ul>");
            while (rs.next()) {
                int seatId = rs.getInt("seat_id");
                out.println("<li>좌석 번호: " + seatId + "</li>");
            }
            out.println("</ul>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("오류 발생: " + e.getMessage());
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
    } else {
        out.println("로그인이 필요합니다.");
    }
%>
</body>
</html>
