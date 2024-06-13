<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>티켓 구매 확인 페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .ticket-container {
            max-width: 600px;
            margin: 50px auto;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .ticket-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .ticket-info {
            margin-bottom: 10px;
        }
        .ticket-info strong {
            display: block;
            font-size: 1.2em;
        }
        .ticket-info span {
            color: red;
        }
        .total-cost {
            font-size: 1.5em;
            text-align: right;
            color: red;
            margin-top: 20px;
        }
        .cancellation-info {
            margin-top: 20px;
            font-size: 0.9em;
            color: #666;
        }
    </style>
</head>
<body>

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

            List<Integer> seatIds = new ArrayList<>();
            while (rs.next()) {
                seatIds.add(rs.getInt("seat_id"));
            }

            if (!seatIds.isEmpty()) {
%>
<div class="container">
    <div class="ticket-container">
        <div class="ticket-header">
            <h2>FC수원 vs FC광주</h2>
            <p>수원 월드컵 경기장</p>
            <p>2024.06.15(금) 20:00</p>
        </div>
        <div class="ticket-info">
            <strong>예매정보</strong>
            <span>A-1석 <%= seatIds.toString().replace("[", "").replace("]", "") %></span>
        </div>
        <div class="ticket-info">
            <strong>티켓금액</strong>
            <span>15,000</span>
        </div>
        <div class="ticket-info">
            <strong>예매수수료</strong>
            <span>3,000</span>
        </div>
        <div class="ticket-info">
            <strong>배송료</strong>
            <span>2,000</span>
        </div>
        <div class="total-cost">
            총결제: 20,000
        </div>
        <div class="cancellation-info">
            <p>취소기한: 2024.06.15 17:00</p>
            <p>취소수수료: 티켓금액의 0~30%. [<a href="#">상세보기</a>]</p>
            <button class="btn btn-primary" id="OKButton">티켓구매</button>
        </div>
    </div>
    <script>
        document.getElementById('OKButton').addEventListener('click', () => {
            alert("티켓 구매가 완료되었습니다.");
            window.location.href = '/project/viewmodel/mainAfterLogin.jsp';
        });
    </script>
</div>
<%
            } else {
                out.println("구매한 좌석이 없습니다.");
            }
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
