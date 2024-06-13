<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/viewmodel/header/headerAfterLogin2.jsp" %>
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
            margin-top: 10%;
            text-align: center; /* 텍스트 중앙 정렬 */
        }
        .container {
            margin-top: 10%;
            margin-bottom: 10%;
        }
        video {
            max-width: 100%; /* 비디오의 최대 너비를 부모 컨테이너에 맞춤 */
            height: auto; /* 비디오의 높이를 자동으로 맞춤 */
        }
         img {
            max-width: 100%; /* 이미지의 최대 너비를 부모 컨테이너에 맞춤 */
            height: 70%; /* 이미지의 높이를 자동으로 맞춤 */
            padding-bottom: 5%;
        }
    </style>
</head>
<body>

  <div class="container">
  <h1>경기영상 페이지</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="white-container">
                    <h1>동아리 경기</h1>
                  
                    <p>하이라이트</p>
                    <video controls>
                        <source src="<%=request.getContextPath()%>/videos/goal.mp4" type="video/mp4">
                     
                    </video>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-container">
                    <h1>풋살 대회</h1>
                  
                    <p>골 모음</p>
                    <video controls>
                        <source src="<%=request.getContextPath()%>/videos/goal2.mp4" type="video/mp4">
                     
                    </video>
                </div>
            </div>
             <div class="col-md-4">
                <div class="white-container">
                    <h1>동아리 경기</h1>
                  
                    <p>하이라이트</p>
                    <video controls>
                        <source src="<%=request.getContextPath()%>/videos/goal3.mp4" type="video/mp4">
                     
                    </video>
                </div>
            </div>
             <div class="col-md-4">
                <div class="white-container">
                    <h1>동아리 경기</h1>
                  
                    <p>사진</p>
                 
                       <img src="${pageContext.request.contextPath}/images/photo1.jpeg" alt="풋살 동아리 이미지">
                     
               
                </div>
            </div>
             <div class="col-md-4">
                <div class="white-container">
                    <h1>축구 경기</h1>
                  
                    <p>사진</p>
             
                        <img src="${pageContext.request.contextPath}/images/photo2.jpeg" alt="풋살 동아리 이미지">
                     
                     
                 
                </div>
            </div>
             <div class="col-md-4">
                <div class="white-container">
                    <h1>풋살 대회</h1>
                  
                    <p>사진</p>
                  
                       <img src="${pageContext.request.contextPath}/images/photo3.jpeg" alt="풋살 동아리 이미지">
                     
                     
                 
                </div>
            </div>
           
        </div>
    </div>
    <%@ include file="/viewmodel/bottom/footer.jsp" %>
</body>
</html>
