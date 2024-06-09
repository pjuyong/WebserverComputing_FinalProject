<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/viewmodel/header/header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bootstrap Grid Example</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .white-container {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 20px; /* 상단 여백 */
            width: 300px; /* 너비 설정 */
            height: 300px; /* 높이 설정 */
            margin-left: auto; /* 수평 중앙 정렬 */
            margin-right: auto; /* 수평 중앙 정렬 */
        }
    </style>
</head>
<body>
<h1>경기영상 페이지</h1>
  <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="white-container">
                    <h1>경기영상1</h1>
                    <p>Column 1</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-container">
                    <h1>경기영상2</h1>
                    <p>Column 2</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-container">
                    <h1>경기영상 3r</h1>
                    <p>Column 3</p>
                </div>
            </div>
        </div>
      <div class="row">
            <div class="col-md-4">
                <div class="white-container">
                    <h1>활동영상</h1>
                    <p>Column 1</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-container">
                    <h1>활동영상</h1>
                    <p>Column 2</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-container">
                    <h1>활동영상</h1>
                    <p>Column 3</p>
                </div>
            </div>
        </div>
    </div>
      <%@ include file="/viewmodel/bottom/footer.jsp" %>
</body>
</html>