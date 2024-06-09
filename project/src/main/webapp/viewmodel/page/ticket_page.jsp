<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ include file = "/viewmodel/header/header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>티켓 구매 페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .match-table th, .match-table td {
            vertical-align: middle;
            text-align: center;
        }
        .match-status {
            font-weight: bold;
            color: red;
        }
        .match-buttons a {
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">티켓 구매 페이지입니다.</h1>

        <!-- 날짜 선택 UI -->
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <select class="form-select d-inline-block" style="width: auto;">
                    <option value="2024">2024</option>
                    <!-- 추가 연도 옵션 -->
                </select>
                <select class="form-select d-inline-block" style="width: auto;">
                    <option value="06">06</option>
                    <!-- 추가 월 옵션 -->
                </select>
            </div>
            <div>
                <button class="btn btn-outline-secondary">&lt;</button>
                <button class="btn btn-outline-secondary">현재</button>
                <button class="btn btn-outline-secondary">&gt;</button>
            </div>
            <div>
                <button class="btn btn-primary">리스트</button>
                <button class="btn btn-secondary" disabled>달력</button>
            </div>
        </div>

        <!-- 경기 정보 테이블 -->
        <table class="table table-bordered match-table">
            <thead class="thead-light">
                <tr>
                    <th>날짜</th>
                    <th>시간</th>
                    <th>매치</th>
                    <th>경기센터</th>
                    <th>중계방송사</th>
                    <th>중계진</th>
                    <th>장소</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="2">2024.06.01<br>R16</td>
                    <td>16:30</td>
                    <td>
                        <img src="ulsan_logo.png" alt="울산" width="30"> 울산 1 : 0 전북 <img src="jeonbuk_logo.png" alt="전북" width="30">
                        <div class="match-status">경기종료</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="#" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                        </div>
                    </td>
                    <td>skySports</td>
                    <td>캐스터: 소준일<br>해설: 이상윤</td>
                    <td>울산 문수<br>[관중수 29,007]</td>
                </tr>
                <tr>
                    <td>19:00</td>
                    <td>
                        <img src="suwon_logo.png" alt="수원FC" width="30"> 수원FC 3 : 1 인천 <img src="incheon_logo.png" alt="인천" width="30">
                        <div class="match-status">경기종료</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="#" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                        </div>
                    </td>
                    <td>COUPANGPLAY</td>
                    <td>캐스터: 배성재<br>해설: 한준희</td>
                    <td>수원 종합<br>[관중수 7,511]</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
<%@ include file="/viewmodel/bottom/footer.jsp" %>
</html>
