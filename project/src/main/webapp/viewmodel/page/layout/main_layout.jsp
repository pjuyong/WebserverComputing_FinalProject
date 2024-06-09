<!-- viewmodel/page/layout/main_layout.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FC라플</title>
    <link rel="stylesheet" href="/path/to/your/css/bootstrap.min.css">
</head>
<body>
    <%@ include file="/viewmodel/header/header.jsp" %>
    
    <!-- 메인 컨텐츠 영역 -->
    <div class="container" style="margin-top: 80px;">
        <jsp:include page="${contentPage}" />
    </div>
    
    <%@ include file="/viewmodel/bottom/footer.jsp" %>
</body>
</html>
