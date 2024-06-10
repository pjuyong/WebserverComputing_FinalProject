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
        .container {
        	margin-top: 10%;
        }
         
    </style>
</head>
<body>
    <div class="container">
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
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
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
                    <th>경기장</th>
                    <th>촬영여부</th>
                    <th>오는사람</th>
                    <th>장소</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="2">2024.06.09<br>R01,R02</td>
                    <td>16:30</td>
                    <td>
                        <img src="ulsan_logo.png"  width="30"> Fc라플 1 : 0 동국 <img src="jeonbuk_logo.png" alt="" width="30">
                        <div class="match-status">경기종료</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/18698407?c=15.00,0,0,0,adh&isMini=true&p=Nopupq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                        </div>
                    </td>
                    <td>동국대학교</td>
                    <td>매니저 : 김삿갓<br>촬영: 김옥지</td>
                    <td>동국대학교 대운동 <br>[관중수 55]</td>
                </tr>
                <tr>
                    <td>19:00</td>
                    <td>
                        <img src="suwon_logo.png"  width="30"> FC라플 6 : 3 의정부FC <img src="incheon_logo.png"  width="30">
                        <div class="match-status">경기종료</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/19236687?c=15.00,0,0,0,adh&p=myguGV5RB5GEqK9e47cn0g,-142.23,7.83,80,Float&isMini=true" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                            <a href="ticket_buy_page.jsp" class="btn btn-info">경기예매</a>
                        </div>
                    </td>
                    <td>서경대학교</td>
                     <td>매니저 : 김삿갓<br>촬영: 김옥지</td>
                      <td>곤제 근린공원 <br>[관중수 5]</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
 
</html>
