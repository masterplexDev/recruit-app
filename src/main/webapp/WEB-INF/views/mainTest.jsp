
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Test</title>
</head>
<body>
    <h1>Recent Job Posts</h1>
    <c:forEach var="jobPost" items="${recentJobPosts}">
        <div>
            <h2>${jobPost.title}</h2>
            <p>Company: ${jobPost.companyName}</p>
            <img src="<c:url value='/assets/images/company/${jobPost.companyImage}'/>" alt="Company Image"/>
        </div>
    </c:forEach>
</body>
</html>