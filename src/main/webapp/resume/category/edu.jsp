<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<div class="formWrap formWrapEducation" id="formEducation" style="">
	<h2 class="header">학력</h2>
	<div class="checkbox check-education-under-highschool">
		<input type="checkbox" id="LowLastEduLevel" data-checked-value="true" data-non-checked-value="false" /> 
		<label for="LowLastEduLevel">고등학교 미만 졸업</label> 
		<input type="hidden" name="LowLastEduLevel" value="false" />
	</div>
	<div class="form formEducation">
		<div id="school_containers">
			<!-- content will be added -->
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
<script type="text/template" id="tplGed">
</script>
<script type="text/template" id="tplHighSchool">
<div class="container container1">
      <div class="row">
          <div class="dropdown dropdown-education-category selected is-label">
              <div class="label" aria-hidden="false">학교구분</div>
              <button type="button" class="button buttonChoose" aria-haspopup="true"><span>고등학교</span></button>
              <div class="list hidden" aria-hidden="true">
                  <ul>
                      <li><button type="button" class="button" data-schltypecode="0"><span>고등학교</span></button></li>
                      <li><button type="button" class="button" data-schltypecode="1"><span>대학(2,3년)</span></button></li>
                      <li><button type="button" class="button" data-schltypecode="2"><span>대학교(4년)</span></button></li>
                      <li><button type="button" class="button" data-schltypecode="3"><span>대학원</span></button></li>
                  </ul>
              </div>
          </div>
          <div class="input input-education-name search is-label is-ellipsis" id="highSchoolAutocomplete" data-comp_type="jkAc">
              <label for="HighSchool_Schl_Name_Search">학교명 <span class="star">*</span></label>
              <input type="text" id="HighSchool_Schl_Name_Search" data-type="School_Name" data-comp_type="jkAcInput" value="" autocomplete="off" maxlength="50" />
              <input type="hidden" name="HighSchool.Schl_Name" data-type="School_Name" value="" />
              <input type="hidden" name="HighSchool.School_Code" data-type="School_Code" value="" />
              <input type="hidden" name="HighSchool.Area_Code" data-type="GG_Area_Code" value="" />
              <div class="validation hidden" aria-hidden="true"></div>
              <div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
              <i class="icon icon-search" aria-hidden="true"></i>
          </div>
          <div class="input input-education-enddate is-label">
              <label for="HighSchool_Grad_Year">졸업년도 <span class="star">*</span></label>
              <input type="text" name="HighSchool.Grad_Year" id="HighSchool_Grad_Year" placeholder="2016" data-format-type="year" value="" autocomplete="off">
              <div class="validation hidden" aria-hidden="true"></div>
          </div>
          <div class="dropdown dropdown-edcation-state is-label">
              <div class="label hidden" aria-hidden="true">졸업상태</div>
              <button type="button" class="button buttonChoose"><span><span>졸업상태 <span class="star">*</span></span></span></button>
              <div class="list hidden">
                  <ul>
                      <li><button type="button" class="button" data-value="10"><span>졸업</span></button></li>
                      <li><button type="button" class="button" data-value="5"><span>졸업예정</span></button></li>
                      <li><button type="button" class="button" data-value="4"><span>재학중</span></button></li>
                  </ul>
              </div>
              <input type="hidden" name="HighSchool.Grad_Type_Code" id="HighSchool_Grad_Type_Code" value="" />
              <div class="validation hidden" aria-hidden="true"></div>
          </div>
          <div class="dropdown dropdown-edcation-highschool-category is-label">
              <div class="label hidden" aria-hidden="true">전공계열</div>
              <button type="button" class="button buttonChoose"><span>전공계열</span></button>
              <div class="list hidden">
                  <ul>
                      <li><button type="button" class="button" data-value="1"><span>문과</span></button></li>
                      <li><button type="button" class="button" data-value="2"><span>이과</span></button></li>
                      <li><button type="button" class="button" data-value="3"><span>전문(실업)</span></button></li>
                      <li><button type="button" class="button" data-value="4"><span>예체능</span></button></li>
                  </ul>
                  <input type="hidden" name="HighSchool.Major_Aftn_Code" id="HighSchool_Major_Aftn_Code" value="" />
              </div>
              <input type="hidden" name="HighSchool.Grad_Type_Code" id="HighSchool_Grad_Type_Code" value="" />
          </div>
          <div class="input input-education-name search is-value">
              <div class="value">대입자격검정고시</div>
              <input type="hidden" name="HighSchool.Schl_Name" />
              <input type="hidden" name="HighSchool.School_Code" />
              <input type="hidden" name="HighSchool.Area_Code" />
          </div>
          <input type="hidden" name="HighSchool.Grad_Type_Code" id="HighSchool_Grad_Type_Code" value="10" />
          <div class="checkbox checkbox-education-ged devGedCheck">
              <input type="checkbox" id="Ged_Stat" data-checked-value="1" data-non-checked-value="0">
              <input type="checkbox" id="Ged_Stat" data-checked-value="1" data-non-checked-value="0" checked>
              <label for="Ged_Stat">대입검정고시</label>
              <input type="hidden" name="HighSchool.Ged_Stat" value="">
          </div>
      </div>
      <button type="button" class="button buttonDeleteField"><span>삭제</span></button>
</script>
<script type="text/template" id="tplUnivSchool">
</script>
<script type="text/template" id="tplUnivMajorItem">
</script>
