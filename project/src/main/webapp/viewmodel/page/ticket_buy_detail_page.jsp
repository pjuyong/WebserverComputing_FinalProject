<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    // 선택된 좌석 정보 및 기타 매개변수 수신
    String seats = request.getParameter("seats");
    // 필요한 다른 매개변수를 여기서 처리 (예: 티켓 금액, 예매 수수료 등)
%>

<div class="container">
    <div class="ticket-container">
        <div class="ticket-header">
            <img src="path/to/team1_logo.png" alt="Team 1 Logo" style="width: 50px;">
            <img src="path/to/team2_logo.png" alt="Team 2 Logo" style="width: 50px;">
            <h2>FC라플 vs FC의정부</h2>
            <p>곤제근린공</p>
            <p>2024.06.10() 20:00</p>
        </div>
        <div class="ticket-info">
            <strong>예매정보</strong>
            <span>A-1석 <%= seats %></span>
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
        window.location.href = '/project/viewmodel/main.jsp';
    });
    
    
    </script>
  
    
     
</div>

</body>
</html>
