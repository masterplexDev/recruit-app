<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<div class="formWrap formWrapEducation" id="formEducation" style="">
	<h2 class="header">학력</h2>
	<div class="checkbox check-education-under-highschool">
		<input type="checkbox" id="LowLastEduLevel" data-checked-value="true"
			data-non-checked-value="false" /> <label for="LowLastEduLevel">고등학교
			미만 졸업</label> <input type="hidden" name="LowLastEduLevel" value="false" />
	</div>
	<div class="form formEducation">
		<div id="school_containers">
			<div class="container container1">
				<div class="row">
					<div class="dropdown dropdown-education-category">
						<div class="label" aria-hidden="false">학교구분</div>
						<button type="button" class="button buttonChoose">
							<span><span>학교구분 <span class="star">*</span></span></span>
						</button>
						<div class="list hidden">
							<ul>
								<li>
									<button type="button" class="button" data-schltypecode="0">
										<span>고등학교</span>
									</button>
								</li>
								<li>
									<button type="button" class="button" data-schltypecode="1">
										<span>대학(2,3년)</span>
									</button>
								</li>
								<li>
									<button type="button" class="button" data-schltypecode="2">
										<span>대학교(4년)</span>
									</button>
								</li>
								<li>
									<button type="button" class="button" data-schltypecode="3">
										<span>대학원</span>
									</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="input input-education-name search is-label">
						<label for="lbl_education_school">학교명 <span class="star">*</span></label>
						<input type="text" id="lbl_education_school" />
					</div>
				</div>
				<button type="button" class="button buttonDeleteField">
					<span>학교 삭제</span>
				</button>
			</div>
		</div>
		<button type="button" class="button buttonAddField"
			id="school_addbutton">
			<span>추가</span>
		</button>
		<div class="popup popupMajor hidden" aria-hidden="true"
			id="otherMajorDeletePop">
			<div class="popupHeader">이력서에서 삭제할 전공을 선택해주세요</div>
			<div class="popupContainer">
				<ul class="list"></ul>
			</div>
			<div class="popupFooter">
				<div class="buttons alignCenter">
					<button type="button" class="button buttonConfirm">
						<span>확인</span>
					</button>
					<button type="button" class="button is-event is-popup-hidden"
						data-target=".popupMajor">
						<span>취소</span>
					</button>
				</div>
			</div>
			<button type="button"
				class="button buttonClose is-event is-popup-hidden"
				data-target=".popupMajor">닫기</button>
			<input type="hidden" class="devUnivCid" />
		</div>
	</div>
</div>
<script type="text/template" id="tplSchoolAutoComplete">
</script>
<script type="text/template" id="tplOtherMajorDeleteViewItem"></script>
<script type="text/javascript" src="http://localhost/recruit-app/assets/js/user/resume/edu.js"></script>
<script type="text/template" id="tplSchool">
  <div class="container container1">
      <div class="row">
          <div class="dropdown dropdown-education-category">
              <div class="label" aria-hidden="false">학교구분</div>
              <button type="button" class="button buttonChoose"><span><span>학교구분 <span class="star">*</span></span></span></button>
              <div class="list hidden">
                  <ul>
                      <li><button type="button" class="button" data-schltypecode="0"><span>고등학교</span></button></li>
                      <li><button type="button" class="button" data-schltypecode="1"><span>대학(2,3년)</span></button></li>
                      <li><button type="button" class="button" data-schltypecode="2"><span>대학교(4년)</span></button></li>
                      <li><button type="button" class="button" data-schltypecode="3"><span>대학원</span></button></li>
                  </ul>
              </div>
          </div>
          <div class="input input-education-name search is-label">
              <label for="lbl_education_school">학교명 <span class="star">*</span></label>
              <input type="text" id="lbl_education_school">
          </div>
      </div>
      <button type="button" class="button buttonDeleteField"><span>학교 삭제</span></button>
  </div>
</script>
<script type="text/template" id="tplGed"></script>
<script type="text/template" id="tplHighSchool"></script>
<script type="text/template" id="tplUnivSchool"></script>
<script type="text/template" id="tplUnivMajorItem"></script>
