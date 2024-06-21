<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>구지직 GoojzzK</title>
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/layout/user/c76e012c05e1318d.css" crossorigin="anonymous" data-n-g="" />
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/layout/user/pretendardvariable-dynamic-subset.min.css" />
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/layout/user/layout.css" />
    <link href="http://localhost/recruit-app/assets/css/layout/user/common-sv-202405271315.css" rel="stylesheet" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css"/>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <style>
      body {
        font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
          Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo",
          "Noto Sans KR", "Malgun Gothic", sans-serif;
      }
    </style>
    <script type="text/javascript">
	    document.addEventListener('DOMContentLoaded', function() {
		    const signupBtn = document.getElementById('signupBtn');
		    
		    signupBtn.addEventListener('click', function() {
		        window.location.href = 'http://localhost/recruit-app/user/login.jsp'; // 이동할 페이지 URL
		    });
		    
		    
			const moveMypageBtn = document.getElementById('moveMypageBtn');
		    const logoutBtn = document.getElementById('logoutBtn');
		    const signupLi = document.getElementById('signupLi');
		    const mypageLi = document.getElementById('mypageLi');
		    const logoutLi = document.getElementById('logoutLi');
		    
		    var loginStatus = false; // 로그인 상태(false : 로그인 되지 않음, true : 로그인 됨)
		    
		    function loginCheck(){
		    	if (loginStatus) {
		    		signupLi.style.display = "none";
		    		mypageLi.style.display = "block";
		    		logoutLi.style.display = "block";
		    	  } else {
		    		signupLi.style.display = "block";
		    		mypageLi.style.display = "none";
		    		logoutLi.style.display = "none";
		    	  }
		    }
		    
		    moveMypageBtn.addEventListener('click',function(){
		    	window.location.href = 'http://localhost/recruit-app/user/mypage/mypageUserInfo.jsp';
		    });
		    
		    logoutBtn.addEventListener('click',function(){
		    	alert('로그아웃 되었습니다.');
		    	window.location.href = 'http://localhost/recruit-app/main/main.jsp';
		    });
		    
		    loginCheck();
	    });
    </script>