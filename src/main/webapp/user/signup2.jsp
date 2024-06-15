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
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/signup.css"/>
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/find_user_info.css"/>
	<!-- golgolz end -->
	<style type="text/css">
		<!-- golgolz start -->
			.input-group-text img {
			 width: 5px;
			height: 5px;
			}
			.css-k88rq {
			    font-size: 16px;
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
							<div style="margin-top: 20px; margin-bottom: 5px;"><h1 style="font-size: 15px">기타 인적사항</h1></div>
							<div class="css-evy94o">
								<div class="css-env1z2" ><label ="Typography" color="rgba(55, 56, 60, 0.61)"
										for="birthday" class="css-afh7p0" >성별</label></div>
								<div class="" style="text-align: center">
								<span style="margin-right: 10px; font-size: 15px;"><input type="radio" name="gender" class="gender" value="남자" style="width: 15px; height: 15px; margin: 3px;">남자</span>
								<span style="margin-left: 10px; font-size: 15px;"><input type="radio" name="gender" class="gender" value="여자" style="width: 15px; height: 15px; margin: 3px;">여자</span></div>
							</div>
							<div class="css-evy94o" style="margin-top: 20px;">
								<div class="css-env1z2"><label ="Typography" color="rgba(55, 56, 60, 0.61)"
										for="birthday" class="css-afh7p0">생년월일</label></div>
								<div class="input-group" style="text-align: center">
								<input type="text" class="css-1sbrczv" id="datepicker" style="background-color: #FFFFFF; width: 85%;" placeholder="생년월일을 선택해주세요." readonly>
								<img src="http://localhost/recruit-app/assets/images/mypage/calenderImg.png" alt="달력 아이콘" class="input-group-text" style="width: 15%; height: 48px;">
								</div>
							</div>
							<div class="css-evy94o">
								<div class="css-env1z2"><label ="Typography" color="rgba(55, 56, 60, 0.61)"
										for="username" class="css-afh7p0">주소</label></div><input type="text"
									placeholder="주소를 입력해주세요." name="addr" ="Input_username"
									autocomplete="new-password" class="css-1sbrczv" value="">
							</div>
							<div class="question-css" style="margin-top: 20px; margin-bottom:30px;">
								<div style="text-align: center; margin: 15px; ">
								<p style="font-size: 15px">보안 질문 설정</p>
								</div>
								<div class="css-2w308u">
								
								<select class="css-14pvjnj">
									<option>질문선택</option>
									<option>질문1</option>
									<option>질문2</option>
									<option>질문3</option>
									<option>질문4</option>
								</select>
								<div class="css-1px7y17"><span class="css-1ihsymv"><svg viewBox="0 0 24 24" class="css-1h47l4s"><path fill="rgba(55, 56, 60, 0.61)" d="M3.08071 7.58071C3.58839 7.07303 4.41151 7.07303 4.91919 7.58071L12 14.6615L19.0807 7.58071C19.5884 7.07303 20.4115 7.07303 20.9192 7.58071C21.4269 8.08839 21.4269 8.91151 20.9192 9.41919L12.9192 17.4192C12.4115 17.9269 11.5884 17.9269 11.0807 17.4192L3.08071 9.41919C2.57303 8.91151 2.57303 8.08839 3.08071 7.58071Z"></path></svg></span></div>
								</div>
								<div class="answer-css" style="margin-top: 10px; ">
									<input type="text" class="css-1sbrczv" placeholder="내용을 입력해주세요.">
								</div>
							</div>
							<div class="css-1n70r34" style="margin-top: 20px; margin-bottom: 30px;">
								<div class="css-5hccr8" style="margin-bottom:5px;">
									<input type="checkbox" style="width: 15px; height: 15px; margin-top: 3px;">
									<div class="css-1smbjja">
										<p ="Typography" color="#171719" class="css-5iu2fa">전체 동의</p>
									</div>
								</div>
								<div class="css-sfv171">
									<div class="css-5hccr8">
											<input type="checkbox" style="width: 15px; height: 15px; margin-top: 3px;">
										<div class="css-1smbjja">
											<p ="Typography" color="rgba(55, 56, 60, 0.61)"
												class="css-12qszhy">만 14세 이상입니다. (필수)</p>
										</div>
									</div>
									<div class="css-5hccr8">
										<input type="checkbox" style="width: 15px; height: 15px; margin-top: 3px;">
										<div class="css-1smbjja">
											<p ="Typography" color="rgba(55, 56, 60, 0.61)"
												class="css-12qszhy">Goojzzk 이용약관 동의 (필수)</p>
										</div>
									</div>
									<div class="css-5hccr8">
										<input type="checkbox" style="width: 15px; height: 15px; margin-top: 3px;">
										<div class="css-1smbjja">
											<p ="Typography" color="rgba(55, 56, 60, 0.61)"
												class="css-12qszhy">Goojzzk 개인정보 수집 및 이용 동의 (필수)</p>
										</div>
									</div>
								</div>
							</div>
							<div class="css-1tbd2jx">
								<div class="css-1csonyh"></div>
								<div class="css-270vek"></div>
								<button type="submit" class="css-1yzn4b"><span ="Typography" color="#000000"
										class="css-kfktv3">가입하기</span></button>
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