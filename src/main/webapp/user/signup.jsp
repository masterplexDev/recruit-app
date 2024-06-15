<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../assets/layout/user/lib.jsp" />  
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- bootstrap start -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js"></script> 
	<!-- bootstrap end -->
	<!-- golgolz start -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" href="https://static.wanted.co.kr/favicon/new/favicon.ico">
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/user_login.css"/>
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/find_user_info.css"/>
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/signup.css"/>
	<!-- golgolz end -->
	<style type="text/css">
		<!-- golgolz start -->
			.input-group-text img {
			 width: 5px;
			height: 5px;
			}
			.css-1b2vfnn {
				padding: 0;
			}
		<!-- golgolz end -->
	</style>
	<script type="text/javascript">
		$(function(){
			<!-- golgolz start -->
			$('#datepicker').datepicker({
				format: 'yyyy-mm-dd', // 날짜 형식 지정
				autoclose: true, // 날짜 선택 후 자동으로 닫힘
				language: 'ko' // 한국어 설정
			});
			<!-- golgolz end -->
		});//ready
	</script>
</head>
<body>
    <div id="__next" data-reactroot="">
		<jsp:include page="../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">  
			<section class="Section_Section__P1hhc">
			<!-- golgolz start -->
							<div class="css-hpuads"><button type="button" class="css-dkzxe">
								<span class="css-1ihsymv"><svg
								viewBox="0 0 24 24" color="rgba(55, 56, 60, 0.61)" class="css-1h47l4s">
								<path fill-rule="evenodd" clip-rule="evenodd" fill="rgba(55, 56, 60, 0.61)"
									d="M2.8637 11.3635C2.51223 11.715 2.51223 12.2848 2.8637 12.6363L9.8637 19.6363C10.2152 19.9878 10.785 19.9878 11.1365 19.6363C11.488 19.2848 11.488 18.715 11.1365 18.3635L5.67289 12.8999H20.5001C20.9972 12.8999 21.4001 12.497 21.4001 11.9999C21.4001 11.5028 20.9972 11.0999 20.5001 11.0999L5.67289 11.0999L11.1365 5.6363C11.488 5.28483 11.488 4.71498 11.1365 4.36351C10.785 4.01203 10.2152 4.01203 9.8637 4.36351L2.8637 11.3635Z">
								</path>
							</svg></span>
						<p ="Typography" color="rgba(55, 56, 60, 0.61)" class="css-k88rq" style="margin-top: 10px;">취소하고 돌아가기</p>
					</button></div>
				<div class="css-1ktsezg">
					<div class="css-1nm9gyu">
						<div class="css-oan6e"><button type="button" class="css-1krggrv">
								<p ="Typography" color="#000000" class="css-1ub1oa4">취소</p>
							</button></div>
						<div class="css-1iooy02">
							<p ="Typography" color="#000000" class="css-14qpgc6">회원가입</p>
						</div>
						<div class="css-1jxi7lq"></div>
					</div>
					<div class="css-ng7qrx">
						<form class="css-1b2vfnn">
							<div>
								<div class="css-1ia1k3o">
									<div class="css-cssveg">
										<div class="css-env1z2"><label ="Typography"
												color="rgba(55, 56, 60, 0.61)" for="email"
												class="css-afh7p0">이메일</label></div>
												<input type="email" placeholder="이메일을 입력해주세요." id="email" name="email" ="Input_email"
											autocomplete="new-password" class="css-1sbrczv" value="">
									</div>
									<button type="button"  class="css-zzrlz5" disabled="disabled">
									<span ="Typography" color="#000000" class="css-htgykj" >중복 확인</span></button>
								</div>
								<div class="css-ut4l54"></div>
							</div>
							<div class="css-evy94o">
								<div class="css-env1z2"><label ="Typography" color="rgba(55, 56, 60, 0.61)"
										for="username" class="css-afh7p0">이름</label></div><input type="text"
									placeholder="이름을 입력해주세요." name="username" ="Input_username"
									autocomplete="new-password" class="css-1sbrczv" value="">
							</div>
							<div>
								<div class="css-env1z2"><label ="Typography" color="rgba(55, 56, 60, 0.61)"
										for="mobile" class="css-afh7p0">휴대폰 번호</label></div>
								<div class="css-14o8ny9">
									<div class="css-gjm025" style="margin-bottom: 20px;"><input type="number" pattern="[0-9]*"
											placeholder="(예시) 01013245768" name="mobile" ="Input_mobile"
											autocomplete="on" class="css-1sbrczv" value="">
								</div>
							</div>
								<div class="css-env1z2"><label ="Typography" color="rgba(55, 56, 60, 0.61)"
										for="mobile" class="css-afh7p0">전화번호</label></div>
								<div class="css-14o8ny9">
									<div class="css-gjm025" style="margin-bottom: 15px;"><input type="number" pattern="[0-9]*"
											placeholder="(예시) 021234567" name="mobile" ="Input_mobile"
											autocomplete="on" class="css-1sbrczv" value="">
								</div>
								</div>
							</div>
							<div class="css-evy94o">
								<div class="css-env1z2"><label ="Typography" color="rgba(55, 56, 60, 0.61)"
										for="password" class="css-afh7p0">비밀번호</label></div>
								<div class="css-evy94o"><input type="password" placeholder="비밀번호를 입력해주세요."
										name="password" ="Input_password" autocomplete="on"
										class="css-1sbrczv" value=""></div><input type="password"
									placeholder="비밀번호를 다시 한번 입력해주세요." name="passwordConfirm"
									="Input_passwordConfirm" autocomplete="on" class="css-1sbrczv" value="">
								<p ="Typography" color="rgba(55, 56, 60, 0.61)" class="css-1eroab9" style="font-size: 12px;">영문 대소문자,
									숫자, 특수문자를 3가지 이상으로 조합해 8자 이상 16자 이하로 입력해주세요.</p>
							</div>
							<script type="text/javascript">
								$(function(){
									$("#signup-next").click(function(){
										var flag = chkNull();
										if(flag==true){
											location.href="http://localhost/recruit-app/user/signup2.jsp"
										}//end if
									});
									
									function chkNull(){
										var flag=false;
										if($("#email").val().trim() == ""){
											alert("이메일을 입력해주세요.");
											return flag;
										}
										flag = true;
										return flag;
									}
								})//ready
							</script>
							<div class="css-1tbd2jx">
								<div class="css-1csonyh"></div>
								<div class="css-270vek"></div>
								<button type="button" class="css-1yzn4b" id="signup-next">
								<span ="Typography" color="#000000" class="css-kfktv3">다음으로</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			<!-- golgolz end -->
			</section>
			<jsp:include page="../assets/layout/user/footer.jsp" />  
		</main>
	</div>
</body>
</html>