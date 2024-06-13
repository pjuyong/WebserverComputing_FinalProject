<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/viewmodel/header/headerAfterLogin2.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>티켓 구매 페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" />
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
        #calendar {
            display: none;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mb-4">티켓 구매 페이지입니다.</h1>

        <!-- 날짜 선택 UI -->
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <select class="form-select d-inline-block" style="width: auto;" id="yearSelect">
                    <option value="2024">2024</option>
                    <!-- 추가 연도 옵션 -->
                </select>
                <select class="form-select d-inline-block" style="width: auto;" id="monthSelect">
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <!-- 추가 월 옵션 -->
                </select>
            </div>
            <div>
                <button class="btn btn-outline-secondary">&lt;</button>
                <button class="btn btn-outline-secondary">현재</button>
                <button class="btn btn-outline-secondary">&gt;</button>
            </div>
            <div>
                <button class="btn btn-primary" id="listViewButton">리스트</button>
                <button class="btn btn-secondary" id="calendarViewButton">달력</button>
            </div>
        </div>

        <!-- 경기 정보 테이블 -->
        <table class="table table-bordered match-table" id="matchTable">
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
            <tbody id="matchTableBody">
                <tr data-month="06">
                    <td rowspan="2">2024.06.09<br>R01,R02</td>
                    <td>16:30</td>
                    <td>
                        <img src="ulsan_logo.png" width="30"> FC라플 1 : 0 동국 <img src="jeonbuk_logo.png" alt="" width="30">
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
                <tr data-month="06">
                    <td>19:00</td>
                    <td>
                        <img src="suwon_logo.png" width="30"> FC라플 6 : 3 의정부FC <img src="incheon_logo.png" width="30">
                        <div class="match-status">경기종료</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/19236687?c=15.00,0,0,0,adh&p=myguGV5RB5GEqK9e47cn0g,-142.23,7.83,80,Float&isMini=true" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                        </div>
                    </td>
                    <td>서경대학교</td>
                    <td>매니저 : 김삿갓<br>촬영: 김옥지</td>
                    <td>곤제 근린공원 <br>[관중수 5]</td>
                </tr>
                <tr data-month="06">
                    <td rowspan="2">2024.06.12<br>R03,R04</td>
                    <td>14:00</td>
                    <td>
                        <img src="seoul_logo.png" width="30"> FC서울 2 : 2 FC부산 <img src="busan_logo.png" alt="" width="30">
                        <div class="match-status">경기종료</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/11298407?c=15.00,0,0,0,adh&isMini=true&p=Ap1jpq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                        </div>
                    </td>
                    <td>서울 월드컵 경기장</td>
                    <td>매니저 : 이순신<br>촬영: 홍길동</td>
                    <td>서울 월드컵 경기장 <br>[관중수 100]</td>
                </tr>
                <tr data-month="06">
                    <td>18:00</td>
                    <td>
                        <img src="daejeon_logo.png" width="30"> FC대전 3 : 1 FC인천 <img src="incheon_logo.png" width="30">
                        <div class="match-status">경기종료</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/14398407?c=15.00,0,0,0,adh&isMini=true&p=Zkp3pq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                        </div>
                    </td>
                    <td>대전 월드컵 경기장</td>
                    <td>매니저 : 김나영<br>촬영: 안중근</td>
                    <td>대전 월드컵 경기장 <br>[관중수 75]</td>
                </tr>
                <tr data-month="06">
                    <td rowspan="2">2024.06.15<br>R05,R06</td>
                    <td>15:00</td>
                    <td>
                        <img src="suwon_logo.png" width="30"> FC수원 ? : ? FC광주 <img src="gwangju_logo.png" alt="" width="30">
                        <div class="match-status">경기예정</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/15598407?c=15.00,0,0,0,adh&isMini=true&p=Xowjpq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                            <a href="ticket_buy_page.jsp" class="btn btn-info">경기예매</a>
                        </div>
                    </td>
                    <td>수원 월드컵 경기장</td>
                    <td>매니저 : 장보고<br>촬영: 세종대왕</td>
                    <td>수원 월드컵 경기장 <br>[관중수 85]</td>
                </tr>
                <tr data-month="06">
                    <td>17:30</td>
                    <td>
                        <img src="jeju_logo.png" width="30"> FC제주 ? : ? FC전북 <img src="jeonbuk_logo.png" width="30">
                        <div class="match-status">경기예정</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/16698407?c=15.00,0,0,0,adh&isMini=true&p=0pqjpq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                            <a href="ticket_buy_page.jsp" class="btn btn-info">경기예매</a>
                        </div>
                    </td>
                    <td>제주 월드컵 경기장</td>
                    <td>매니저 : 정몽주<br>촬영: 이성계</td>
                    <td>제주 월드컵 경기장 <br>[관중수 60]</td>
                </tr>
                <!-- 7월 경기 추가 -->
                <tr data-month="07">
                    <td rowspan="2">2024.07.01<br>R07,R08</td>
                    <td>16:30</td>
                    <td>
                        <img src="seoul_logo.png" width="30"> FC서울 ? : ? FC부산 <img src="busan_logo.png" alt="" width="30">
                        <div class="match-status">경기예정</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/11298407?c=15.00,0,0,0,adh&isMini=true&p=Ap1jpq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                            <a href="ticket_buy_page.jsp" class="btn btn-info">경기예매</a>
                        </div>
                    </td>
                    <td>서울 월드컵 경기장</td>
                    <td>매니저 : 신순신<br>촬영: 홍길동</td>
                    <td>서울 월드컵 경기장 <br>[관중수 120]</td>
                </tr>
                <tr data-month="07">
                    <td>19:00</td>
                    <td>
                        <img src="daejeon_logo.png" width="30"> FC대전 ? : ? FC인천 <img src="incheon_logo.png" width="30">
                        <div class="match-status">경기예정</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/14398407?c=15.00,0,0,0,adh&isMini=true&p=Zkp3pq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                            <a href="ticket_buy_page.jsp" class="btn btn-info">경기예매</a>
                        </div>
                    </td>
                    <td>대전 월드컵 경기장</td>
                    <td>매니저 : 임선<br>촬영: 안중근</td>
                    <td>대전 월드컵 경기장 <br>[관중수 95]</td>
                </tr>
                <tr data-month="07">
                    <td rowspan="2">2024.07.03<br>R09,R10</td>
                    <td>14:00</td>
                    <td>
                        <img src="suwon_logo.png" width="30"> FC수원 ? : ? FC광주 <img src="gwangju_logo.png" alt="" width="30">
                        <div class="match-status">경기예정</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/15598407?c=15.00,0,0,0,adh&isMini=true&p=Xowjpq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                            <a href="ticket_buy_page.jsp" class="btn btn-info">경기예매</a>
                        </div>
                    </td>
                    <td>수원 월드컵 경기장</td>
                    <td>매니저 : 장보고<br>촬영: 세종대왕</td>
                    <td>수원 월드컵 경기장 <br>[관중수 90]</td>
                </tr>
                <tr data-month="07">
                    <td>18:00</td>
                    <td>
                        <img src="jeju_logo.png" width="30"> FC제주 ? : ? FC전북 <img src="jeonbuk_logo.png" width="30">
                        <div class="match-status">경기예정</div>
                    </td>
                    <td>
                        <div class="match-buttons">
                            <a href="https://map.naver.com/p/entry/place/16698407?c=15.00,0,0,0,adh&isMini=true&p=0pqjpq8MmvYzjQntxn9Hmg,-163,10,80,Float" class="btn btn-primary">매치센터</a>
                            <a href="#" class="btn btn-info">경기영상</a>
                            <a href="ticket_buy_page.jsp" class="btn btn-info">경기예매</a>
                        </div>
                    </td>
                    <td>제주 월드컵 경기장</td>
                    <td>매니저 : 정몽주<br>촬영: 이성계</td>
                    <td>제주 월드컵 경기장 <br>[관중수 80]</td>
                </tr>
            </tbody>
        </table>

        <!-- 달력 표시 영역 -->
        <div id="calendar"></div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const monthSelect = document.getElementById('monthSelect');
            const matchTableBody = document.getElementById('matchTableBody');
            const matchTable = document.getElementById('matchTable');
            const calendar = $('#calendar');
            const calendarViewButton = document.getElementById('calendarViewButton');
            const listViewButton = document.getElementById('listViewButton');

            monthSelect.addEventListener('change', filterMatchesByMonth);

            function filterMatchesByMonth() {
                const selectedMonth = monthSelect.value;
                const rows = matchTableBody.querySelectorAll('tr');

                rows.forEach(row => {
                    if (row.getAttribute('data-month') === selectedMonth) {
                        row.style.display = '';
                    } else {
                        row.style.display = 'none';
                    }
                });
            }

            filterMatchesByMonth(); // 초기 필터링

            calendarViewButton.addEventListener('click', function () {
                matchTable.style.display = 'none';
                calendar.show();
                calendar.fullCalendar({
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay'
                    },
                    events: [
                        {
                            title: 'FC라플 1 : 0 동국',
                            start: '2024-06-09T16:30:00',
                            end: '2024-06-09T18:30:00'
                        },
                        {
                            title: 'FC라플 6 : 3 의정부FC',
                            start: '2024-06-09T19:00:00',
                            end: '2024-06-09T21:00:00'
                        },
                        {
                            title: 'FC서울 2 : 2 FC부산',
                            start: '2024-06-12T14:00:00',
                            end: '2024-06-12T16:00:00'
                        },
                        {
                            title: 'FC대전 3 : 1 FC인천',
                            start: '2024-06-12T18:00:00',
                            end: '2024-06-12T20:00:00'
                        },
                        {
                            title: 'FC수원 ? : ? FC광주',
                            start: '2024-06-15T15:00:00',
                            end: '2024-06-15T17:00:00'
                        },
                        {
                            title: 'FC제주 ? : ? FC전북',
                            start: '2024-06-15T17:30:00',
                            end: '2024-06-15T19:30:00'
                        },
                        {
                            title: 'FC서울 ? : ? FC부산',
                            start: '2024-07-01T16:30:00',
                            end: '2024-07-01T18:30:00'
                        },
                        {
                            title: 'FC대전 ? : ? FC인천',
                            start: '2024-07-01T19:00:00',
                            end: '2024-07-01T21:00:00'
                        },
                        {
                            title: 'FC수원 ? : ? FC광주',
                            start: '2024-07-03T14:00:00',
                            end: '2024-07-03T16:00:00'
                        },
                        {
                            title: 'FC제주 ? : ? FC전북',
                            start: '2024-07-03T18:00:00',
                            end: '2024-07-03T20:00:00'
                        }
                    ]
                });
            });


            listViewButton.addEventListener('click', function () {
                matchTable.style.display = '';
                calendar.hide();
            });
        });
    </script>
</body>
</html>
