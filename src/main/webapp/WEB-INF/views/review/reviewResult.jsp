<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>리뷰 결과</title>
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/review/c76e012c05e1318d.css">
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/review/pretendardvariable-dynamic-subset.min.css">
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/review/layout.css">
    <link href="http://localhost/recruit-app/assets/css/review/common-sv-202405271315.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
                Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo",
                "Noto Sans KR", "Malgun Gothic", sans-serif;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1>리뷰 결과</h1>
        <div class="row">
            <div class="col-12">
                <c:if test="${not empty reviewScreenOutput}">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>작성자</th>
                                <th>내용</th>
                                <th>평점</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="review" items="${reviewScreenOutput}">
                                <tr>
                                    <td>${review.writer}</td>
                                    <td>${review.content}</td>
                                    <td>${review.rating}</td>
                                    <td>${review.createdDate}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:if>
                <c:if test="${empty reviewScreenOutput}">
                    <p>리뷰가 없습니다.</p>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>
