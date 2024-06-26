<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
    $(function() {
        <c:if test="${not empty resultMsg}">
            alert("${resultMsg}");
            
            
            setTimeout(function() {
            <c:choose>
                <c:when test="${resultMsg == '회원가입에 성공 하셨습니다. 감사합니다.'}">
                	location.href = "../main/mainPage.do"; // 성공 시 main.do로 이동
                </c:when>
                <c:otherwise>
                    location.href = "../user/loginPage.do"; // 실패 시 login.do로 이동
                </c:otherwise>
            </c:choose>
            }, 500); // 500ms(0.5초) 후 이동
            
        </c:if>
    });
</script>

</html>