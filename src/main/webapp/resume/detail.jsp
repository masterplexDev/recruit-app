<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head> 
	<!-- golgolz start -->
    <link href="http://localhost/recruit-app/assets/css/resume/write-sv-202405231305.css" rel="stylesheet" type="text/css"/>
    <link href="http://localhost/recruit-app/assets/css/resume/flow.css" />
    <link href="http://localhost/recruit-app/assets/css/resume/layout-sv-202401301659.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/layout/user/btn-bootstrap.css" />
    <style>
      .autocomplete .list .hover {
        background-color: #f5f5f5;
      }
      .popupSearchDuty .list .hover {
        background-color: #f5f5f5;
      }
      .async-hide {
        opacity: 0 !important;
      }
    </style>
    <!-- End Google Tag Manager -->
    <!-- 상단 선언 스크립트 : 모든페이지 공통 상단 필수 -->
    <!-- PlayD TERA Log Definition Script Start -->
    <script>
      window.onload = function () {
        (function (win, name) {
          win["LogAnalyticsObject"] = name;
          win[name] =
            win[name] ||
            function () {
              (win[name].q = win[name].q || []).push(arguments);
            };
        })(window, "_LA");
      };
    </script>
	<jsp:include page="../assets/layout/user/lib.jsp" /> 
    <script src="http://localhost/recruit-app/assets/js/user/resume/json2.js"></script>
    <script src="http://localhost/recruit-app/assets/js/user/resume/jquery"></script>
    <script src="http://localhost/recruit-app/assets/js/user/resume/itemtemplate.js"></script>
    <script src="http://localhost/recruit-app/assets/js/user/resume/JK_Cookie.js"></script>
    <script src="http://localhost/recruit-app/assets/js/user/resume/JK5cript.js"></script>
    <script src="http://localhost/recruit-app/assets/js/user/resume/ResumeReg"></script>
	<!-- golgolz end -->
	<script type="text/javascript" src="http://localhost/recruit-app/assets/js/user/resume/edu.js"></script>
    <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/resume/detail.css" />
	<style text="text/css">
		<!-- golgolz start -->
		<!-- golgolz end -->
	</style>
	<script text="text/javascript">
		$(function(){
			<!-- golgolz start -->
			//$('.chip[data-value="Vue.js"]').addClass("active"); // select before rendering
	        $(".chip").click(function () {
	          $(this).toggleClass("active");

	          var selectedValues = $(".chip.active")
	            .map(function () {
	              return $(this).data("value");
	            })
	            .get();
	        });
			
	        $("#resetButton").click(function(event) {
                event.preventDefault(); // 기본 동작 방지
                $('.chip').removeClass('active'); // 모든 칩 선택 해제
            });

			setTimeout(function() {
				$("#UserResume_M_Resume_Title").focus(); // myInput은 포커스를 줄 input 요소의 ID
			}, 1); // 500ms (0.5초) 지연
			<!-- golgolz end -->
		});
	</script>
</head>
<body>
    <div id="__next" data-reactroot="">
		<jsp:include page="../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">  
			<section class="Section_Section__P1hhc">
			<!-- golgolz start -->
				<div class="resumePage">
					<form action="https://www.jobkorea.co.kr/User/Resume/Save" method="post" id="frm1">
						<div class="resumeWrapper">
							<div class="resumeContainer">
								<h2 style="font-size: 36px; color:#000; margin-bottom: 20px; font-weight: bold;">이력서 등록</h2>
								<div class="formWrap formWrapCareer" id="formCareer" style="">
									<div class="header">
										<h2 class="header">제목</h2>
									</div>
								</div>
								<div class="resumeTitle">
									<input id="UserResume_M_Resume_Title" maxlength="100" name="UserResume.M_Resume_Title" placeholder="기업에게 나에 대해 알려줍시다. 강점, 목표, 관심분야도 좋아요." type="text" value="" autofocus />
								</div>
 								<jsp:include page="./category/profile.jsp" />
 								<jsp:include page="./category/skill.jsp" />
 								<jsp:include page="./category/edu.jsp" />
 								<jsp:include page="./category/career.jsp" />
 								<jsp:include page="./category/certification.jsp" />
 								<jsp:include page="./category/language.jsp" />
 								<jsp:include page="./category/introduction.jsp" />
								<div id="resumeBtns">
									<input type="button" id="registerBtn" class="golgolBtn btn btn-outline-success btn-sm register-btn" value="등록" />
									<input type="button" id="registerBtn" class="golgolBtn btn btn-outline-warning btn-sm update-btn" value="수정" />
									<input type="button" id="registerBtn" class="golgolBtn btn btn-outline-danger btn-sm remove-btn" value="삭제" />
								</div>
							</div>
						</div>
					</form>
				</div>
				<div id="healthLayer" style="display: none"></div>
				<script src="http://localhost/recruit-app/assets/js/user/resume/countdown.js"></script>
				<script src="http://localhost/recruit-app/assets/js/user/resume/LoginWatcher.js"></script>
				<script type="text/javascript" src="http://localhost/recruit-app/assets/js/user/resume/page_leave.js"></script>
				<script type="text/template" id="tplKeywordCheckBox"></script>
				<script type="text/template" id="tplCommonDirectInput"></script>
				<script type="text/template" id="tplCommonNotFound"></script>
				<script type="text/template" id="tplCommonSearch"></script>
				<script type="text/template" id="tplDepthCommonItem"></script>
			<!-- golgolz end -->
			</section>
			<jsp:include page="../assets/layout/user/footer.jsp" />  
		</main>
	</div>
</body>
</html>